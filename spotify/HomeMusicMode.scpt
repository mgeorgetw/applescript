FasdUAS 1.101.10   ��   ��    k             l      ��  ��    �
This script outputs audio with Apple TV, launches and play song on Spotify, and sets volume to 65.
Some things to notice: 
1. Need to show volume in menu bar
2. You can choose prefered AirPlay device by changing the name below, default is "Apple TV".
     � 	 	� 
 T h i s   s c r i p t   o u t p u t s   a u d i o   w i t h   A p p l e   T V ,   l a u n c h e s   a n d   p l a y   s o n g   o n   S p o t i f y ,   a n d   s e t s   v o l u m e   t o   6 5 . 
 S o m e   t h i n g s   t o   n o t i c e :   
 1 .   N e e d   t o   s h o w   v o l u m e   i n   m e n u   b a r 
 2 .   Y o u   c a n   c h o o s e   p r e f e r e d   A i r P l a y   d e v i c e   b y   c h a n g i n g   t h e   n a m e   b e l o w ,   d e f a u l t   i s   " A p p l e   T V " . 
   
  
 l     ��������  ��  ��        l     ��  ��    . ( Set Airplay device to your device name      �   P   S e t   A i r p l a y   d e v i c e   t o   y o u r   d e v i c e   n a m e        l     ����  r         m        �    A p p l e   T V  o      ���� 0 apdevice apDevice��  ��        l     ��������  ��  ��        l     ��  ��    P J Set audio output to Apple TV by clicking on volume setting in menu bar --     �   �   S e t   a u d i o   o u t p u t   t o   A p p l e   T V   b y   c l i c k i n g   o n   v o l u m e   s e t t i n g   i n   m e n u   b a r   - -       l   � !���� ! O    � " # " O    � $ % $ k    � & &  ' ( ' Q    [ ) * + ) I   &�� ,��
�� .prcsclicnull��� ��� uiel , l   " -���� - 6   " . / . n     0 1 0 4    �� 2
�� 
mbri 2 m    ����  1 4    �� 3
�� 
mbar 3 m    ����  / E    ! 4 5 4 1    ��
�� 
desc 5 m      6 6 � 7 7  V o l u m e��  ��  ��   * R      �� 8 9
�� .ascrerr ****      � **** 8 o      ���� 0 errmsg errMsg 9 �� :��
�� 
errn : o      ���� 0 errnum errNum��   + k   . [ ; ;  < = < I  . 3�� >��
�� .ascrcmnt****      � **** > o   . /���� 0 errmsg errMsg��   =  ? @ ? I  4 9�� A��
�� .sysodisAaleR        TEXT A m   4 5 B B � C C t C a n n o t   r e a c h   V o l u m e   s e t t i n g   i n   m e n u   b a r .   P l e a s e   e n a b l e   i t .��   @  D E D l  : :�� F G��   F 0 * Open System Preferences to the Sound pane    G � H H T   O p e n   S y s t e m   P r e f e r e n c e s   t o   t h e   S o u n d   p a n e E  I J I O   : X K L K k   @ W M M  N O N I  @ E������
�� .miscactvnull��� ��� null��  ��   O  P�� P r   F W Q R Q 5   F Q�� S��
�� 
xppb S m   J M T T � U U 4 c o m . a p p l e . p r e f e r e n c e . s o u n d
�� kfrmID   R l      V���� V 1   Q V��
�� 
xpcp��  ��  ��   L m   : = W W�                                                                                  sprf  alis    J  Sherlock                       BD ����System Preferences.app                                         ����            ����  
 cu             Applications  &/:Applications:System Preferences.app/  .  S y s t e m   P r e f e r e n c e s . a p p    S h e r l o c k  #Applications/System Preferences.app   / ��   J  X�� X L   Y [����  ��   (  Y Z Y r   \ h [ \ [ n   \ d ] ^ ] 4   _ d�� _
�� 
menE _ m   b c����  ^ 1   \ _��
�� 
rslt \ o      ���� 0 	soundmenu   Z  `�� ` Q   i � a b c a k   l � d d  e f e l  l l�� g h��   g 9 3 Tolerate numbers in brackets after the tv name. --    h � i i f   T o l e r a t e   n u m b e r s   i n   b r a c k e t s   a f t e r   t h e   t v   n a m e .   - - f  j�� j I  l ��� k��
�� .prcsclicnull��� ��� uiel k l  l  l���� l n   l  m n m l  o  o���� o 6 o  p q p 4   o t�� r
�� 
menI r m   r s����  q C   u ~ s t s n  v z u v u 1   v z��
�� 
pnam v  g   v v t o   { }���� 0 apdevice apDevice��  ��   n o   l o���� 0 	soundmenu  ��  ��  ��  ��   b R      �� w x
�� .ascrerr ****      � **** w o      ���� 0 errmsg errMsg x �� y��
�� 
errn y o      ���� 0 errnum errNum��   c k   � � z z  { | { I  � ��� }��
�� .ascrcmnt****      � **** } o   � ����� 0 errmsg errMsg��   |  ~  ~ I  � ��� ���
�� .sysodisAaleR        TEXT � m   � � � � � � � � C a n n o t   f i n d   " A p p l e   T V " .   Y o u   c a n   s e t   A i r p l a y   d e v i c e   n a m e   i n   t h e   s c r i p t .��     ��� � L   � �����  ��  ��   % 4    �� �
�� 
prcs � m   
  � � � � �  S y s t e m U I S e r v e r # m     � ��                                                                                  sevs  alis    T  Sherlock                       BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    S h e r l o c k  -System/Library/CoreServices/System Events.app   / ��  ��  ��      � � � l     ��������  ��  ��   �  � � � l  � � ����� � Z   � � � ����� � >  � � � � � n   � � � � � 1   � ���
�� 
prun � m   � � � �|                                                                                      @ alis      Sherlock                       BD ����Spotify.app                                                    ����            ����  
 cu             Applications  /:Applications:Spotify.app/     S p o t i f y . a p p    S h e r l o c k  Applications/Spotify.app  / ��   � m   � ���
�� boovtrue � O  � � � � � I  � �������
�� .miscactvnull��� ��� null��  ��   � m   � � � �|                                                                                      @ alis      Sherlock                       BD ����Spotify.app                                                    ����            ����  
 cu             Applications  /:Applications:Spotify.app/     S p o t i f y . a p p    S h e r l o c k  Applications/Spotify.app  / ��  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � ����� ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � I  � ����� �
�� .aevtstvlnull��� ��� nmbr��   � �� ���
�� 
ouvl � m   � ����� A��  ��  ��   �  ��� � l  � � ����� � O  � � � � � I  � �������
�� .spfyPlaynull��� ��� null��  ��   � m   � � � �|                                                                                      @ alis      Sherlock                       BD ����Spotify.app                                                    ����            ����  
 cu             Applications  /:Applications:Spotify.app/     S p o t i f y . a p p    S h e r l o c k  Applications/Spotify.app  / ��  ��  ��  ��       �� � �  �����   � ��������
�� .aevtoappnull  �   � ****�� 0 apdevice apDevice�� 0 	soundmenu  ��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �   � �  � � �  � � �  � � �  �����  ��  ��   � ������ 0 errmsg errMsg�� 0 errnum errNum � $ �� ��� ���~ ��} 6�|�{ ��z B�y W�x�w T�v�u�t�s�r�q�p � ��o�n�m�l�k�j�i�� 0 apdevice apDevice
�� 
prcs
� 
mbar
�~ 
mbri �  
�} 
desc
�| .prcsclicnull��� ��� uiel�{ 0 errmsg errMsg � �h�g�f
�h 
errn�g 0 errnum errNum�f  
�z .ascrcmnt****      � ****
�y .sysodisAaleR        TEXT
�x .miscactvnull��� ��� null
�w 
xppb
�v kfrmID  
�u 
xpcp
�t 
rslt
�s 
menE�r 0 	soundmenu  
�q 
menI
�p 
pnam
�o 
prun�n 
�m .sysodelanull��� ��� nmbr
�l 
ouvl�k A
�j .aevtstvlnull��� ��� nmbr
�i .spfyPlaynull��� ��� null�� ��E�O� �*��/ � *�k/�k/�[�,\Z�@1j 
W 4X  �j O�j Oa  *j O*a a a 0*a ,FUOhO_ a k/E` O _ a k/�[a ,\Z�>1j 
W X  �j Oa j OhUUOa a ,e a  *j UY hOa j O*a  a !l "Oa  *j #U �  � �  ��e�d �  ��c�b �  ��a�` �  ��_ �
�_ 
pcap � � � �  S y s t e m U I S e r v e r
�a 
mbar�` 
�c 
mbri�b 	
�e 
menE�d ��  ascr  ��ޭ
JsOsaDAS1.001.00bplist00�Vscripto� / * 
 W r i t t e n   i n   J X A   ( J a v a s c r i p t   f o r   A u t o m a t i o n ) . 
 S i m p l e   s c r i p t   t o   G o o g l e   s e a r c h   f o r   l y r i c s   o f   t h e   s o n g   c u r r e n t l y   p l a y i n g   o n   S p o t i f y . 
 * / 
 v a r   a p p   =   A p p l i c a t i o n . c u r r e n t A p p l i c a t i o n ( ) ; 
 a p p . i n c l u d e S t a n d a r d A d d i t i o n s   =   t r u e ; 
 
 v a r   s p o t i f y   =   A p p l i c a t i o n ( ' S p o t i f y ' ) ; 
 
 i f   ( s p o t i f y . r u n n i n g ( ) ) { 
 	 v a r   t r a c k N a m e   =   s p o t i f y . c u r r e n t T r a c k ( ) . n a m e ( ) ; 
 	 v a r   a r t i s t   =   s p o t i f y . c u r r e n t T r a c k ( ) . a r t i s t ( ) ; 
 	 v a r   m y S e a r c h   =   t r a c k N a m e   +   '   '   +   a r t i s t   +   '   l y r i c s   O R  kL�^ ' ; 
 	 a p p . d o S h e l l S c r i p t ( " o p e n   ' h t t p s : / / g o o g l e . c o m / s e a r c h ? q = ' "   +   e n c o d e U R I ( m y S e a r c h ) ) ; 
 }   e l s e   { 
 	 a p p . d i s p l a y A l e r t ( '�=�K   S p o t i f y   i s   n o t   r u n n i n g ' ,   {   m e s s a g e :   ' I   c a n   o n l y   s e a r c h   f o r   l y r i c s   o f   s o n g s   p l a y i n g   i n   S p o t i f y . '   } ) ; 
 }                              $jscr  ��ޭ
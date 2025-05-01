/* Ventana Proyectante */


   PERFIL C7664
      CORTES A 45:
      2 x m_ancho
      2 x m_alto


   /* Hojas */

   PERFIL C7663
      CORTES A 45:

      2 x m_ancho-46
      2 x m_alto-46


   /* Contravidrios */

DESARMAR SOLO SI corte=0   
CORTES A 45: 
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6232
	FIN DESARME 
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6233
	FIN DESARME 
      2 x m_ancho-122
      2 x m_alto-122
PARTE T96
      2 x INT((m_ancho-122)/200)+1
      2 x INT((m_alto-122)/200)+1
FIN DESARME

DESARMAR SOLO SI corte>0   
CORTES A RECTO: 	
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6225
	FIN DESARME 
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6238
	FIN DESARME 
      2 x m_ancho-122
      2 x m_alto-147
FIN DESARME



 


   VIDRIOS
      1 de m_ancho-129 x m_alto-129


  /*Accesorios*/

PARTE A  
         1 x 4
PARTE D 
         1 x 48
PARTE B30
         2 x (m_ancho-60)/1000
         2 x (m_alto-60)/1000
PARTE B68
         2 x (m_ancho-60)/1000
         2 x (m_alto-60)/1000
PARTE B80
         2 x (m_ancho-60)/1000
         2 x (m_alto-60)/1000
PARTE B79
         2 x (m_ancho-60)/1000
         2 x (m_alto-60)/1000
PARTE E70 
         1 x 4
PARTE H91
	1 x 2


/* DEPENDE DEL ANCHO Y DEL ALTO, PUES LA HOJA ABRE HASTA 45GRADOS */

   DESARMAR SOLO SI m_alto>=473 .AND. m_alto<723
      PARTE DA-400
         1 x 1
   FIN DESARME
   DESARMAR SOLO SI m_alto>=723 .AND. m_alto<973
      PARTE DA-650
         1 x 1
   FIN DESARME
   DESARMAR SOLO SI m_alto>=973 .AND. m_alto<=1273
      PARTE DA-900
         1 x 1
   FIN DESARME
   DESARMAR SOLO SI m_alto>=1273 
      PARTE DA1200
         1 x 1
   FIN DESARME



PRODUCTO MOVPDB




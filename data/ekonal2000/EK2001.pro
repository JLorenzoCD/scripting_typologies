/* Ventana Proyectante */


   PERFIL C7277
      CORTES A 45:
      2 x m_ancho
      2 x m_alto


   /* Hojas */

   PERFIL C7283
      CORTES A 45:

      2 x m_ancho-45
      2 x m_alto-45


   /* Contravidrios */

DESARMAR SOLO SI corte=0
CORTES A 45:
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6232
	FIN DESARME
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6233
	FIN DESARME
      2 x m_ancho-129
      2 x m_alto-129
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
      1 de m_ancho-141 x m_alto-141


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
PARTE E69
         1 x 4
PARTE H61
	1 x 2


/* DEPENDE DEL ANCHO Y DEL ALTO, PUES LA HOJA ABRE HASTA 45GRADOS */



DESARMAR SOLO SI m_ancho>=300 .AND. m_ancho<400
   PARTE EMP200
     1 x 1
FIN DESARME

DESARMAR SOLO SI m_ancho>=400 .AND. m_ancho<1600
   DESARMAR SOLO SI m_alto<=450
      PARTE EMP200
         1 x 1
   FIN DESARME
   DESARMAR SOLO SI m_alto>450 .AND. m_alto<=500
      PARTE EMP300
         1 x 1
   FIN DESARME
   DESARMAR SOLO SI m_alto>500 .AND. m_alto<=550
      DESARMAR SOLO SI m_ancho<500
         PARTE EMP300
            1 x 1
      FIN DESARME
      DESARMAR SOLO SI m_ancho>=500
         PARTE EMP400
            1 x 1
      FIN DESARME
   FIN DESARME
   DESARMAR SOLO SI m_alto>550
      DESARMAR SOLO SI m_ancho<600
         PARTE EMP400
            1 x 1
      FIN DESARME
      DESARMAR SOLO SI m_ancho>=600
         PARTE EMP400
            1 x 1
      FIN DESARME
   FIN DESARME
FIN DESARME


PRODUCTO MOVPDB






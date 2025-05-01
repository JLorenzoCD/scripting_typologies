/* Ventana Proyectante */


   PERFIL 216
      CORTES A 45:
      2 x m_ancho
      2 x m_alto

   SEPARACION

   PERFIL 215
      CORTES A RECTO:
      1 x m_ancho-78

   /* Hojas */

   PERFIL 218
      CORTES A 45:
      2 x m_ancho -60
      2 x m_alto -60

  SEPARACION

   CORTES A RECTO: 
   /* Contravidrios */

   PERFIL 8
      2 x m_ancho-122.5
      2 x m_alto-147.5

  SEPARACION

  		/* Guia Comun */
		DESARMAR SOLO SI tipo_gui=2
          SEPARACION
          PERFIL 715
             1 x m_alto
          PERFIL 20 
             2 x m_alto+50
          M.OBRA 0.10
      FIN DESARME

		/* Guia Barrios */
		DESARMAR SOLO SI tipo_gui=3
          SEPARACION
          PERFIL 715
             1 x m_alto
          PERFIL 21
             2 x m_alto+50
          M.OBRA 0.10
      FIN DESARME

      DESARMAR SOLO SI dobletapa!=0
           PERFIL 715
              1 x m_alto
           M.OBRA 0.10
      FIN DESARME 


   VIDRIOS
      1 de m_ancho-129 x m_alto-129


  /*Accesorios*/

PARTE A  
         1 x 4
PARTE D 
         1 x 48
PARTE H
         4 x (m_ancho-60)/1000
         4 x (m_alto-60)/1000
PARTE T
         2 x (m_ancho-60)/1000
         2 x (m_alto-60)/1000
PARTE UVW
         2 x (m_ancho-60)/1000
         2 x (m_alto-60)/1000
PARTE C 
         1 x 4

PARTE I
         1 x 4

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




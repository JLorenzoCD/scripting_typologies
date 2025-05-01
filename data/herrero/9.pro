
/* Ventana Proyectante */


   PERFIL 694

      2 x m_ancho
      2 x m_alto

   SEPARACION

   PERFIL 215

      1 x m_ancho-60


   /* Hojas */

   PERFIL 218

      2 x m_ancho -50
      2 x m_alto -50

  SEPARACION

   /* Contravidrios */

   PERFIL 8
      2 x m_ancho-112.5
      2 x m_alto-137.5

 

   VIDRIOS
      1 de m_ancho-119 x m_alto-119



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
         2 x 4

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




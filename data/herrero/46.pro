/* Ventana guillotina ojo descuentos invertidos */

CALCULOS
   VARIABLE m_aux
   m_aux:=m_alto
   m_alto:=m_ancho
   m_ancho:=m_aux
FIN CALCULOS

DESARMAR SOLO SI umbral=1
   VARIABLE perfil_2
   VARIABLE perfil_3


   PERFIL 690

      2 x m_alto
      2 x m_ancho

   PERFIL T1515

      2 x m_ancho

   SEPARACION

      /* Travesanios */
      PERFIL 3
         2 x m_alto-42

      /* Travesanios Centrales */
      PERFIL 4
          2 x m_alto-42


      PERFIL 2
         4 x m_ancho/2-88 


      VIDRIOS

         SEPARACION

            2 de m_alto-124 x m_ancho/2-88+18


FIN DESARME
/* con umbral */


DESARMAR SOLO SI umbral=0
/* sin umbral */
/* Ventana guillotina ojo descuentos invertidos */

   VARIABLE perfil_2
   VARIABLE perfil_3

   PERFIL 690

      1 x m_alto
      2 x m_ancho

   PERFIL T1515

      2 x m_ancho

   SEPARACION



      /* Travesanios */
      PERFIL 3
         2 x m_alto-42

      /* Travesanios Centrales */
      PERFIL 4
          2 x m_alto-42


      PERFIL 2

         4 x m_ancho/2-77.5


      VIDRIOS

         SEPARACION

            2 de m_alto-124 x m_ancho/2-77.5+18

FIN DESARME
/* sin umbral */


/* accesorios para los dos casos */

      /* MECANISMO */

      PARTE AFE
	DESARMAR SOLO SI umbral=1
         1 x 4
        FIN DESARME
	DESARMAR SOLO SI umbral=0
         1 x 2
        FIN DESARME
      PARTE D
         1 x 36    
      PARTE HB501
         1 x 8
      PARTE 1088
         1 x 1
      PARTE I
         1 x 8
      PARTE J
         1 x 8
      PARTE ABB
         1 x 4
      PARTE ABC
         1 x 4
       PARTE ABD
         1 x 2
      PARTE H
         8 x (m_ancho/2-100)/1000
         6 x (m_alto-66)/1000
      PARTE QRS
         4 x (m_ancho/2-100)/1000
         4 x (m_alto-66-100)/1000

      M.OBRA 1.3
     





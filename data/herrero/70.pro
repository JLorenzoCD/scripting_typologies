/* Ventana Corrediza */
   VARIABLE perfil_2
   VARIABLE perfil_3

   PERFIL 45

      CORTES A RECTO:
          2 x m_ancho

   SEPARACION


   /* Ventanas de 2 Hojas */
   DESARMAR SOLO SI n_hojas=2


      DESARMAR SOLO SI tra1=0 .AND. tra2=0
      PERFIL 44
         2 x m_ancho/2-89
      PERFIL 2
         2 x m_ancho/2-89
      FIN DESARME

      /* tra1= POSICION del travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
      PERFIL 44
         2 x m_ancho/2-89
      PERFIL 2
         4 x m_ancho/2-89

         PARTE I
            1 x 4
         PARTE J
            1 x 4
         PARTE QRS
            4 x (m_ancho/2-89)/1000

         M.OBRA 0.10
         
      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0 .AND. tra1=0
      PERFIL 44
         2 x m_ancho/2-89
      PERFIL 2
         2+2*tra2 x m_ancho/2-89

         PARTE I
            1 x 4*tra2
         PARTE J
            1 x 4*tra2
         PARTE QRS
            4*tra2 x (m_ancho/2-89)/1000


         M.OBRA     tra2*0.10
      FIN DESARME


      /* Parantes laterales */
      PERFIL 53
         2 x m_alto-36

      /* Parantes Centrales */
      PERFIL 54
          2 x m_alto-36


      /* MECANISMO */

      PARTE C2
         1 x 4
      PARTE 1088
         1 x 1
      PARTE I
         1 x 12
      PARTE J
         1 x 12
      PARTE AGN
         1 x 4
      PARTE AGV
         1 x 4
      PARTE ABD
         1 x 2

      PARTE H
         8 x (m_ancho/2-89)/1000
         6 x (m_alto-36)/1000
      PARTE QRS
         4 x (m_ancho/2-89)/1000
         4 x (m_alto-36-89)/1000

      M.OBRA 0.35
     


   FIN DESARME   /* Ventanas de Dos Hojas */


   /* Ventanas de 3 Hojas */
/*    CON HOJA CENTRAL Y LATERAL EN LA MISMA GUIA */

   DESARMAR SOLO SI n_hojas=3 .AND. tipo_gui=1

      PERFIL 2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
      PERFIL 44
         3 x m_ancho/3-98
      PERFIL 2
         3 x m_ancho/3-98
      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
      PERFIL 44
         3 x m_ancho/3-98
      PERFIL 2
         6 x m_ancho/3-98
         PARTE I
            1 x 6
         PARTE J
            1 x 6
         PARTE QRS
            6 x (m_ancho/3-98)/1000

         M.OBRA 0.15
         
      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0 .AND. tra1=0
      PERFIL 44
         3 x m_ancho/3-98
      PERFIL 2
         2*(2+tra2) x m_ancho/3-98
         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-98)/1000

         M.OBRA     tra2*0.15
      FIN DESARME


      /* Parantes laterales */
      PERFIL 53
         4 x m_alto-36

      /* Parantes Centrales */
      PERFIL 54
          2 x m_alto-36

      PERFIL 19
         1 x m_alto-36



      VIDRIOS

         SEPARACION

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            3 de m_ancho/3-80 x m_alto-143
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            3 de m_ancho/3-80 x tra1-84-16.5
            3 de m_ancho/3-80 x m_alto-tra1-59-16.5
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            3*(tra2+1) de m_ancho/3-80 x (m_alto-36-107-33*tra2)/(tra2+1)
         FIN DESARME



   FIN DESARME   /* Ventanas de Tres Hojas Guia A */


   /* Tipo de Guia 'B' */
/*    CON HOJAS LATERALES EN LA MISMA GUIA */

   DESARMAR SOLO SI n_hojas=3 .AND. tipo_gui=2


      DESARMAR SOLO SI tra1=0 .AD. tra2=0
      PERFIL 44
         3 x m_ancho/3-81
      PERFIL 2
         3 x m_ancho/3-81
      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0
      PERFIL 44
         3 x m_ancho/3-81
      PERFIL 2
         3 x m_ancho/3-81

         PARTE I
            1 x 6
         PARTE J
            1 x 6
         PARTE QRS
            6 x (m_ancho/3-81)/1000

         M.OBRA 0.15
         
      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0
      PERFIL 44
         3 x m_ancho/3-81
      PERFIL 2
         2*(2+tra2) x m_ancho/3-81

         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-81)/1000

         M.OBRA     tra2*0.15
      FIN DESARME


      /* Parantes laterales */
      PERFIL 53
         2 x m_alto-36

      /* Parantes Centrales */
      PERFIL 54
          4 x m_alto-36



      VIDRIOS

         SEPARACION

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            3 de m_ancho/3-63 x m_alto-143
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            3 de m_ancho/3-63 x tra1-84-16.5
            3 de m_ancho/3-63 x m_alto-tra1-59-16.5
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            3*(tra2+1) de m_ancho/3-63 x (m_alto-36-107-33*tra2)/(tra2+1)
         FIN DESARME

   FIN DESARME   /* Ventanas de Tres Hojas Guia B*/


DESARMAR SOLO SI n_hojas=3

      /* MECANISMO */

      PARTE C2
         1 x 6
      DESARMAR SOLO SI tipo_gui=1
         PARTE 1088
            1 x 1
         PARTE ABD
            1 x 2
         PARTE AGV
            1 x 4
         PARTE AGN
            1 x 8
      FIN DESARME
      DESARMAR SOLO SI tipo_gui=2
         PARTE 1088
            1 x 2
         PARTE ABD
            1 x 4
      PARTE AGN
         1 x 4
      PARTE AGV
         1 x 8

      FIN DESARME

      PARTE I
         1 x 18
      PARTE J
         1 x 18

      PARTE H
         12 x (m_ancho/3-43)/1000
         8 x (m_alto-43)/1000
      PARTE QRS
         6 x (m_ancho/3-43)/1000
         6 x (m_alto-36-100)/1000

      M.OBRA 0.5
     


   FIN DESARME   /* Ventanas de Tres Hojas */



   /* Ventana de cuatro hojas*/      

   DESARMAR SOLO SI n_hojas=4


      DESARMAR SOLO SI tra1=0 .AND. tra2=0
      PERFIL 44
         4 x m_ancho/4-89
      PERFIL 2
         2 x m_ancho/4-89
      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0
         12 x m_ancho/4-89
         PARTE I
            1 x 8
         PARTE J
            1 x 8
         PARTE QRS
            8 x (m_ancho/4-89)/1000
         M.OBRA 0.18

      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0
         4*(2+tra2) x m_ancho/4-89
         PARTE I
            1 x 8*tra2
         PARTE J
            1 x 8*tra2
         PARTE QRS
            8*tra2 x (m_ancho/4-89)/1000

         M.OBRA     tra2*0.18
      FIN DESARME


      /* Parantes laterales */
      PERFIL 3
         4 x m_alto-36

      /* Parantes Centrales */
      PERFIL 4
          4 x m_alto-36

      /* Cierre Central para ventanas de 4 hojas */
      PERFIL 19
         1 x m_alto-36


      VIDRIOS

         SEPARACION

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            4 de m_ancho/4-71 x m_alto-143
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            4 de m_ancho/4-71 x tra1-84-16.5
            4 de m_ancho/4-71 x m_alto-tra1-59-16.5
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            4*(tra2+1) de m_ancho/4-71 x (m_alto-36-107-33*tra2)/(tra2+1)
         FIN DESARME

      /* MECANISMO */

      PARTE C2
         1 x 8
      PARTE 1088
         1 x 2
      PARTE I
         1 x 24
      PARTE J
         1 x 24
      PARTE AGN
         1 x 8
      PARTE AGV
         1 x 8
      PARTE ABD
         1 x 4

      PARTE H
         16 x (m_ancho/4-89)/1000
         12 x (m_alto-36)/1000
      PARTE QRS
         8 x (m_ancho/4-50)/1000
         8 x (m_alto-36-100)/1000

      M.OBRA 0.7



   FIN DESARME   /* Ventanas de Cuatro Hojas*/

 /* CUBETAS */
DESARMAR SOLO SI cubetas>0
   PARTE CUBETA
      1 x cubetas

      M.OBRA cubetas *0.07
FIN DESARME



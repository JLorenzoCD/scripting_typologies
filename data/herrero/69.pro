/* Ventana Corrediza */
   VARIABLE perfil_2
   VARIABLE perfil_3

   PERFIL 45

      CORTES A RECTO:
          2 x m_ancho

   SEPARACION


   /* Ventanas de 2 Hojas */
   DESARMAR SOLO SI n_hojas=2

      PERFIL 2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         4 x m_ancho/2-68
      FIN DESARME

      /* tra1= POSICION del travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         6 x m_ancho/2-68

         PARTE I
            1 x 4
         PARTE J
            1 x 4
         PARTE QRS
            4 x (m_ancho/2-68)/1000

         M.OBRA 0.10
         
      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0 .AND. tra1=0
         4+2*tra2 x m_ancho/2-68

         PARTE I
            1 x 4*tra2
         PARTE J
            1 x 4*tra2
         PARTE QRS
            4*tra2 x (m_ancho/2-68)/1000


         M.OBRA     tra2*0.10
      FIN DESARME


      /* Parantes laterales */
      PERFIL 3
         2 x m_alto-36

      /* Parantes Centrales */
      PERFIL 4
          2 x m_alto-36


      /* MECANISMO */

      PARTE C1
         1 x 4
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
         8 x (m_ancho/2-68)/1000
         6 x (m_alto-36)/1000
      PARTE QRS
         4 x (m_ancho/2-68)/1000
         4 x (m_alto-36-68)/1000

      M.OBRA 0.35
     
      VIDRIOS      ojo revisar

         SEPARACION

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            3 de m_ancho/3-58 x m_alto-118
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            3 de m_ancho/3-58 x tra1-59-16.5
            3 de m_ancho/3-58 x m_alto-tra1-59-16.5
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            3*(tra2+1) de m_ancho/3-58 x (m_alto-36-82-33*tra2)/(tra2+1)
         FIN DESARME



   FIN DESARME   /* Ventanas de Dos Hojas */


   /* Ventanas de 3 Hojas */
/*    CON HOJA CENTRAL Y LATERAL EN LA MISMA GUIA */

   DESARMAR SOLO SI n_hojas=3 .AND. tipo_gui=1

      PERFIL 2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         6 x m_ancho/3-76
      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         9 x m_ancho/3-76
         PARTE I
            1 x 6
         PARTE J
            1 x 6
         PARTE QRS
            6 x (m_ancho/3-76)/1000

         M.OBRA 0.15
         
      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0 .AND. tra1=0
         3*(2+tra2) x m_ancho/3-76
         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-76)/1000

         M.OBRA     tra2*0.15
      FIN DESARME


      /* Parantes laterales */
      PERFIL 3
         4 x m_alto-36

      /* Parantes Centrales */
      PERFIL 4
          2 x m_alto-36

      PERFIL 19
         1 x m_alto-36



      VIDRIOS

         SEPARACION

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            3 de m_ancho/3-58 x m_alto-118
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            3 de m_ancho/3-58 x tra1-59-16.5
            3 de m_ancho/3-58 x m_alto-tra1-59-16.5
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            3*(tra2+1) de m_ancho/3-58 x (m_alto-36-82-33*tra2)/(tra2+1)
         FIN DESARME



   FIN DESARME   /* Ventanas de Tres Hojas Guia A */


   /* Tipo de Guia 'B' */
/*    CON HOJAS LATERALES EN LA MISMA GUIA */

   DESARMAR SOLO SI n_hojas=3 .AND. tipo_gui=2

      PERFIL 2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         6 x m_ancho/3-61
      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0
         9 x m_ancho/3-61
         PARTE I
            1 x 6
         PARTE J
            1 x 6
         PARTE QRS
            6 x (m_ancho/3-61)/1000

         M.OBRA 0.15
         
      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0
         3*(2+tra2) x m_ancho/3-61
         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-61)/1000

         M.OBRA     tra2*0.15
      FIN DESARME


      /* Parantes laterales */
      PERFIL 3
         2 x m_alto-36

      /* Parantes Centrales */
      PERFIL 4
          4 x m_alto-36



      VIDRIOS

         SEPARACION

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            3 de m_ancho/3-43 x m_alto-118
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            3 de m_ancho/3-43 x tra1-59-16.5
            3 de m_ancho/3-43 x m_alto-tra1-59-16.5
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            3*(tra2+1) de m_ancho/3-43 x (m_alto-36-82-33*tra2)/(tra2+1)
         FIN DESARME

   FIN DESARME   /* Ventanas de Tres Hojas Guia B*/


DESARMAR SOLO SI n_hojas=3

      /* MECANISMO */

      PARTE C1
         1 x 6
      DESARMAR SOLO SI tipo_gui=1
         PARTE 1088
            1 x 1
         PARTE ABD
            1 x 2
         PARTE ABB
            1 x 4
         PARTE ABC
            1 x 8
      FIN DESARME
      DESARMAR SOLO SI tipo_gui=2
         PARTE 1088
            1 x 2
         PARTE ABD
            1 x 4
      PARTE ABB
         1 x 8
      PARTE ABC
         1 x 4

      FIN DESARME

      PARTE I
         1 x 12
      PARTE J
         1 x 12

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

      PERFIL 2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         8 x m_ancho/4-68
      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0
         12 x m_ancho/4-68
         PARTE I
            1 x 8
         PARTE J
            1 x 8
         PARTE QRS
            8 x (m_ancho/4-68)/1000
         M.OBRA 0.18

      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0
         4*(2+tra2) x m_ancho/4-68
         PARTE I
            1 x 8*tra2
         PARTE J
            1 x 8*tra2
         PARTE QRS
            8*tra2 x (m_ancho/4-68)/1000

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
            4 de m_ancho/4-50 x m_alto-118
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            4 de m_ancho/4-50 x tra1-59-16.5
            4 de m_ancho/4-50 x m_alto-tra1-59-16.5
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            4*(tra2+1) de m_ancho/4-50 x (m_alto-36-82-33*tra2)/(tra2+1)
         FIN DESARME

      /* MECANISMO */

      PARTE C1
         1 x 8
      PARTE 1088
         1 x 2
      PARTE I
         1 x 16
      PARTE J
         1 x 16
      PARTE ABB
         1 x 8
      PARTE ABC
         1 x 8
      PARTE ABD
         1 x 4

      PARTE H
         16 x (m_ancho/4-68)/1000
         12 x (m_alto-36)/1000
      PARTE QRS
         8 x (m_ancho/4-50)/1000
         8 x (m_alto-36-100)/1000

      M.OBRA 0.7



   FIN DESARME   /* Ventanas de Cuatro Hojas*/


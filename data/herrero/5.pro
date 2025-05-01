/* Ventana Corrediza ALTERNATIVA*/

CALCULOS
tra_n:=0
FIN CALCULOS

   VARIABLE perfil_2
   VARIABLE perfil_3

   PERFIL 690
      2 x m_ancho
      2 x m_alto

   SEPARACION

   /* Ventanas de 2 Hojas */
   DESARMAR SOLO SI n_hojas=2

      PERFIL 2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         4 x m_ancho/2-88
      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0
         6 x m_ancho/2-88
         PARTE I
            1 x 4
         PARTE J
            1 x 4
         PARTE QRS
            4 x (m_ancho/2-100)/1000


      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0
         4+2*tra2 x m_ancho/2-88
         PARTE I
            1 x 4*tra2
         PARTE J
            1 x 4*tra2
         PARTE QRS
            4*tra2 x (m_ancho/2-100)/1000



      FIN DESARME


      /* Parantes laterales */
      PERFIL 3
         2 x m_alto-42

      /* Parantes Centrales */
      PERFIL 4
          2 x m_alto-42

      VIDRIOS

         

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            2 de m_ancho/2-70 x m_alto-124
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            2 de m_ancho/2-70 x tra1-62-16
            PANELES
            2 de m_ancho/2-70 x m_alto-tra1-62-16
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            2*(tra2+1) de m_ancho/2-70 x (m_alto-124-32*tra2)/(tra2+1)
         FIN DESARME

      /* MECANISMO */

      PARTE B**
         1 x 4
      PARTE D
         1 x 36    
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
         8 x (m_ancho/2-100)/1000
         6 x (m_alto-66)/1000
      PARTE QRS
         4 x (m_ancho/2-100)/1000
         4 x (m_alto-66-100)/1000



   FIN DESARME   /* Ventanas de Dos Hojas */


   /* Ventanas de 3 Hojas */

	DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=1

      PERFIL 2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         6 x m_ancho/3-89

         PARTE I
            1 x 6
         PARTE J
            1 x 6
         PARTE QRS
            6 x (m_ancho/3-97)/1000


      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0
         9 x m_ancho/3-89

         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-97)/1000



      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0
         3*(2+tra2) x m_ancho/3-89
      FIN DESARME


      /* Parantes laterales */
      PERFIL 3
         4 x m_alto-42

      /* Parantes Centrales */
      PERFIL 4
          2 x m_alto-42

      /* encuentro central */
      PERFIL 19
         2 x m_alto-42

      VIDRIOS

        

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            3 de m_ancho/3-71 x m_alto-124
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            3 de m_ancho/3-71 x tra1-62-16
            PANELES
            3 de m_ancho/3-71 x m_alto-tra1-62-16
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            3*(tra2+1) de m_ancho/3-71 x (m_alto-124-32*tra2)/(tra2+1)
         FIN DESARME

   FIN DESARME   /* Ventanas de Tres Hojas Guia A */

   /* Tipo de Guia 'B' */

	DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=2

      PERFIL 2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         6 x m_ancho/3-73

         PARTE I
            1 x 6
         PARTE J
            1 x 6
         PARTE QRS
            6 x (m_ancho/3-81)/1000



      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0
         9 x m_ancho/3-73

         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-81)/1000



      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0
         3*(2+tra2) x m_ancho/3-73
      FIN DESARME


      /* Parantes laterales */
      PERFIL 3
         2 x m_alto-42

      /* Parantes Centrales */
      PERFIL 4
          4 x m_alto-42

      VIDRIOS

    
         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            3 de m_ancho/3-55 x m_alto-124
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            3 de m_ancho/3-55 x tra1-62-16
            PANELES
            3 de m_ancho/3-55 x m_alto-tra1-62-16
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            3*(tra2+1) de m_ancho/3-55 x (m_alto-124-32*tra2)/(tra2+1)
         FIN DESARME

   FIN DESARME   /* Ventanas de Tres Hojas Guia B*/

         
DESARMAR SOLO SI n_hojas=3

      /* MECANISMO */

      PARTE B**
         1 x 4
      PARTE D
         1 x 36    
      PARTE C1
         1 x 6
      DESARMAR SOLO SI guia_3h=1
         PARTE 1088
            1 x 1
         PARTE ABD
            1 x 2
         PARTE ABB
            1 x 4
         PARTE ABC
            1 x 8
      FIN DESARME
      DESARMAR SOLO SI guia_3h=2
         PARTE 1088
            1 x 2
         PARTE ABD
            1 x 4
      PARTE ABB
         1 x 8
      PARTE ABC
         1 x 8

      FIN DESARME

      PARTE I
         1 x 12
      PARTE J
         1 x 12

      PARTE H
         12 x (m_ancho/3-80)/1000
         8 x (m_alto-66)/1000
      PARTE QRS
         6 x (m_ancho/3-80)/1000
         6 x (m_alto-66-100)/1000

     


   FIN DESARME   /* Ventanas de Tres Hojas */




   DESARMAR SOLO SI n_hojas=4

      PERFIL 2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         8 x m_ancho/4-77.5

         PARTE I
            1 x 8
         PARTE J
            1 x 8
         PARTE QRS
            8 x (m_ancho/4-84)/1000

      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0
         12 x m_ancho/4-77.5

         PARTE I
            1 x 8*tra2
         PARTE J
            1 x 8*tra2
         PARTE QRS
            8*tra2 x (m_ancho/4-84)/1000


      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0
         4*(2+tra2) x m_ancho/4-77.5
      FIN DESARME


      /* Parantes laterales */
      PERFIL 3
         4 x m_alto-42

      /* Parantes Centrales */
      PERFIL 4
          4 x m_alto-42

      /* Cierre Central para ventanas de 4 hojas */
      PERFIL 19
         1 x m_alto-42

      VIDRIOS

        

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            4 de m_ancho/4-59.5 x m_alto-124
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            4 de m_ancho/4-59.5 x tra1-62-16
            PANELES
            4 de m_ancho/4-59.5 x m_alto-tra1-62-16
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            4*(tra2+1) de m_ancho/4-59.5 x (m_alto-124-32*tra2)/(tra2+1)
         FIN DESARME


      /* MECANISMO */

      PARTE B**
         1 x 4
      PARTE D
         1 x 36    
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
         16 x (m_ancho/4-84)/1000
         12 x (m_alto-66)/1000
      PARTE QRS
         8 x (m_ancho/4-84)/1000
         8 x (m_alto-66-100)/1000




   FIN DESARME   /* Ventanas de Cuatro Hojas*/

m_cant_vid:=cant_vid()
m_2vid:=m2_vid()
         
PRODUCTO MOCORR         
         




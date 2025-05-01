/* Ventana Corrediza Doble (ALTERNATIVA) Marco Perfil 45 09/04/98*/

CALCULOS
tra_n:=0
FIN CALCULOS

   PERFIL 45
      CORTES A 45
      2 x m_ancho
      2 x m_alto

   /* Ventanas de 2 Hojas */
   DESARMAR SOLO SI n_hojas=2

      CORTES A RECTO

      PERFIL 2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         4 x m_ancho/2-85
      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0
         6 x m_ancho/2-85
         PARTE I
            1 x 4
         PARTE J
            1 x 4
         PARTE QRS
            4 x (m_ancho/2-100)/1000


      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0
         4+2*tra2 x m_ancho/2-85
         PARTE I
            1 x 4*tra2
         PARTE J
            1 x 4*tra2
         PARTE QRS
            4*tra2 x (m_ancho/2-100)/1000



      FIN DESARME


      /* Parantes laterales */
      PERFIL 3
         2 x m_alto-36

      /* Parantes Centrales */
      PERFIL 4
          2 x m_alto-36

      VIDRIOS

         SEPARACION

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            2 de m_ancho/2-67 x m_alto-118
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
	VIDRIOS
            2 de m_ancho/2-67 x tra1-59-16
	PANELES
            2 de m_ancho/2-67 x m_alto-tra1-59-16
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            2*(tra2+1) de m_ancho/2-67 x (m_alto-118-32*tra2)/(tra2+1)
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
         6 x m_ancho/3-87

         PARTE I
            1 x 6
         PARTE J
            1 x 6
         PARTE QRS
            6 x (m_ancho/3-97)/1000


      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0
         9 x m_ancho/3-87

         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-97)/1000



      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0
         3*(2+tra2) x m_ancho/3-87
      FIN DESARME


      /* Parantes laterales */
      PERFIL 3
         4 x m_alto-36

      /* Parantes Centrales */
      PERFIL 4
          2 x m_alto-36

      /* encuentro central */
      PERFIL 19
         1 x m_alto-36

      VIDRIOS

         SEPARACION

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            3 de m_ancho/3-69 x m_alto-118
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            3 de m_ancho/3-69 x tra1-59-16
	PANELES
            3 de m_ancho/3-69 x m_alto-tra1-59-16
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            3*(tra2+1) de m_ancho/3-69 x (m_alto-118-32*tra2)/(tra2+1)
         FIN DESARME

   FIN DESARME   /* Ventanas de Tres Hojas Guia A */

   /* Tipo de Guia 'B' */

	DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=2

      PERFIL 2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         6 x m_ancho/3-71

         PARTE I
            1 x 6
         PARTE J
            1 x 6
         PARTE QRS
            6 x (m_ancho/3-81)/1000



      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0
         9 x m_ancho/3-71

         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-81)/1000



      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0
         3*(2+tra2) x m_ancho/3-71
      FIN DESARME


      /* Parantes laterales */
      PERFIL 3
         2 x m_alto-36

      /* Parantes Centrales */
      PERFIL 4
          4 x m_alto-36

      VIDRIOS

        
         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            3 de m_ancho/3-53 x m_alto-118
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            3 de m_ancho/3-53 x tra1-59-16
	PANELES
            3 de m_ancho/3-53 x m_alto-tra1-59-16
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            3*(tra2+1) de m_ancho/3-53 x (m_alto-118-32*tra2)/(tra2+1)
         FIN DESARME

   FIN DESARME   /* Ventanas de Tres Hojas Guia B*/

         
DESARMAR SOLO SI n_hojas=3

      /* MECANISMO */

      PARTE A
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
         8 x m_ancho/4-76

         PARTE I
            1 x 8
         PARTE J
            1 x 8
         PARTE QRS
            8 x (m_ancho/4-84)/1000

      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0
         12 x m_ancho/4-76

         PARTE I
            1 x 8*tra2
         PARTE J
            1 x 8*tra2
         PARTE QRS
            8*tra2 x (m_ancho/4-84)/1000


      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0
         4*(2+tra2) x m_ancho/4-76
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
            4 de m_ancho/4-59.5 x m_alto-124
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            4 de m_ancho/4-58 x tra1-59-16
	PANELES
            4 de m_ancho/4-58 x m_alto-tra1-59-16
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            4*(tra2+1) de m_ancho/4-58 x (m_alto-118-32*tra2)/(tra2+1)
         FIN DESARME


      /* MECANISMO */

      PARTE A
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
         
         



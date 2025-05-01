/* ventana Corrediza */

CALCULOS
tra_n:=0
FIN CALCULOS

   VARIABLE perfil_2
   VARIABLE perfil_3

   CORTES A 45:
   PERFIL 1
      2 x m_ancho
   PERFIL 1
      2 x m_alto
   CORTES A RECTO:

   

   /* Ventanas de 2 Hojas */
   DESARMAR SOLO SI n_hojas=2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         PERFIL 2
            2 x m_ancho/2-121
         PERFIL 44
            2 x m_ancho/2-121
      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         PERFIL 2
            4 x m_ancho/2-121
         PERFIL 44
            2 x m_ancho/2-121
         PARTE I
            1 x 4
         PARTE J
            1 x 4
         PARTE QRS
            4 x (m_ancho/2-100)/1000

      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0 .AND. tra1=0
         PERFIL 2
            2+2*tra2 x m_ancho/2-121
         PERFIL 44
            2 x m_ancho/2-121
         PARTE I
            1 x 4*tra2
         PARTE J
            1 x 4*tra2
         PARTE QRS
            4*tra2 x (m_ancho/2-100)/1000

      FIN DESARME


      /* Parantes laterales */
      PERFIL 53
         2 x m_alto-66

      /* Parantes Centrales */
      PERFIL 54
          2 x m_alto-66

      DESARMAR SOLO SI mosquitero!=0

         CALCULOS
            m_ancho_aux:=m_ancho
	    m_alto_aux:=m_alto
            m_ancho:=m_ancho_aux/2-33
	    m_alto:=m_alto_aux-76
         FIN CALCULOS

         PRODUCTO MOSQUI
         CALCULOS
            m_ancho:=m_ancho_aux
	    m_alto:=m_alto_aux
         FIN CALCULOS
      FIN DESARME

      PRODUCTO GCOR

      VIDRIOS
   
         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            2 de m_ancho/2-103 x m_alto-173
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            2 de m_ancho/2-103 x tra1-16-99
            PANELES
            2 de m_ancho/2-103 x m_alto-tra1-16-74
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            2*(tra2+1) de m_ancho/2-103 x (m_alto-173-32*tra2)/(tra2+1)
         FIN DESARME

      /* MECANISMO */

      PARTE A
         1 x 2
      PARTE D
         1 x 36    
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
         PARTE C2CR
            1 x 4
      PARTE H
         8 x (m_ancho/2-100)/1000
         6 x (m_alto-66)/1000
      PARTE QRS
         4 x (m_ancho/2-100)/1000
         4 x (m_alto-66-100)/1000

   FIN DESARME   /* Ventanas de Dos Hojas */


   /* Ventanas de 3 Hojas */

	DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=1

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         PERFIL 2
            3 x m_ancho/3-120
         PERFIL 44
            3 x m_ancho/3-120
      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         PERFIL 2
            6 x m_ancho/3-120
         PERFIL 44
            3 x m_ancho/3-120
         PARTE I
            1 x 6
         PARTE J
            1 x 6
         PARTE QRS
            6 x (m_ancho/3-97)/1000

      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0 .AND. tra1=0
         PERFIL 2
            3*(1+tra2) x m_ancho/3-120
         PERFIL 44
            3 x m_ancho/3-120
         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-97)/1000
      FIN DESARME


      /* Parantes laterales */
      PERFIL 53
         4 x m_alto-66

      /* Parantes Centrales */
      PERFIL 54
          2 x m_alto-66
      PERFIL 19
          1 x m_alto-66

      DESARMAR SOLO SI mosquitero!=0
         
         CALCULOS
            m_ancho_aux:=m_ancho
	    m_alto_aux:=m_alto
            m_ancho:=m_ancho_aux/3-25
	    m_alto:=m_alto_aux-76
         FIN CALCULOS
         PRODUCTO MOSQUI
         CALCULOS
            m_ancho:=m_ancho_aux
	    m_alto:=m_alto_aux
         FIN CALCULOS
      FIN DESARME

      PRODUCTO GCOR

      VIDRIOS

      

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            3 de m_ancho/3-102 x m_alto-173
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            3 de m_ancho/3-102 x tra1-99-16
          PANELES
            3 de m_ancho/3-102 x m_alto-tra1-74-16
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            3*(tra2+1) de m_ancho/3-102 x (m_alto-173-32*tra2)/(tra2+1)
         FIN DESARME

   FIN DESARME   /* Ventanas de Tres Hojas Guia A */

   /* Tipo de Guia 'B' */

	DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         PERFIL 2
            3 x m_ancho/3-100
         PERFIL 44
            3 x m_ancho/3-100
      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         PERFIL 2
            6 x m_ancho/3-100
         PERFIL 44
            3 x m_ancho/3-100
         PARTE I
            1 x 6
         PARTE J
            1 x 6
         PARTE QRS
            6 x (m_ancho/3-81)/1000
      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0 .AND. tra1=0
         PERFIL 2
            3*(1+tra2) x m_ancho/3-100
         PERFIL 44
            3 x m_ancho/3-100
         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-81)/1000
		FIN DESARME


      /* Parantes laterales */
      PERFIL 53
         2 x m_alto-66

      /* Parantes Centrales */
      PERFIL 54
          4 x m_alto-66

      DESARMAR SOLO SI mosquitero!=0
         SEPARACION
         CALCULOS
            m_ancho_aux:=m_ancho
	    m_alto_aux:=m_alto
            m_ancho:=m_ancho_aux/3-25
	    m_alto:=m_alto_aux-76
         FIN CALCULOS
         PRODUCTO MOSQUI
         CALCULOS
            m_ancho:=m_ancho_aux
	    m_alto:=m_alto_aux
         FIN CALCULOS
      FIN DESARME

      PRODUCTO GCOR

      VIDRIOS

       

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            3 de m_ancho/3-82 x m_alto-173
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            3 de m_ancho/3-82 x tra1-99-16
            PANELES
            3 de m_ancho/3-82 x m_alto-tra1-74-16
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            3*(tra2+1) de m_ancho/3-82 x (m_alto-173-32*tra2)/(tra2+1)
         FIN DESARME

   FIN DESARME 
  /* Ventanas de Tres Hojas Guia B*/

        DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=3

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         PERFIL 2
            1 x (m_ancho-300)/2
            2 x (m_ancho-300)/4
         PERFIL 44
            1 x (m_ancho-300)/2
            2 x (m_ancho-300)/4
      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         PERFIL 2
            2 x (m_ancho-300)/2
            4 x (m_ancho-300)/4
         PERFIL 44
            1 x (m_ancho-300)/2
            2 x (m_ancho-300)/4
         PARTE I
            1 x 6
         PARTE J
            1 x 6
         PARTE QRS
            6 x (m_ancho/3-81)/1000
      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0 .AND. tra1=0
         PERFIL 2
            tra2+1 x (m_ancho-300)/2
            2*(tra2+1) x (m_ancho-300)/4
         PERFIL 44
            1 x (m_ancho-300)/2
            2 x (m_ancho-300)/4
         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-81)/1000
		FIN DESARME


      /* Parantes laterales */
      PERFIL 53
         2 x m_alto-66

      /* Parantes Centrales */
      PERFIL 54
          4 x m_alto-66

      DESARMAR SOLO SI mosquitero!=0
         CALCULOS
            m_ancho_aux:=m_ancho
	    m_alto_aux:=m_alto
            m_ancho:=(m_ancho_aux-300)/4+100
	    m_alto:=m_alto_aux-76
         FIN CALCULOS

          PRODUCTO MOSQUI
          PRODUCTO MOSQUI
         
         CALCULOS
            m_ancho:=m_ancho_aux
	    m_alto:=m_alto_aux
         FIN CALCULOS
      FIN DESARME

      PRODUCTO GCOR

      VIDRIOS

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            1 de (m_ancho-300)/2+18 x m_alto-173
            2 de (m_ancho-300)/4+18 x m_alto-173
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            1 de (m_ancho-300)/2+18 x tra1-99-16
            2 de (m_ancho-300)/4+18 x tra1-99-16
            PANELES
            1 de (m_ancho-300)/2+18 x m_alto-tra1-99-16
            2 de (m_ancho-300)/4+18 x m_alto-tra1-99-16
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
           tra2+1 de (m_ancho-300)/2+18 x (m_alto-173-32*tra2)/(tra2+1)
           2*(tra2+1) de (m_ancho-300)/4+18 x (m_alto-173-32*tra2)/(tra2+1)
         FIN DESARME

   FIN DESARME
   /* Ventanas de Tres Hojas Guia c*/


   /* MECANISMO */

   DESARMAR SOLO SI n_hojas=3
      PARTE A
         1 x 2
      PARTE D
         1 x 36    
      PARTE 1088
         1 x 2
      PARTE I
         1 x 18
      PARTE J
         1 x 18
      PARTE AGN
         1 x 6
      PARTE AGV
	 1 x 6	
      PARTE ABD
         1 x 4
         PARTE C2CR
            1 x 6
      PARTE H
         12 x (m_ancho/3-80)/1000
         8 x (m_alto-66)/1000
      PARTE QRS
         6 x (m_ancho/3-80)/1000
         6 x (m_alto-66-100)/1000
   FIN DESARME 
  /* Mecanismo Ventanas de tres Hojas */



  /* Ventana de 4 hojas*/
  DESARMAR SOLO SI n_hojas=4

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         PERFIL 2
            4 x m_ancho/4-105
         PERFIL 44
            4 x m_ancho/4-105
      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         PERFIL 2
            8 x m_ancho/4-105
         PERFIL 44
            4 x m_ancho/4-105
         PARTE I
            1 x 8
         PARTE J
            1 x 8
         PARTE QRS
            8 x (m_ancho/4-84)/1000
      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0 .AND. tra1=0
         PERFIL 2
            4*(1+tra2) x m_ancho/4-105
         PERFIL 44
            4 x m_ancho/4-105
         PARTE I
            1 x 8*tra2
         PARTE J
            1 x 8*tra2
         PARTE QRS
            8*tra2 x (m_ancho/4-84)/1000
      FIN DESARME


      /* Parantes laterales */
      PERFIL 53
         4 x m_alto-66

      /* Parantes Centrales */
      PERFIL 54
          4 x m_alto-66

      /* Cierre Central para ventanas de 4 hojas */
      PERFIL 19
         1 x m_alto-66

      DESARMAR SOLO SI mosquitero!=0
         SEPARACION
         CALCULOS
            m_ancho_aux:=m_ancho
	    m_alto_aux:=m_alto
            m_ancho:=m_ancho_aux/2-30
	    m_alto:=m_alto_aux-76
         FIN CALCULOS
         PRODUCTO MOSQUI
         CALCULOS
            m_ancho:=m_ancho_aux
	    m_alto_aux:=m_alto
         FIN CALCULOS
      FIN DESARME

      PRODUCTO GCOR

      VIDRIOS

        
         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            4 de m_ancho/4-87 x m_alto-173
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            4 de m_ancho/4-87 x tra1-99-16
            PANELES
            4 de m_ancho/4-87 x m_alto-tra1-74-16
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            4*(tra2+1) de m_ancho/4-87 x (m_alto-173-32*tra2)/(tra2+1)
         FIN DESARME

      /* MECANISMO */
      PARTE A
         1 x 2
      PARTE D
         1 x 36    
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
         PARTE C2CR
            1 x 8

      PARTE H
         16 x (m_ancho/4-84)/1000
         12 x (m_alto-66)/1000
      PARTE QRS
         8 x (m_ancho/4-84)/1000
         8 x (m_alto-66-100)/1000
   FIN DESARME 
  /* Ventanas de Cuatro Hojas*/

         
/* Cubetas */
DESARMAR SOLO SI cubetas>0
   PARTE CUBETA
      1 x cubetas
FIN DESARME
         

m_cant_vid:=cant_vid()
m_2vid:=m2_vid()
         
PRODUCTO MOCORR         







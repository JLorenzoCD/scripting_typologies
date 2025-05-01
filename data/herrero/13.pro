/* Puerta Corrediza */

   VARIABLE perfil_2
   VARIABLE perfil_3

   CORTES A 45:
   PERFIL 1
      1 x m_ancho
   CORTES A RECTO:
   PERFIL 17
      1 x m_ancho-40
   CORTES A 90 Y 45:
   PERFIL 1
      2 x m_alto
   SEPARACION

   CORTES A RECTO:

   /* Ventanas de 2 Hojas */
   DESARMAR SOLO SI n_hojas=2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         PERFIL 2
            2 x m_ancho/2-100
         DESARMAR SOLO SI cv_ext=1
            PERFIL 44
               2 x m_ancho/2-100
         FIN DESARME
			DESARMAR SOLO SI cv_ext=2
            PERFIL 224
               2 x m_ancho/2-100
         FIN DESARME
      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
         PERFIL 2
				4 x m_ancho/2-100
			SEGUN cv_ext PERFIL 44,224
            2 x m_ancho/2-100
         PARTE I
            1 x 4
         PARTE J
            1 x 4
         PARTE QRS
            4 x (m_ancho/2-100)/1000

      FIN DESARME

      /* tra_n= POSICION del segundo travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
         PERFIL 2
                6 x m_ancho/2-100
			SEGUN cv_ext PERFIL 44,224
            2 x m_ancho/2-100
         PARTE I
            1 x 8
         PARTE J
            1 x 8
         PARTE QRS
            8 x (m_ancho/2-100)/1000

      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0 .AND. tra1=0 .AND. tra_n=0
         PERFIL 2
            2+2*tra2 x m_ancho/2-100
			SEGUN cv_ext PERFIL 44,224
            2 x m_ancho/2-100
         PARTE I
            1 x 4*tra2
         PARTE J
            1 x 4*tra2
         PARTE QRS
            4*tra2 x (m_ancho/2-100)/1000

      FIN DESARME


      /* Parantes laterales */
      PERFIL 3
         2 x m_alto-47

      /* Parantes Centrales */
      PERFIL 4
          2 x m_alto-47

      DESARMAR SOLO SI mosquitero!=0
         SEPARACION
         /* Horizontales */
         CORTES A 45:
         PERFIL 5
            2 x m_ancho/2-44+10
         CORTES A RECTO:
         DESARMAR SOLO SI tramosq>0
            PERFIL 90
               tramosq x m_ancho/2-108.5+10
            PARTE I
               tramosq x 4
            PARTE N
               tramosq*2 x (m_ancho/2-108.5)/1000
         FIN DESARME
         /* Verticales */
         CORTES A 45:
         PERFIL 5
            2 x m_alto-57
         CORTES A RECTO:
        PARTE C3
           1 x 2
        PARTE B
           1 x 4
        PARTE D
           1 x 16
        PARTE P
           1 x 2
        PARTE N
           2 x (m_ancho/2-44)/1000
           2 x (m_alto-73)/1000
        PARTE O
           2 x (m_alto-73)/1000
         TELA
            1 de m_ancho/2 x m_alto-73
      FIN DESARME       /*  Mosquitero */

       /* Si tiene gcomun no tiene gbarrios y viceversa */

      /* Guia Comun y tapacinta para 2,3,4 hojas */
		DESARMAR SOLO SI tipo_gui=2
			SEPARACION
            PERFIL 715
               1 x m_alto
            PERFIL 20
               2 x m_alto+50

         PARTE D 
            1 x 8*m_alto/1000
         
      FIN DESARME

      /* Guia Barrios y tapacintas */
		DESARMAR SOLO SI tipo_gui=3
        SEPARACION
           PERFIL 715
             1 x m_alto
           PERFIL 21
             2 x m_alto+50
        PARTE D
            1 x 8*m_alto/1000
      FIN DESARME

      DESARMAR SOLO SI dobletapa!=0
         PERFIL 715
            1 x m_alto

		FIN DESARME

      VIDRIOS

         SEPARACION

         DESARMAR SOLO SI cv_ext=1
            DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2=0
               2 de m_ancho/2-82 x m_alto-154
            FIN DESARME
         FIN DESARME
         DESARMAR SOLO SI cv_ext=2
            DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2=0
               2 de m_ancho/2-82 x m_alto-154-12
            FIN DESARME
         FIN DESARME

         /* tra1= posicion del primer travesanio */
         DESARMAR SOLO SI cv_ext=1
            DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
               2 de m_ancho/2-82 x tra1-16-80
               PANELES
               2 de m_ancho/2-82 x m_alto-tra1-16-74
            FIN DESARME
         FIN DESARME
         DESARMAR SOLO SI cv_ext=2
            DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
               2 de m_ancho/2-82 x tra1-16-80-12
               PANELES
               2 de m_ancho/2-82 x m_alto-tra1-16-74
            FIN DESARME
         FIN DESARME

         /* tra_n= posicion del segundo travesanio */
         DESARMAR SOLO SI cv_ext=1
      DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
               2 de m_ancho/2-82 x tra1-16-80
               PANELES
               2 de m_ancho/2-82 x tra_n-tra1-16-16
               OTROS INTERIORES
               2 de m_ancho/2-82 x m_alto-tra_n-16-74
            FIN DESARME
         FIN DESARME
         DESARMAR SOLO SI cv_ext=2
      DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
               2 de m_ancho/2-82 x tra1-16-80-12
               PANELES
               2 de m_ancho/2-82 x tra_n-tra1-16-16
               OTROS INTERIORES
               2 de m_ancho/2-82 x m_alto-tra_n-16-74
            FIN DESARME
         FIN DESARME


         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI cv_ext=1
            DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2>0
               2*(tra2+1) de m_ancho/2-82 x (m_alto-154-32*tra2)/(tra2+1)
            FIN DESARME
         FIN DESARME
         DESARMAR SOLO SI cv_ext=2
            DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2>0
            2*(tra2+1) de m_ancho/2-82 x (m_alto-154-12-32*tra2)/(tra2+1)
            FIN DESARME
         FIN DESARME

      /* MECANISMO */

      PARTE A
         1 x 2
      PARTE D
         1 x 16    
      DESARMAR SOLO SI cv_ext=1
         PARTE C2CR
            1 x 4
      FIN DESARME
      DESARMAR SOLO SI cv_ext=2
         PARTE VERONR
            1 x 4
      FIN DESARME
      PARTE 1088
         1 x 1
      PARTE I
         1 x 12
      PARTE J
         1 x 12
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

   DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=2

      DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2=0
         PERFIL 2
				3 x m_ancho/3-81
         SEGUN cv_ext PERFIL 44,224
            3 x m_ancho/3-81
		FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
         PERFIL 2
            6 x m_ancho/3-81
			SEGUN cv_ext PERFIL 44,224
            3 x m_ancho/3-81
         PARTE I
            1 x 6
         PARTE J
            1 x 6
         PARTE QRS
            6 x (m_ancho/3-97)/1000

      FIN DESARME

      /* tra_n= POSICION del segundo travesanios */
      DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
         PERFIL 2
            9 x m_ancho/3-81
			SEGUN cv_ext PERFIL 44,224
            3 x m_ancho/3-81
         PARTE I
            1 x 18
         PARTE J
            1 x 18
         PARTE QRS
            12 x (m_ancho/3-97)/1000

      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2>0
         PERFIL 2
            3*(1+tra2) x m_ancho/3-81
			SEGUN cv_ext PERFIL 44,224
            3 x m_ancho/3-81
         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-97)/1000
      FIN DESARME


      /* Parantes laterales */
      PERFIL 3
         2 x m_alto-47

      /* Parantes Centrales */
      PERFIL 4
          4 x m_alto-47

      DESARMAR SOLO SI mosquitero!=0
         SEPARACION
         /* Horizontales */
         CORTES A 45:
         PERFIL 5
            2 x m_ancho/3-25+10
         CORTES A RECTO:
         DESARMAR SOLO SI tramosq>0
            PERFIL 90
               tramosq x m_ancho/3-89.5+10
            PARTE I
               tramosq x 4
            PARTE N
               tramosq*2 x (2*m_ancho/3-89.5)/1000 
            FIN DESARME
         /* Verticales */
         CORTES A 45:
         PERFIL 5
            2 x m_alto-75
         CORTES A RECTO:
        /* Partes */
        PARTE C3
           1 x 2
        PARTE B
           1 x 4
        PARTE D
           1 x 16
        PARTE P
           1 x 2
        PARTE N
           2 x (2*m_ancho/3-25)/1000
           2 x (m_alto-73)/1000
        PARTE O
           2 x (m_alto-73)/1000
         TELA
            1 de m_ancho/2 x m_alto-73
      FIN DESARME       /*  Mosquitero */

       /* Si tiene gcomun no tiene gbarrios y viceversa */

      /* Guia Comun y tapacinta para 2,3,4 hojas */
		DESARMAR SOLO SI tipo_gui=2

            PERFIL 715
               1 x m_alto
            PERFIL 20
               2 x m_alto+50

         PARTE D 
            1 x 8*m_alto/1000
         
      FIN DESARME

      /* Guia Barrios y tapacintas */
		DESARMAR SOLO SI tipo_gui=3

           PERFIL 715
             1 x m_alto
           PERFIL 21
             2 x m_alto+50
        PARTE D
            1 x 8*m_alto/1000
      FIN DESARME

      DESARMAR SOLO SI dobletapa!=0
         PERFIL 715
            1 x m_alto
      FIN DESARME

      VIDRIOS

         DESARMAR SOLO SI cv_ext=1
            DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2=0
               3 de m_ancho/3-63 x m_alto-154
            FIN DESARME
         FIN DESARME
         DESARMAR SOLO SI cv_ext=2
            DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2=0
               3 de m_ancho/3-63 x m_alto-154-12
            FIN DESARME
         FIN DESARME

         /* tra1= posicion del primer travesanio */
         DESARMAR SOLO SI cv_ext=1
            DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
               3 de m_ancho/3-63 x tra1-80-16
               PANELES
               3 de m_ancho/3-63 x m_alto-tra1-74-16
            FIN DESARME
         FIN DESARME
         DESARMAR SOLO SI cv_ext=2
            DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
               3 de m_ancho/3-63 x tra1-80-16-12
               PANELES
               3 de m_ancho/3-63 x m_alto-tra1-74-16
            FIN DESARME
         FIN DESARME

         /* tra_n= posicion del segundo travesanio */
         DESARMAR SOLO SI cv_ext=1
            DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
               3 de m_ancho/3-63 x tra1-80-16
               PANELES
               3 de m_ancho/3-63 x tra_n-tra1-16-16
               OTROS INTERIORES
               3 de m_ancho/3-63 x m_alto-tra_n-74-16
            FIN DESARME
         FIN DESARME
         DESARMAR SOLO SI cv_ext=2
            DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
               3 de m_ancho/3-63 x tra1-80-16-12
               PANELES
               3 de m_ancho/3-63 x tra_n-tra1-16-16
               OTROS INTERIORES
               3 de m_ancho/3-63 x m_alto-tra_n-74-16
            FIN DESARME
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI cv_ext=1
            DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2>0
               3*(tra2+1) de m_ancho/3-63 x (m_alto-154-32*tra2)/(tra2+1)
            FIN DESARME
         FIN DESARME
         DESARMAR SOLO SI cv_ext=2
            DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2>0
            3*(tra2+1) de m_ancho/3-63 x (m_alto-154-12-32*tra2)/(tra2+1)
            FIN DESARME
         FIN DESARME

   FIN DESARME   /* Ventanas de Tres Hojas Guia B */

   /* Tipo de Guia 'A' */

   DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=1

      DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2=0
         PERFIL 2
				3 x m_ancho/3-97
         SEGUN cv_ext PERFIL 44,224	
				3 x m_ancho/3-97
      FIN DESARME

      /* tra1= POSICION del primer travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
         PERFIL 2
            6 x m_ancho/3-97
			SEGUN cv_ext PERFIL 44,224
            3 x m_ancho/3-97
         PARTE I
            1 x 6
         PARTE J
            1 x 6
         PARTE QRS
            6 x (m_ancho/3-81)/1000

      FIN DESARME

      /* tra_n= POSICION del segundo travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
         PERFIL 2
            9 x m_ancho/3-97
			SEGUN cv_ext PERFIL 44,224
            3 x m_ancho/3-97
         PARTE I
            1 x 12
         PARTE J
            1 x 12
         PARTE QRS
            12 x (m_ancho/3-81)/1000

      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2>0
         PERFIL 2
            3*(1+tra2) x m_ancho/3-97
			SEGUN cv_ext PERFIL 44,224
            3 x m_ancho/3-97
         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-81)/1000
      FIN DESARME


      /* Parantes laterales */
      PERFIL 3
         4 x m_alto-47

      /* Parantes Centrales */
      PERFIL 4
          2 x m_alto-47

      PERFIL 19
          1 x m_alto-47
        
      DESARMAR SOLO SI mosquitero!=0
         /* Horizontales */
         CORTES A 45:
         PERFIL 5
            2 x m_ancho/3-25+10
         CORTES A RECTO:
         DESARMAR SOLO SI tramosq>0
            PERFIL 90
               tramosq x m_ancho/3-89.5+10
            PARTE I
               tramosq x 4
            PARTE N
               tramosq*2 x (m_ancho/2-108.5)/1000
            FIN DESARME
         /* Verticales */
         CORTES A 45:
            PERFIL 5
               2 x m_alto-75
         CORTES A RECTO:
        /* Partes */
        PARTE C3
           1 x 2
        PARTE B
           1 x 4
        PARTE D
           1 x 16
        PARTE P
           1 x 2
        PARTE N
           2 x (m_ancho/3-25)/1000
           2 x (m_alto-73)/1000
        PARTE O
           2 x (m_alto-73)/1000

         TELA
            1 de m_ancho/2 x m_alto-73
      FIN DESARME       /*  Mosquitero */

       /* Si tiene gcomun no tiene gbarrios y viceversa */

      /* Guia Comun y tapacinta para 2,3,4 hojas */
		DESARMAR SOLO SI tipo_gui=2
			SEPARACION
            PERFIL 715
               1 x m_alto
            PERFIL 20
               2 x m_alto+50

         PARTE D 
            1 x 8*m_alto/1000
         
      FIN DESARME

      /* Guia Barrios y tapacintas */
		DESARMAR SOLO SI tipo_gui=3
		  SEPARACION
           PERFIL 715
             1 x m_alto
           PERFIL 21
             2 x m_alto+50
        PARTE D
            1 x 8*m_alto/1000

        

      FIN DESARME

      DESARMAR SOLO SI dobletapa!=0
         PERFIL 715
            1 x m_alto


      FIN DESARME

      VIDRIOS

         SEPARACION

         DESARMAR SOLO SI cv_ext=1
            DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2=0
               3 de m_ancho/3-79 x m_alto-154
            FIN DESARME
         FIN DESARME
         DESARMAR SOLO SI cv_ext=2
            DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2=0
               3 de m_ancho/3-79 x m_alto-154-12
            FIN DESARME
         FIN DESARME

         /* tra1= posicion del primer travesanio */
         DESARMAR SOLO SI cv_ext=1
            DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
               3 de m_ancho/3-79 x tra1-80-16
               PANELES
               3 de m_ancho/3-79 x m_alto-tra1-74-16
            FIN DESARME
         FIN DESARME
         DESARMAR SOLO SI cv_ext=2
            DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
               3 de m_ancho/3-79 x tra1-80-16-12
               PANELES
               3 de m_ancho/3-79 x m_alto-tra1-74-16
            FIN DESARME
         FIN DESARME

         /* tra_n= posicion del segundo travesanio */
         DESARMAR SOLO SI cv_ext=1
            DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
               3 de m_ancho/3-79 x tra1-80-16
               PANELES
               3 de m_ancho/3-79 x tra_n-tra1-16-16
               OTROS INTERIORES
               3 de m_ancho/3-79 x m_alto-tra_n-74-16
            FIN DESARME
         FIN DESARME
         DESARMAR SOLO SI cv_ext=2
            DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
               3 de m_ancho/3-79 x tra1-80-16-12
               PANELES
               3 de m_ancho/3-79 x tra_n-tra1-16-16
               OTROS INTERIORES
               3 de m_ancho/3-79 x m_alto-tra_n-74-16
            FIN DESARME
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI cv_ext=1
            DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2>0
               3*(tra2+1) de m_ancho/3-79 x (m_alto-154-32*tra2)/(tra2+1)
            FIN DESARME
         FIN DESARME
         DESARMAR SOLO SI cv_ext=2
            DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2>0
           3*(tra2+1) de m_ancho/3-79 x (m_alto-154-12-32*tra2)/(tra2+1)
            FIN DESARME
         FIN DESARME

   FIN DESARME   /* Ventanas de Tres Hojas Guia A*/

DESARMAR SOLO SI n_hojas=3

      /* MECANISMO */

      PARTE A
         1 x 2
      PARTE D
         1 x 16    
      DESARMAR SOLO SI cv_ext=1
         PARTE C2CR
            1 x 6
      FIN DESARME
      DESARMAR SOLO SI cv_ext=2
         PARTE VERONR
            1 x 6
		FIN DESARME
DESARMAR SOLO SI guia_3h=1
      PARTE 1088
         1 x 1
      PARTE ABB
         1 x 8
      PARTE ABC
         1 x 4 
FIN DESARME
DESARMAR SOLO SI guia_3h=2
      PARTE 1088
         1 x 2
      PARTE ABB
         1 x 4
      PARTE ABC
         1 x 8 
FIN DESARME

      PARTE I
         1 x 18
      PARTE J
         1 x 18
      PARTE ABD
         1 x 4

      PARTE H
         12 x (m_ancho/3-80)/1000
         8 x (m_alto-66)/1000
      PARTE QRS
         6 x (m_ancho/3-80)/1000
         6 x (m_alto-66-100)/1000

     


   FIN DESARME   /* Ventanas de tres Hojas */

         
   DESARMAR SOLO SI n_hojas=4

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         PERFIL 2
				4 x m_ancho/4-84
         SEGUN cv_ext PERFIL 44,244
				4 x m_ancho/4-84
      FIN DESARME

      /* tra1= POSICION del primer travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
         PERFIL 2
            8 x m_ancho/4-84
			SEGUN cv_ext PERFIL 44,244
            4 x m_ancho/4-84
         PARTE I
            1 x 8
         PARTE J
            1 x 8
         PARTE QRS
            8 x (m_ancho/4-84)/1000
      FIN DESARME

      /* tra_n= POSICION del segundo travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
         PERFIL 2
            12 x m_ancho/4-84
			SEGUN cv_ext PERFIL 44,244
            4 x m_ancho/4-84
         PARTE I
            1 x 16
         PARTE J
            1 x 16
         PARTE QRS
            16 x (m_ancho/4-84)/1000
      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2>0
         PERFIL 2
            4*(1+tra2) x m_ancho/4-84
			SEGUN cv_ext PERFIL 44,244
            4 x m_ancho/4-84
         PARTE I
            1 x 8*tra2
         PARTE J
            1 x 8*tra2
         PARTE QRS
            8*tra2 x (m_ancho/4-84)/1000


      FIN DESARME


      /* Parantes laterales */
      PERFIL 3
         4 x m_alto-47

      /* Parantes Centrales */
      PERFIL 4
          4 x m_alto-47

      /* Cierre Central para ventanas de 4 hojas */
		PERFIL 19
         1 x m_alto-66

      DESARMAR SOLO SI mosquitero!=0
         SEPARACION
         /* Horizontales */
         CORTES A 45:
         PERFIL 5
            2 x m_ancho/2-30+10
         CORTES A RECTO:
         DESARMAR SOLO SI tramosq>0
            PERFIL 90
               tramosq x m_ancho/2-84.5+10
            PARTE I
               tramosq x 4
            PARTE N
               tramosq*2 x (m_ancho/2-108.5)/1000
            FIN DESARME
         /* Verticales */
         CORTES A 45:
            PERFIL 5
               2 x m_alto-75
         CORTES A RECTO:
        /* Partes */
        PARTE C3
           1 x 2
        PARTE B
           1 x 4
        PARTE D
           1 x 16
        PARTE P
           1 x 2
        PARTE N
           2 x (m_ancho/2-30)/1000
           2 x (m_alto-73)/1000
        PARTE O
           2 x (m_alto-73)/1000
         TELA
            1 de m_ancho/2 x m_alto-73
      FIN DESARME       /*  Mosquitero */

       /* Si tiene gcomun no tiene gbarrios y viceversa */

      /* Guia Comun y tapacinta para 2,3,4 hojas */
		DESARMAR SOLO SI tipo_gui=2
			SEPARACION
            PERFIL 715
               1 x m_alto
            PERFIL 20
               2 x m_alto+50

         PARTE D 
            1 x 8*m_alto/1000
         
      FIN DESARME

      /* Guia Barrios y tapacintas */
		DESARMAR SOLO SI tipo_gui=3
        SEPARACION
           PERFIL 715
             1 x m_alto
           PERFIL 21
             2 x m_alto+50
        PARTE D
            1 x 8*m_alto/1000

        

      FIN DESARME

      DESARMAR SOLO SI dobletapa!=0
         PERFIL 715
            1 x m_alto


      FIN DESARME

      VIDRIOS


         DESARMAR SOLO SI cv_ext=1
            DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2=0
               4 de m_ancho/4-66 x m_alto-154
            FIN DESARME
         FIN DESARME
         DESARMAR SOLO SI cv_ext=2
            DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2=0
               4 de m_ancho/4-66 x m_alto-154-12
            FIN DESARME
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI cv_ext=1
            DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
               4 de m_ancho/4-66 x tra1-80-16
               PANELES
               4 de m_ancho/4-66 x m_alto-tra1-74-16
            FIN DESARME
         FIN DESARME
         DESARMAR SOLO SI cv_ext=2
            DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
               4 de m_ancho/4-66 x tra1-80-16-12
               PANELES
               4 de m_ancho/4-66 x m_alto-tra1-74-16
            FIN DESARME
         FIN DESARME

         /* tra_n= posicion del travesanio */
         DESARMAR SOLO SI cv_ext=1
            DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
               4 de m_ancho/4-66 x tra1-80-16
               PANELES
               4 de m_ancho/4-66 x tra_n-tra1-16-16
               OTROS INTERIORES
               4 de m_ancho/4-66 x m_alto-tra_n-74-16
            FIN DESARME
         FIN DESARME
         DESARMAR SOLO SI cv_ext=2
            DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
               4 de m_ancho/4-66 x tra1-80-16-12
               PANELES
               4 de m_ancho/4-66 x tra_n-tra1-16-16
               OTROS INTERIORES
               4 de m_ancho/4-66 x m_alto-tra_n-74-16
            FIN DESARME
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI cv_ext=1
            DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2>0
               4*(tra2+1) de m_ancho/4-66 x (m_alto-154-32*tra2)/(tra2+1)
            FIN DESARME
         FIN DESARME
         DESARMAR SOLO SI cv_ext=2
            DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2>0
            4*(tra2+1) de m_ancho/4-66 x (m_alto-154-12-32*tra2)/(tra2+1)
            FIN DESARME
         FIN DESARME

      /* MECANISMO */

      PARTE A
         1 x 2
      PARTE D
         1 x 16    
      DESARMAR SOLO SI cv_ext=1
         PARTE C2CR
            1 x 8
      FIN DESARME
      DESARMAR SOLO SI cv_ext=2
         PARTE VERONR
            1 x 8
      FIN DESARME
      PARTE 1088
         1 x 2
      PARTE I
         1 x 24
      PARTE J
         1 x 24
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


   FIN DESARME      /* 4 hojas */          
         

m_cant_vid:=cant_vid()
m_2vid:=m2_vid()
PRODUCTO MOCORR




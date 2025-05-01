/* Ventana Corrediza ekonal*/
/* Nota: Ver donde van los perfiles 6567 y 6568 (guias )

   VARIABLE perfil_2
   VARIABLE perfil_3

CALCULOS
   tra_n:=0
FIN CALCULOS

            SEGUN marco PERFIL 901,7151
      		CORTES A 45:
          		2 x m_ancho
          		2 x m_alto

/*   DESARMAR SOLO SI tapajunta!=0 .AND. marco=1
/*  	    	PERFIL 6670
/*      		CORTES A 45:
/*               2 x m_ancho+52
/*               2 x m_alto+52
/*   FIN DESARME
   DESARMAR SOLO SI tapajunta!=0 .AND. marco=1
         PERFIL 46
      		CORTES A 45:
               2 x m_ancho+52
               2 x m_alto+52
   FIN DESARME
   DESARMAR SOLO SI tapajunta!=0 .AND. marco=2
         PERFIL 7149
      		CORTES A 45:
               2 x m_ancho+52
               2 x m_alto+52
   FIN DESARME
    CORTES A RECTO:

   /* Ventanas de 2 Hojas */
   	DESARMAR SOLO SI n_hojas=2
        DESARMAR SOLO SI marco=2 .AND. corte=1
            PERFIL 7285
               2 x m_alto-66
        FIN DESARME
        DESARMAR SOLO SI marco=1
      		PERFIL 902
        FIN DESARME
        DESARMAR SOLO SI marco=2 .AND. corte=0
            PERFIL 7150
        FIN DESARME
        DESARMAR SOLO SI marco=2 .AND. corte=1
         CORTES A 45:
            PERFIL 7284
        FIN DESARME

      		DESARMAR SOLO SI tra1=0 .AND. tra2=0
		   DESARMAR SOLO SI corte=0
         		4 x m_ancho/2-100
		   FIN DESARME
		   DESARMAR SOLO SI corte=1

         		4 x m_ancho/2-4
		   FIN DESARME

      		FIN DESARME

      /* tra1= POSICION del travesanio */
      		DESARMAR SOLO SI tra1>0 .AND. tra2=0 .AND. corte=0
         		6 x m_ancho/2-100

         		PARTE I
            			1 x 4
         		PARTE J
            			1 x 4
         		PARTE QRS
            			4 x (m_ancho/2-100)/1000


      		FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      		DESARMAR SOLO SI tra2>0 .AND. tra1=0 .AND. corte=0
         		4+2*tra2 x m_ancho/2-100

         		PARTE I
            			1 x 4*tra2
         		PARTE J
            			1 x 4*tra2
         		PARTE QRS
            			4*tra2 x (m_ancho/2-100)/1000


	      	FIN DESARME


      /* Parantes laterales */
            DESARMAR SOLO SI marco=1
               PERFIL 903
            FIN DESARME
            DESARMAR SOLO SI marco=2 .AND. corte=0
               PERFIL 7145
            FIN DESARME
            DESARMAR SOLO SI marco=2 .AND. corte=1
	CORTES A 45:
               PERFIL 7284
            FIN DESARME

         	2 x m_alto-66

      /* Parantes Centrales */
            DESARMAR SOLO SI marco=1
               PERFIL 904
            FIN DESARME
            DESARMAR SOLO SI marco=2 .AND. corte=0
               PERFIL 7146
            FIN DESARME
            DESARMAR SOLO SI marco=2 .AND. corte=1
              CORTES A 45:
               PERFIL 7284
            FIN DESARME
   			2 x m_alto-66

      		DESARMAR SOLO SI mosquitero!=0

         /* Horizontales */
         		PERFIL 905
            			CORTES A 45:
            			2 x m_ancho/2-44
            			CORTES A RECTO:
         		DESARMAR SOLO SI tramosq>0
            			PERFIL 90
               				tramosq x  m_ancho/2-108.5+10
            			PARTE I
               				tramosq x 4
            			PARTE N
               				tramosq*2 x (m_ancho/2-108.5)/1000
            			
				M.OBRA 0.10*tramosq
         		FIN DESARME
         /* Verticales */
         			PERFIL 905
            			CORTES A 45:
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
           				2 x (m_ancho/2-44)/1000
           				2 x (m_alto-73)/1000
        			PARTE O
           				2 x (m_alto-73)/1000

        			M.OBRA 0.28

         		TELA
            			1 de m_ancho/2 x m_alto-73

      		FIN DESARME       /*  Mosquitero */

       /* Si tiene gcomun no tiene gbarrios y viceversa */

      /* Guia Comun y tapacinta para 2,3,4 hojas */
		DESARMAR SOLO SI tipo_gui=2

            		PERFIL 715
               			1 x m_alto
            		PERFIL 920
               			2 x m_alto+50

         		PARTE D
            			1 x 8 * INT(m_alto/1000)

         		M.OBRA 0.10
      		FIN DESARME

      /* Guia Barrios y tapacintas */
		DESARMAR SOLO SI tipo_gui=3

           		PERFIL 715
             			1 x m_alto
           		PERFIL 21
             			2 x m_alto+50
        		PARTE D
            			1 x 8 * INT(m_alto/1000)
        	
			M.OBRA  0.10

      		FIN DESARME

      		DESARMAR SOLO SI dobletapa!=0
         		
			PERFIL 715
            			1 x m_alto

	         	M.OBRA 0.05

      		FIN DESARME

      		VIDRIOS

         	DESARMAR SOLO SI tra1=0 .AND. tra2=0
            		2 de m_ancho/2-100+18 x m_alto-148
         	FIN DESARME

         /* tra1= posicion del travesanio */
         	DESARMAR SOLO SI tra1>0
            			2 de m_ancho/2-100+18 x tra1-33-41-16.5
         		PANELES
            			2 de m_ancho/2-100+18 x m_alto-tra1-33-41-16.5
         	FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         	DESARMAR SOLO SI tra2>0
            		2*(tra2+1) de m_ancho/2-100+18 x (m_alto-66-82-33*tra2)/(tra2+1)
         	FIN DESARME

      /* MECANISMO */

      			PARTE A
        	 		1 x 4
      			PARTE D
         			1 x 36
DESARMAR SOLO SI corte=0
      			PARTE I
         			1 x 8
      			PARTE J
         			1 x 8
      			PARTE ABB
         			1 x 4
      			PARTE ABC
         			1 x 4
      			PARTE C1
			1 x 4
FIN DESARME
DESARMAR SOLO SI corte=1
      			PARTE R48
			1 x 4
FIN DESARME

DESARMAR SOLO SI corte=0
      			PARTE 1088
			1 x 1
FIN DESARME
DESARMAR SOLO SI corte=1
      			PARTE H123
			1 x 2
FIN DESARME
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
/*    CON HOJA CENTRAL Y LATERAL EN LA MISMA GUIA */

   	DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=1
         DESARMAR SOLO SI marco=1
      		PERFIL 902
         FIN DESARME
         DESARMAR SOLO SI marco=2 .AND. corte=0
            PERFIL 7150
         FIN DESARME
         DESARMAR SOLO SI marco=2 .AND. corte=1
            PERFIL 7285
         FIN DESARME

      		DESARMAR SOLO SI tra1=0 .AND. tra2=0 .AND. corte=0
         		6 x m_ancho/3-97
      		FIN DESARME
      		DESARMAR SOLO SI tra1=0 .AND. tra2=0 .AND. corte=1
         		6 x m_ancho/3
      		FIN DESARME

      /* tra1= POSICION del travesanios */
      		DESARMAR SOLO SI tra1>0 .AND. tra2=0 .AND. corte=0
         		9 x m_ancho/3-97
         	PARTE I
            		1 x 6
         	PARTE J
            		1 x 6
         	PARTE QRS
            		6 x (m_ancho/3-97)/1000


      		FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      		DESARMAR SOLO SI tra2>0 .AND. tra1=0 .AND. corte=0
         		3*(2+tra2) x m_ancho/3-97
         	PARTE I
            		1 x 6*tra2
         	PARTE J
            		1 x 6*tra2
         	PARTE QRS
            		6*tra2 x (m_ancho/3-97)/1000

      		FIN DESARME


      /* Parantes laterales */
         DESARMAR SOLO SI marco=1
         	PERFIL 7145
         FIN DESARME
         DESARMAR SOLO SI marco=2 .AND. corte=0
            PERFIL 7145
         FIN DESARME
         DESARMAR SOLO SI marco=2 .AND. corte=1
            PERFIL 7284
         FIN DESARME
       		4 x m_alto-66

      /* Parantes Centrales */
         DESARMAR SOLO SI marco=1
            PERFIL 904
         FIN DESARME
         DESARMAR SOLO SI marco=2 .AND. corte=0
            PERFIL 7146
         FIN DESARME
         DESARMAR SOLO SI marco=2 .AND. corte=1
            PERFIL 7284
         FIN DESARME
       		2 x m_alto-66

      	PERFIL 19
       		1 x m_alto-66

	      	DESARMAR SOLO SI mosquitero!=0


         /* Horizontales */
         		PERFIL 905
            			CORTES A 45:
               			2 x m_ancho/3-25+10
            			CORTES A RECTO:
         		DESARMAR SOLO SI tramosq>0
            			PERFIL 90
               				tramosq x 2*m_ancho/3-89.5+10
            			PARTE I
               				tramosq x 4
            			PARTE N
               				tramosq*2 x (2*m_ancho/3-89.5)/1000

 			M.OBRA   0.10*tramosq
         		FIN DESARME

         /* Verticales */
         			PERFIL 905
            			CORTES A 45:
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

				M.OBRA   0.28
        		
			TELA
            				1 de m_ancho/3 x m_alto-73

      		FIN DESARME       /*  Mosquitero */

       /* Si tiene gcomun no tiene gbarrios y viceversa */

      /* Guia Comun y tapacinta para 2,3,4 hojas */
		DESARMAR SOLO SI tipo_gui=2

            		PERFIL 715
               			1 x m_alto
            		PERFIL 920
               			2 x m_alto+50

         		PARTE D
            			1 x 8 * INT(m_alto/1000)

         		M.OBRA 0.10
      		FIN DESARME

      /* Guia Barrios y tapacintas */
		DESARMAR SOLO SI tipo_gui=3

           		PERFIL 715
             			1 x m_alto
           		PERFIL 21
             			2 x m_alto+50
        		PARTE D
            			1 x 8 * INT(m_alto/1000)

			M.OBRA  0.10

         	FIN DESARME

      		DESARMAR SOLO SI dobletapa!=0
         		PERFIL 715
            			1 x m_alto

         		M.OBRA 0.05

      		FIN DESARME

         VIDRIOS

         	DESARMAR SOLO SI tra1=0 .AND. tra2=0
            		3 de m_ancho/3-79 x m_alto-148
         	FIN DESARME

         	/* tra1= posicion del travesanio */
         	DESARMAR SOLO SI tra1>0
            		3 de m_ancho/3-79 x tra1-74-16.5
            	PANELES
            		3 de m_ancho/3-79 x m_alto-tra1-74-16.5
         	FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         	DESARMAR SOLO SI tra2>0
            		3*(tra2+1) de m_ancho/3-79 x (m_alto-66-82-33*tra2)/(tra2+1)
         	FIN DESARME



   	FIN DESARME   /* Ventanas de Tres Hojas Guia A */


   /* Tipo de Guia 'B' */
   /*    CON HOJAS LATERALES EN LA MISMA GUIA */

	DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=2
        DESARMAR SOLO SI marco=1
      		PERFIL 902
        FIN DESARME
        DESARMAR SOLO SI marco=2 .AND. corte=0
            PERFIL 7150
        FIN DESARME
        DESARMAR SOLO SI marco=2 .AND. corte=1
            PERFIL 7284
        FIN DESARME

      	DESARMAR SOLO SI tra1=0 .AND. tra2=0 .AND. corte=0
         	6 x m_ancho/3-81
      	FIN DESARME
      	DESARMAR SOLO SI tra1=0 .AND. tra2=0 .AND. corte=1
         	6 x m_ancho/3
      	FIN DESARME

      /* tra1= POSICION del travesanios */
      	DESARMAR SOLO SI tra1>0 .AND. corte=0
         		9 x m_ancho/3-81
         	PARTE I
            		1 x 6
         	PARTE J
            		1 x 6
         	PARTE QRS
            		6 x (m_ancho/3-81)/1000


      	FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      	DESARMAR SOLO SI tra2>0 .AND. corte=0
         		3*(2+tra2) x m_ancho/3-81
         	PARTE I
            		1 x 6*tra2
         	PARTE J
            		1 x 6*tra2
         	PARTE QRS
            		6*tra2 x (m_ancho/3-81)/1000
  	FIN DESARME


      /* Parantes laterales */
         DESARMAR SOLO SI marco=1
      		PERFIL 903
         FIN DESARME
         DESARMAR SOLO SI marco=2 .AND. corte=0
            PERFIL 7145
         FIN DESARME
         DESARMAR SOLO SI marco=2 .AND. corte=1
            PERFIL 7284
         FIN DESARME
       		2 x m_alto-66

      /* Parantes Centrales */
         DESARMAR SOLO SI marco=1
            PERFIL 904
         FIN DESARME
         DESARMAR SOLO SI marco=2 .AND. corte=0
            PERFIL 7146
         FIN DESARME
         DESARMAR SOLO SI marco=2 .AND. corte=1
            PERFIL 7284
         FIN DESARME
          		4 x m_alto-66

      	DESARMAR SOLO SI mosquitero!=0

         /* Horizontales */
         	PERFIL 905
            	CORTES A 45:
               		2 x m_ancho/3-25+10
            	CORTES A RECTO:
         	DESARMAR SOLO SI tramosq>0
            		PERFIL 90
               			tramosq x m_ancho/3-89.5+10
            		PARTE I
               			tramosq x 4
            		PARTE N
               			tramosq*2 x (m_ancho/2-108.5)/1000
            		M.OBRA 0.10*tramosq

         	FIN DESARME

         /* Verticales */
         		PERFIL 905
            		CORTES A 45:
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
        		M.OBRA   0.28

        	TELA
            		1 de m_ancho/3 x m_alto-73

      	FIN DESARME       /*  Mosquitero */

       /* Si tiene gcomun no tiene gbarrios y viceversa */

      /* Guia Comun y tapacinta para 2,3,4 hojas */
	DESARMAR SOLO SI tipo_gui=2

            	PERFIL 715
               		1 x m_alto
            	PERFIL 920
               		2 x m_alto+50

         	PARTE D
            		1 x 8 * INT(m_alto/1000)

         	M.OBRA 0.10

	FIN DESARME

      /* Guia Barrios y tapacintas */
	DESARMAR SOLO SI tipo_gui=3

           	PERFIL 715
             		1 x m_alto
           	PERFIL 21
             		2 x m_alto+50
        	PARTE D
            		1 x 8 * INT(m_alto/1000)
        	M.OBRA  0.10



      	FIN DESARME

      	DESARMAR SOLO SI dobletapa!=0
         	PERFIL 715
            		1 x m_alto

         	M.OBRA 0.05

      	FIN DESARME


      VIDRIOS

	DESARMAR SOLO SI tra1=0 .AND. tra2=0 .AND. corte=0
            	3 de m_ancho/3-63 x m_alto-148
       	FIN DESARME
	DESARMAR SOLO SI tra1=0 .AND. tra2=0 .AND. corte=1
            	3 de m_ancho/3-63 x m_alto-148
       	FIN DESARME

         /* tra1= posicion del travesanio */
        DESARMAR SOLO SI tra1>0
            		3 de m_ancho/3-63 x tra1-74-16.5
            	PANELES
            		3 de m_ancho/3-63 x m_alto-tra1-74-16.5
        FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
        DESARMAR SOLO SI tra2>0
            	3*(tra2+1) de m_ancho/3-63 x (m_alto-66-82-33*tra2)/(tra2+1)
        FIN DESARME

FIN DESARME
 /* Ventanas de Tres Hojas Guia B*/


DESARMAR SOLO SI n_hojas=3

      /* MECANISMO */

      PARTE A
         1 x 4
      PARTE D
         1 x 36
     PARTE ABD
            1 x 4

DESARMAR SOLO SI corte=0
      DESARMAR SOLO SI guia_3h=1
         PARTE 1088
            1 x 1
         PARTE ABB
            1 x 4
         PARTE ABC
            1 x 8
      FIN DESARME
      DESARMAR SOLO SI guia_3h=2
         PARTE 1088
            1 x 2
         PARTE ABB
            1 x 8
         PARTE ABC
            1 x 8
      FIN DESARME
         PARTE C1
	2 x n_hojas
FIN DESARME
DESARMAR SOLO SI corte=1
      PARTE H123
         1 x 3
      PARTE T127
         1 x 6
      PARTE R48
         2 x n_hojas
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

FIN DESARME

 /* Ventanas de Tres Hojas */



   /* Ventana de cuatro hojas*/

DESARMAR SOLO SI n_hojas=4

   DESARMAR SOLO SI tra1=0 .AND. tra2=0
         DESARMAR SOLO SI marco=1
            PERFIL 902
         	8 x m_ancho/4-84
         FIN DESARME
         DESARMAR SOLO SI marco=2 .AND. corte=0
            PERFIL 902
         	8 x m_ancho/4-84
         FIN DESARME

         DESARMAR SOLO SI marco=2 .AND. corte=1
          CORTES A 45:
            PERFIL 7284
         	8 x m_ancho/4
            PERFIL 7285
                4 x m_alto-66
         FIN DESARME
     FIN DESARME

       PERFIL 902

      /* tra1= POSICION del travesanios */
      	DESARMAR SOLO SI tra1>0
         		12 x m_ancho/4-84
         	PARTE I
            		1 x 8
         	PARTE J
            		1 x 8
         	PARTE QRS
            		8 x (m_ancho/4-84)/1000

      	FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      	DESARMAR SOLO SI tra2>0
         		4*(2+tra2) x m_ancho/4-84
         	PARTE I
            		1 x 8*tra2
         	PARTE J
            		1 x 8*tra2
         	PARTE QRS
            		8*tra2 x (m_ancho/4-84)/1000

      	FIN DESARME


      /* Parantes laterales */

         DESARMAR SOLO SI marco=1
      	    PERFIL 903
         FIN DESARME
         DESARMAR SOLO SI marco=2 .AND. corte=0
            PERFIL 7145
         FIN DESARME
         DESARMAR SOLO SI marco=2 .AND. corte=1
            PERFIL 7284
         FIN DESARME

         	4 x m_alto-66

      /* Parantes Centrales */

         DESARMAR SOLO SI marco=1
            PERFIL 904
         FIN DESARME
         DESARMAR SOLO SI marco=2 .AND. corte=0
            PERFIL 7146
         FIN DESARME
         DESARMAR SOLO SI marco=2 .AND. corte=1
            PERFIL 7284
         FIN DESARME

          	4 x m_alto-66

      /* Cierre Central para ventanas de 4 hojas */
      	PERFIL 19
         	1 x m_alto-66

      	DESARMAR SOLO SI mosquitero!=0

         /* Horizontales */
         	PERFIL 905
            	CORTES A 45:
               		2 x m_ancho/2-30+10
            	CORTES A RECTO:
         	DESARMAR SOLO SI tramosq>0
            		PERFIL 90
               			tramosq x m_ancho/2-84.5+10
            		PARTE I
               			tramosq x 4
            		PARTE N
               			tramosq*2 x (m_ancho/2-108.5)/1000

			M.OBRA 0.10*tramosq
         	FIN DESARME

         /* Verticales */
	         	PERFIL 905
            		CORTES A 45:
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
        		M.OBRA   0.28
        	TELA
            		1 de m_ancho/2 x m_alto-73
      	FIN DESARME       /*  Mosquitero */


       /* Si tiene gcomun no tiene gbarrios y viceversa */

      /* Guia Comun y tapacinta para 2,3,4 hojas */
	DESARMAR SOLO SI tipo_gui=2

            	PERFIL 715
               		1 x m_alto
            	PERFIL 920
               		2 x m_alto+50

         	PARTE D
            		1 x 8 * INT(m_alto/1000)

         	M.OBRA 0.10
      	FIN DESARME

      /* Guia Barrios y tapacintas */
	DESARMAR SOLO SI tipo_gui=3
        	PERFIL 715
             		1 x m_alto
           	PERFIL 21
             		2 x m_alto+50
        	PARTE D
            		1 x 8 * INT(m_alto/1000)
        	M.OBRA  0.10



      	FIN DESARME

      	DESARMAR SOLO SI dobletapa!=0
         	PERFIL 715
            		1 x m_alto

         	M.OBRA 0.05

      	FIN DESARME


      		VIDRIOS

        DESARMAR SOLO SI tra1=0 .AND. tra2=0
            	4 de m_ancho/4-66 x m_alto-148
        FIN DESARME

         /* tra1= posicion del travesanio */
       	DESARMAR SOLO SI tra1>0
            		4 de m_ancho/4-66 x tra1-74-16.5
            	PANELES
            		4 de m_ancho/4-66 x m_alto-tra1-74-16.5
        FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
        DESARMAR SOLO SI tra2>0
            	4*(tra2+1) de m_ancho/4-66 x (m_alto-66-82-33*tra2)/(tra2+1)
        FIN DESARME

      /* MECANISMO */

      	PARTE A
         	1 x 4
      	PARTE D
         	1 x 36
DESARMAR SOLO SI corte=0
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
         PARTE C1
FIN DESARME
DESARMAR SOLO SI corte=1
         PARTE H123
            1 x 3
         PARTE T127
            4 x 4
        PARTE R48
	2 x n_hojas
FIN DESARME
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

DESARMAR SOLO SI corte=1
PARTE E97
   4 x n_hojas
PARTE T127
   2 x n_hojas
FIN DESARME

m_cant_vid:=cant_vid()
m_2vid:=m2_vid()

PRODUCTO MOCORR






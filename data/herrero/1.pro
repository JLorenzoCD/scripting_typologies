/* Ventana Corrediza */
   VARIABLE perfil_2
   VARIABLE perfil_3

CALCULOS
   tra_n:=0
FIN CALCULOS
   PERFIL 1

      CORTES A 45:
          2 x m_ancho
          2 x m_alto

    CORTES A RECTO:

   /* Ventanas de 2 Hojas */
   DESARMAR SOLO SI n_hojas=2

      PERFIL 2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         4 x m_ancho/2-100
      FIN DESARME

      /* tra1= POSICION del travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         6 x m_ancho/2-100

         PARTE I
            1 x 4
         PARTE J
            1 x 4
         PARTE QRS
            4 x (m_ancho/2-100)/1000


      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0 .AND. tra1=0
         4+2*tra2 x m_ancho/2-100

         PARTE I
            1 x 4*tra2
         PARTE J
            1 x 4*tra2
         PARTE QRS
            4*tra2 x (m_ancho/2-100)/1000


      FIN DESARME


      /* Parantes laterales */
      PERFIL 3
         2 x m_alto-66

      /* Parantes Centrales */
      PERFIL 4
          2 x m_alto-66
MOSQUITERO:
      DESARMAR SOLO SI mosquitero!=0

         /* Horizontales */
         PERFIL 5
            CORTES A 45:
            2 x m_ancho/2-15
            CORTES A RECTO:
         DESARMAR SOLO SI tramosq>0
            PERFIL 90
               tramosq x  m_ancho/2-15-65
            PARTE I
               tramosq x 4
            PARTE N
               tramosq*2 x (m_ancho/2-15-65)/1000
            M.OBRA 0.25*tramosq
         FIN DESARME
         /* Verticales */
         PERFIL 5
            CORTES A 45:
            2 x m_alto-72
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
           2 x (m_ancho/2-15)/1000
           2 x (m_alto-72)/1000
        PARTE O
           1 x (m_alto-72)/1000
        M.OBRA 0.28

         TELA
            1 de m_ancho/2 x m_alto-73

      FIN DESARME       /*  Mosquitero */
FIN MOSQUITERO:

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

         M.OBRA 0.10
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
         DESARMAR SOLO SI tra1>0 .AND. tra2=0
            2 de m_ancho/2-100+18 x tra1-33-41-16.5
            PANELES
            2 de m_ancho/2-100+18 x m_alto-tra1-33-41-16.5
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra1=0 .AND. tra2>0
            2*(tra2+1) de m_ancho/2-100+18 x (m_alto-66-82-33*tra2)/(tra2+1)
         FIN DESARME

      /* MECANISMO */

      PARTE A
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
/*    CON HOJA CENTRAL Y LATERAL EN LA MISMA GUIA */

DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=1

      PERFIL 2

        DESARMAR SOLO SI tra1=0 .AND. tra2=0
         6 x m_ancho/3-97
        FIN DESARME

      /* tra1= POSICION del travesanios */
        DESARMAR SOLO SI tra1>0 .AND. tra2=0
         9 x m_ancho/3-97
         PARTE I
            1 x 6
         PARTE J
            1 x 6
         PARTE QRS
            6 x (m_ancho/3-97)/1000


        FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
        DESARMAR SOLO SI tra2>0 .AND. tra1=0
         3*(2+tra2) x m_ancho/3-97
         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-97)/1000

        FIN DESARME


      /* Parantes laterales */
      PERFIL 3
         4 x m_alto-66

      /* Parantes Centrales */
      PERFIL 4
          2 x m_alto-66

      PERFIL 19
         1 x m_alto-66

MOSQUITERO:
        DESARMAR SOLO SI mosquitero!=0

         /* Horizontales */
         PERFIL 5
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
         PERFIL 5
            CORTES A 45:
               2 x m_alto-73
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
FIN MOSQUITERO:

       /* Si tiene gcomun no tiene gbarrios y viceversa */

      /* Guia Comun y tapacinta para 2,3,4 hojas */
        DESARMAR SOLO SI tipo_gui=2
            PERFIL 715
               1 x m_alto
            PERFIL 20
               2 x m_alto+50

         PARTE D
            1 x 8*m_alto/1000

         M.OBRA 0.10
        FIN DESARME

      /* Guia Barrios y tapacintas */
        DESARMAR SOLO SI tipo_gui=3
           PERFIL 715
             1 x m_alto
           PERFIL 21
             2 x m_alto+50
        PARTE D
            1 x 8*m_alto/1000
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

      PERFIL 2

        DESARMAR SOLO SI tra1=0 .AND. tra2=0
         6 x m_ancho/3-81
        FIN DESARME

      /* tra1= POSICION del travesanios */
        DESARMAR SOLO SI tra1>0
         9 x m_ancho/3-81
         PARTE I
            1 x 6
         PARTE J
            1 x 6
         PARTE QRS
            6 x (m_ancho/3-81)/1000


        FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
        DESARMAR SOLO SI tra2>0
         3*(2+tra2) x m_ancho/3-81
         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-81)/1000

        FIN DESARME


      /* Parantes laterales */
      PERFIL 3
         2 x m_alto-66

      /* Parantes Centrales */
      PERFIL 4
          4 x m_alto-66

MOSQUITERO:
        DESARMAR SOLO SI mosquitero!=0
         /* Horizontales */
         PERFIL 5
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
         PERFIL 5
            CORTES A 45:
               2 x m_alto-73
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
FIN MOSQUITERO:


       /* Si tiene gcomun no tiene gbarrios y viceversa */

      /* Guia Comun y tapacinta para 2,3,4 hojas */
        DESARMAR SOLO SI tipo_gui=2
            PERFIL 715
               1 x m_alto
            PERFIL 20
               2 x m_alto+50
            PARTE D
               1 x 8*m_alto/1000

         M.OBRA 0.10
        FIN DESARME

      /* Guia Barrios y tapacintas */
        DESARMAR SOLO SI tipo_gui=3
           PERFIL 715
             1 x m_alto
           PERFIL 21
             2 x m_alto+50
           PARTE D
             1 x 8*m_alto/1000
        M.OBRA  0.10
        FIN DESARME

        DESARMAR SOLO SI dobletapa!=0
         PERFIL 715
            1 x m_alto

         M.OBRA 0.05

        FIN DESARME

      VIDRIOS

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
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

FIN DESARME   /* Ventanas de Tres Hojas Guia B*/










DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=3

      PERFIL 2

        DESARMAR SOLO SI tra1=0 .AND. tra2=0
         2 x (m_ancho-243)/2
         4 x (m_ancho-243)/4
        FIN DESARME

      /* tra1= POSICION del travesanios */
        DESARMAR SOLO SI tra1>0
         3 x (m_ancho-243)/2
         6 x (m_ancho-243)/4

         PARTE I
            1 x 6
         PARTE J
            1 x 6
         PARTE QRS
            6 x (m_ancho/3-81)/1000


        FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
        DESARMAR SOLO SI tra2>0
         2+tra2 x (m_ancho-243)/2
         2*(2+tra2) x (m_ancho-243)/4
         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-81)/1000

        FIN DESARME


      /* Parantes laterales */
      PERFIL 3
         2 x m_alto-66

      /* Parantes Centrales */
      PERFIL 4
          4 x m_alto-66

MOSQUITERO:
        DESARMAR SOLO SI mosquitero!=0
         /* Horizontales */
         PERFIL 5
            CORTES A 45:
              4 x (m_ancho-243)/4 + 75
            CORTES A RECTO:
                DESARMAR SOLO SI tramosq>0
            PERFIL 90
               tramosq x (m_ancho-243/4)+75-63
            PARTE I
               tramosq x 8
            PARTE N
               tramosq*4 x ((m_ancho-243)/4+75)/1000
            M.OBRA 0.10*tramosq
                FIN DESARME

         /* Verticales */
         PERFIL 5
            CORTES A 45:
               4 x m_alto-73
            CORTES A RECTO:

        /* Partes */
        PARTE C3
           1 x 4
        PARTE B
           1 x 8
        PARTE D
           1 x 32
        PARTE P
           1 x 4
        PARTE N
           4 x ((m_ancho-243)/4+75)/1000
           4 x (m_alto-73)/1000
        PARTE O
           4 x (m_alto-73)/1000
        M.OBRA   0.28

        TELA
            2 de (m_ancho-243)/4+75 x m_alto-73

        FIN DESARME       /*  Mosquitero */
FIN MOSQUITERO:




       /* Si tiene gcomun no tiene gbarrios y viceversa */

      /* Guia Comun y tapacinta para 2,3,4 hojas */
        DESARMAR SOLO SI tipo_gui=2
            PERFIL 715
               1 x m_alto
            PERFIL 20
               2 x m_alto+50
            PARTE D
               1 x 8*m_alto/1000

         M.OBRA 0.10
        FIN DESARME

      /* Guia Barrios y tapacintas */
        DESARMAR SOLO SI tipo_gui=3
           PERFIL 715
             1 x m_alto
           PERFIL 21
             2 x m_alto+50
           PARTE D
            1 x 8*m_alto/1000
        M.OBRA  0.10
        FIN DESARME

        DESARMAR SOLO SI dobletapa!=0
         PERFIL 715
            1 x m_alto

         M.OBRA 0.05

        FIN DESARME

      VIDRIOS

        DESARMAR SOLO SI tra1=0 .AND. tra2=0
            1 de (m_ancho-243)/2+18 x m_alto-148
            2 de (m_ancho-243)/4+18 x m_alto-148
        FIN DESARME

         /* tra1= posicion del travesanio */
        DESARMAR SOLO SI tra1>0
            1 de (m_ancho-243/2)+18 x tra1-74-16.5
            2 de (m_ancho-243/4)+18 x tra1-74-16.5


            PANELES
            1 de (m_ancho-243/2)+18 x m_alto-tra1-74-16.5
            2 de (m_ancho-243/4)+18 x m_alto-tra1-74-16.5

        FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
        DESARMAR SOLO SI tra2>0

         2+tra2 x (m_ancho-243)/2+18 x (m_alto-66-82-33*tra2)/(tra2+1)
         2*(2+tra2) x (m_ancho-243)/4+18 x (m_alto-66-82-33*tra2)/(tra2+1)

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
      DESARMAR SOLO SI guia_3h=2 .OR. guia_3h=3
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



   /* Ventana de cuatro hojas*/

   DESARMAR SOLO SI n_hojas=4

      PERFIL 2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         8 x m_ancho/4-84
      FIN DESARME

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
      PERFIL 3
         4 x m_alto-66

      /* Parantes Centrales */
      PERFIL 4
          4 x m_alto-66

      /* Cierre Central para ventanas de 4 hojas */
      PERFIL 19
         1 x m_alto-66

MOSQUITERO:
      DESARMAR SOLO SI mosquitero!=0
         SEPARACION
         /* Horizontales */
         PERFIL 5
            CORTES A 45:
               4 x m_ancho/4-10
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
         PERFIL 5
            CORTES A 45:
               4 x m_alto-73
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
            2 de m_ancho/4 x m_alto-73
      FIN DESARME       /*  Mosquitero */
FIN MOSQUITERO:



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

         M.OBRA 0.10
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
        M.OBRA  0.10



      FIN DESARME

      DESARMAR SOLO SI dobletapa!=0
         PERFIL 715
            1 x m_alto

         M.OBRA 0.05

      FIN DESARME


      VIDRIOS

         SEPARACION

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










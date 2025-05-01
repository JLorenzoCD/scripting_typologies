/* MODIFICADO POR LORENZO*/
/* Puerta Corrediza */

PRODUCTO PMMODE

CORTES A RECTO:
   /* MARCO */
   PERFIL C6200
      2 x m_ancho - 42
   PERFIL C6201
      2 x m_alto

   /* Puerta de 2 Hojas */
DESARMAR SOLO SI n_hojas=2

        DESARMAR SOLO SI m_dvh=0
	      PERFIL C6204
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6249
	FIN DESARME

      2 x m_ancho/2 - 24

	DESARMAR SOLO SI m_dvh=0
	      PERFIL C6209
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6252
	FIN DESARME

      2 x m_ancho/2 - 24

      /* tra1 = posicion al eje de la primera traviesa */
        DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
                DESARMAR SOLO SI m_dvh=0
	      PERFIL C6239
                FIN DESARME
                DESARMAR SOLO SI m_dvh=1
	      PERFIL C6253
                FIN DESARME
         2 x m_ancho/2-67
         PARTE I
            1 x 4
         PARTE T95
            1 x 4
         PARTE B60
            4 x (m_ancho/2-67)/1000

        FIN DESARME

      /* tra_n= posicion al eje de la segunda traviesa */
        DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
                DESARMAR SOLO SI m_dvh=0
	      PERFIL C6239
                FIN DESARME
                DESARMAR SOLO SI m_dvh=1
	      PERFIL C6253
                FIN DESARME
         4 x m_ancho/2-67
         
         PARTE I
            1 x 8
         PARTE T95
            1 x 8
         PARTE B60
            8 x (m_ancho/2-67)/1000
        FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
        DESARMAR SOLO SI tra2>0 .AND. tra1=0 .AND. tra_n=0
                DESARMAR SOLO SI m_dvh=0
	      PERFIL C6239
                FIN DESARME
                DESARMAR SOLO SI m_dvh=1
	      PERFIL C6253
                FIN DESARME

         2*tra2 x m_ancho/2-67
         PARTE I
            1 x 4*tra2
         PARTE T95
            1 x 4*tra2
         PARTE B60
           4 x tra2*(m_ancho/2-67)/1000
        FIN DESARME

	DESARMAR SOLO SI m_dvh=0
	      PERFIL C6207
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6250
	FIN DESARME

      1 x m_alto - 79

	DESARMAR SOLO SI m_dvh=0
	      PERFIL C6208
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6251
	FIN DESARME

      1 x m_alto - 79

	DESARMAR SOLO SI m_dvh=0
	      PERFIL C6203
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6248
	FIN DESARME

      2 x m_alto - 79

MOSQUITERO:
        DESARMAR SOLO SI mosquitero!=0
        
         /* Horizontales */
            PERFIL C6255
            CORTES A 45:
            2 x m_ancho/2-11
            CORTES A RECTO:
                DESARMAR SOLO SI tramosq>0
            PERFIL C6256
               tramosq x  m_ancho/2-11-63
            PARTE I
               tramosq x 4
            PARTE N
               tramosq*2 x (m_ancho/2-11-63)/1000
                FIN DESARME
         /* Verticales */
            PERFIL C6255
            CORTES A 45:
            2 x m_alto-87
            CORTES A RECTO:
            PERFIL C6228
            2 x m_alto-100
            PARTE T21
            2 x 2+INT((m_alto-100)/250)
            PARTE C3
            1 x 2
            PARTE E73
            1 x 4
            PARTE D
            1 x 16
            PARTE R43
            1 x 2
            PARTE N
            2 x (m_ancho/2-11)/1000
            2 x (m_alto-87)/1000
            PARTE B16
            2 x (m_alto-87)/1000

         TELA
            1 de m_ancho/2 x m_alto-87
        
        FIN DESARME
     /*  Mosquitero */
FIN MOSQUITERO:


      VIDRIOS
        
        DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2=0
            2 de m_ancho/2-24-72+18 x m_alto-224
        FIN DESARME

         /* tra1= posicion del travesanio */
        DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
      VIDRIOS
            2 de m_ancho/2-24-72+18 x tra1-27-150+18
      PANELES
            2 de m_ancho/2-24-72+18 x m_alto-tra1-27-94+18
        FIN DESARME

         /* tra_n= posicion del travesanio */
        DESARMAR SOLO SI tra1> .AND. tra_n>0 .AND. tra2=0
      VIDRIOS
            2 de m_ancho/2-24-72+18 x tra1-27-150+18
      PANELES
            2 de m_ancho/2-24-72+18 x tra_n-tra1-37
      OTROS INTERIORES
            2 de m_ancho/2-24-72+18 x m_alto-tra_n-27-94+18
        FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
        DESARMAR SOLO SI tra2>0 .AND. tra1=0 .AND. tra_n=0
            2*(tra2+1) de m_ancho/2-24-72+18 x (m_alto-141-85+18*tra2-54*tra2)/(tra2+1)
        FIN DESARME

      /* MECANISMO */
      
      SEGUN rueda PARTE R39,R40,R41,R42
         1 x 4
           
      SEGUN cierre PARTE H56,H60,H102_MODENA
             1 x 2

      PARTE I
         1 x 8
      PARTE I
         1 x 12
      PARTE T90
         1 x 4
      PARTE T89
         1 x 4
      PARTE T93
         1 x 2
      PARTE C14
         8 x (m_ancho/2-27)/1000
         6 x (m_alto-79)/1000
      PARTE B60
         4 x (m_ancho/2-27)/1000
         4 x (m_alto-160)/1000
      PARTE T69
         1 x 2
        DESARMAR SOLO SI taco_reg=1
      PARTE T88
         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
	FIN DESARME
      PARTE I
         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
      PARTE T91
         1 x 8
      PARTE T92
         1 x 4
      PARTE T130
         1 x 2+INT((m_ancho-200)/500)
      PARTE T95
         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)

/*        DESARMAR SOLO SI m_ancho<1000
/*      M.OBRA   1.5
/*        FIN DESARME
/*        DESARMAR SOLO SI m_ancho>=1000 .AND. m_ancho<1500
/*      M.OBRA   2
/*        FIN DESARME
/*        DESARMAR SOLO SI m_ancho>=1500
/*      M.OBRA   2.5
/*        FIN DESARME
     
FIN DESARME   /* puerta de Dos Hojas */
   /* puerta de 3 Hojas */
   /*    CON HOJA CENTRAL Y LATERAL EN LA MISMA GUIA */
DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=1

        DESARMAR SOLO SI m_dvh=0
	      PERFIL C6204
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6249
	FIN DESARME

      3 x m_ancho/3 - 29

	DESARMAR SOLO SI m_dvh=0
	      PERFIL C6209
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6252
	FIN DESARME

      3 x m_alto/3-29

      PERFIL C6246
      1 x m_alto-79

      /* tra1 = posicion al eje de la primera traviesa */
        DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
                DESARMAR SOLO SI m_dvh=0
	      PERFIL C6239
                FIN DESARME
                DESARMAR SOLO SI m_dvh=1
	      PERFIL C6253
                FIN DESARME

         3 x m_ancho/3-29-43
         PARTE I
            3 x 4
         PARTE T95
            3 x 4
         PARTE B60
           6 x (m_ancho/3-29-43)/1000
        FIN DESARME

    /* tra_n = posicion al eje de la segunda traviesa */
        DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
                DESARMAR SOLO SI m_dvh=0
	      PERFIL C6239
                FIN DESARME
                DESARMAR SOLO SI m_dvh=1
	      PERFIL C6253
                FIN DESARME

         6 x m_ancho/3-29
         PARTE I
            3 x 4
         PARTE T95
            3 x 4
         PARTE B60
          6 x (m_ancho/3-29)/1000
          6 x (m_alto/3-250)/1000

        FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
        DESARMAR SOLO SI tra2>0 .AND. tra1=0 .AND. tra_n=0
                DESARMAR SOLO SI m_dvh=0
	      PERFIL C6239
                FIN DESARME
                DESARMAR SOLO SI m_dvh=1
	      PERFIL C6253
                FIN DESARME

         3*tra2 x m_ancho/3-29
         PARTE I
            1 x 4*tra2
         PARTE T95
            1 x 4*tra2
         PARTE B60
           4 x tra2*(m_ancho/3-29-43)/1000
         
        FIN DESARME
	DESARMAR SOLO SI m_dvh=0
	      PERFIL C6207
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6250
	FIN DESARME

      1 x m_alto - 79

	DESARMAR SOLO SI m_dvh=0
	      PERFIL C6208
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6251
	FIN DESARME

      1 x m_alto - 79

	DESARMAR SOLO SI m_dvh=0
	      PERFIL C6203
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6248
	FIN DESARME

      4 x m_alto - 79


MOSQUITERO:
        DESARMAR SOLO SI mosquitero!=0
        
         /* Horizontales */
         PERFIL C6255
            CORTES A 45:
            2 x m_ancho/3-9
            CORTES A RECTO:
                DESARMAR SOLO SI tramosq>0
            PERFIL C6256
               tramosq x  m_ancho/3-11-63
            PARTE I
               tramosq x 4
            PARTE B16
               tramosq*2 x (m_ancho/3-11-63)/1000
                FIN DESARME
         /* Verticales */
         PERFIL C6255
         CORTES A 45:
            2 x m_alto-79
         CORTES A RECTO:
         PERFIL C6228
            2 x m_alto-100
         PARTE T21
            2 x 2+INT((m_alto-100)/250)
         PARTE E73
            1 x 4
         PARTE D
            1 x 16
         PARTE R43
            1 x 4
         PARTE B16
            2 x (m_alto-87)/1000
         TELA
            1 de m_ancho/3 x m_alto-87
        
        FIN DESARME
     /*  Mosquitero */
FIN MOSQUITERO:


      VIDRIOS
        
        DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2=0
            3 de m_ancho/3-29-54 x m_alto-227
        FIN DESARME

         /* tra1= posicion del primer travesanio */
        DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
            /* los de  abajo */
        VIDRIOS
            3 de m_ancho/3-29-54 x tra1-27-150+18
            /* los de  arriba */
        PANELES
            3 de m_ancho/3-29-54 x m_alto-tra1-27-94+18
            
    PARTE B60
        6 x (m_ancho/3-29-54)/1000
	PARTE I
	    2 x 3	
	PARTE T95
	    2 x 3
        FIN DESARME

         /* tra_n= posicion del segundo travesanio */
        DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
            /* los de  abajo */
          VIDRIOS
            3 de m_ancho/3-29-54 x tra1-27-150+18
            /* los de medio */
          PANELES
            3 de m_ancho/3-29-54 x tra_n-tra1-37
            /* los de  arriba */
          OTROS INTERIORES
            3 de m_ancho/3-29-54 x m_alto-tra_n-27-94+18
    PARTE B60
        12 x (m_ancho/3-29-54)/1000
       PARTE I
	    12 x 3	
	PARTE T95
	    12 x 3

        FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
        DESARMAR SOLO SI tra2>0 .AND. tra1=0 .AND. tra_n=0
		VIDRIOS
            3*(tra2+1) de m_ancho/3-29-54 x (m_alto-141-85+18*tra2-39*tra2)/(tra2+1)
       PARTE B60
	    tra2 x (m_ancho/3-29-54)/1000
	PARTE I
	    6 x tra2
	PARTE T95
	    6 x tra2	

        FIN DESARME

      /* MECANISMO */
      SEGUN rueda PARTE R39,R40,R41,R42
         1 x 6
           
      SEGUN cierre PARTE H56,H60,H102_MODENA
             1 x 3
      PARTE I
         1 x 8
      PARTE I
         6 x 3
      PARTE T90
         1 x 4
      PARTE T89
         1 x 8
      PARTE T93
         1 x 4
      PARTE C14
         12 x (m_ancho/3-29)/1000
         8 x (m_alto-79)/1000
      PARTE B60
        6 x (m_ancho/3-29-52)/1000
        6 x (m_alto-176)/1000
         
      PARTE T69
         1 x 2
        DESARMAR SOLO SI taco_reg=1
      PARTE T88
         1 x 2+INT(2*((m_alto-200)/500)+2*((m_ancho-200)/500))
        FIN DESARME
      PARTE I
         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
      PARTE T91
         1 x 8
      PARTE T92
         1 x 4
      PARTE T130
         1 x 2
      PARTE T95
         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)

/*        DESARMAR SOLO SI m_ancho<1000
/*      M.OBRA   1.5
/*        FIN DESARME
/*        DESARMAR SOLO SI m_ancho>=1000 .AND. m_ancho<1500
/*      M.OBRA   2
/*        FIN DESARME
/*        DESARMAR SOLO SI m_ancho>=1500
/*      M.OBRA   2.5
/*        FIN DESARME
     
FIN DESARME
  /* puerta de 3 Hojas  hoja central y lateral misma guia */

   /* puerta de 3 Hojas */
   /*    CON HOJAS LATERALES EN LA MISMA GUIA */
DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=2

        DESARMAR SOLO SI m_dvh=0
	      PERFIL C6204
	FIN DESARME

	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6249
	FIN DESARME

      3 x m_ancho/3 - 8

	DESARMAR SOLO SI m_dvh=0
	      PERFIL C6209
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6252
	FIN DESARME

      3 x m_ancho/3 - 8

      /* tra1 = posicion al eje de la unica traviesa */
        DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0

                DESARMAR SOLO SI m_dvh=0
	      PERFIL C6239
                FIN DESARME
                DESARMAR SOLO SI m_dvh=1
	      PERFIL C6253
                FIN DESARME

         3 x m_ancho/3-8-43
         PARTE I
            3 x 4
         PARTE T95
            3 x 4
         PARTE B60
            6 x (m_ancho/3-8)/1000
        FIN DESARME


  /* tra_n = posicion al eje de la segunda traviesa */
        DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0

                DESARMAR SOLO SI m_dvh=0
	      PERFIL C6239
                FIN DESARME
                DESARMAR SOLO SI m_dvh=1
	      PERFIL C6253
                FIN DESARME

         6 x m_ancho/3-8-43
         PARTE I
            3 x 4
         PARTE T95
            3 x 4
         PARTE B60
            12 x (m_ancho/3-8)/1000
        FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
        DESARMAR SOLO SI tra2>0 .AND. tra1=0 .AND. tra_n=0
                DESARMAR SOLO SI m_dvh=0
	      PERFIL C6239
                FIN DESARME
                DESARMAR SOLO SI m_dvh=1
	      PERFIL C6253
                FIN DESARME

         3*tra2 x m_ancho/3-8-43
         PARTE I
            1 x 4*tra2
         PARTE T95
            1 x 4*tra2
         PARTE B60
            4 x tra2*m_ancho/3/1000
        FIN DESARME

	DESARMAR SOLO SI m_dvh=0
	      PERFIL C6207
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6250
	FIN DESARME

      2 x m_alto - 79

	DESARMAR SOLO SI m_dvh=0
	      PERFIL C6208
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6251
	FIN DESARME

      2 x m_alto - 79


	DESARMAR SOLO SI m_dvh=0
         PERFIL C6203
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
         PERFIL C6248
	FIN DESARME

      2 x m_alto - 79


MOSQUITERO:
        DESARMAR SOLO SI mosquitero!=0
        
         /* Horizontales */
         PERFIL C6255
            CORTES A 45:
            2 x m_ancho/3+12
            CORTES A RECTO:
                DESARMAR SOLO SI tramosq>0
            PERFIL C6256
               tramosq x  m_ancho/3-3-44
            PARTE I
               tramosq x 4
            PARTE B9
               tramosq*2 x (m_ancho/3-3+20)/1000
                FIN DESARME
         /* Verticales */
         PERFIL C6255
         CORTES A 45:
            2 x m_alto-79
         CORTES A RECTO:
         PERFIL C6228
            2 x m_alto-100
         PARTE T21
            2 x 2+INT((m_alto-100)/250)
         PARTE E73
            1 x 4
         PARTE D
            1 x 16
         PARTE R43
            1 x 4
         PARTE B16
            2 x (m_alto-87)/1000
         TELA
            1 de m_ancho/3 x m_alto-87
        
        FIN DESARME
     /*  Mosquitero */
FIN MOSQUITERO:


     VIDRIOS
         
        DESARMAR SOLO SI tra1=0 .AND. tra2=0 .AND. tra_n=0
            3 de m_ancho/3-8-46 x m_alto-227
        FIN DESARME

   /* tra1= posicion del travesanio */
        DESARMAR SOLO SI tra1>0 .AND. tra2=0 .AND. tra_n=0
            /* los de  abajo */
        VIDRIOS
            3 de m_ancho/3-8-46 x tra1-27-150+18
            /* los de  arriba */
        PANELES
            3 de m_ancho/3-8-46 x m_alto-tra1-27-94+18
        FIN DESARME

   /* tra_n= posicion del travesanio */
        DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND.tra2=0
            /* los de  abajo */
        VIDRIOS
            3 de m_ancho/3-8-54 x tra1-27-150+18
            /* los del medio */
        PANELES
            3 de m_ancho/3-8-54 x tra_n-tra1-37
            /* los de  arriba */
        OTROS INTERIORES
            3 de m_ancho/3-8-54 x m_alto-tra_n-27-94+18
        FIN DESARME

    /* tra2= cantidad de traviesas, se suponen centradas */
        DESARMAR SOLO SI tra2>0 .AND. tra1=0 .AND. tra_n=0
            3*(tra2+1) de m_ancho/3-8-46 x (m_alto-141-85+18*tra2-54*tra2)/(tra2+1)
        FIN DESARME


      /* MECANISMO */
      SEGUN rueda PARTE R39,R40,R41,R42
         1 x 6
           
      SEGUN cierre PARTE H56,H60,H102_MODENA
             1 x 2
      PARTE I
         1 x 8
      PARTE I
         3 x 6
      PARTE T90
         1 x 8
      PARTE T89
         1 x 4
      PARTE T93
         1 x 4
      PARTE C14
         12 x (m_ancho/3-8)/1000
         8 x (m_alto-79)/1000
      PARTE B60
         6 x (m_ancho/3-29-52)/1000
         6 x (m_alto-176)/1000
      PARTE T69
         1 x 2
        DESARMAR SOLO SI taco_reg=1
      PARTE T88
         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)

        FIN DESARME
      PARTE I
         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
      PARTE T91
         1 x 8
      PARTE T92
         1 x 4
      PARTE T130
         1 x 2
      PARTE I
         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)

/*        DESARMAR SOLO SI m_ancho<1000
/*      M.OBRA   1.5
/*        FIN DESARME
/*        DESARMAR SOLO SI m_ancho>=1000 .AND. m_ancho<1500
/*      M.OBRA   2
/*        FIN DESARME
/*        DESARMAR SOLO SI m_ancho>=1500
/*      M.OBRA   2.5
/*        FIN DESARME
     
FIN DESARME  
 /* puerta de 3 Hojas */









   /*    CON HOJAS LATERALES EN LA MISMA GUIA A 1/4 */
DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=3

        DESARMAR SOLO SI m_dvh=0
	      PERFIL C6204
	FIN DESARME

	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6249
	FIN DESARME

      1 x (m_ancho-9)/2
      2 x (m_ancho-9)/4

	DESARMAR SOLO SI m_dvh=0
	      PERFIL C6209
	FIN DESARME

	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6252
	FIN DESARME

      1 x (m_ancho-9)/2
      2 x (m_ancho-9)/4

      /* tra1 = posicion al eje de la unica traviesa */
        DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0

                DESARMAR SOLO SI m_dvh=0
	      PERFIL C6239
                FIN DESARME

                DESARMAR SOLO SI m_dvh=1
	      PERFIL C6253
                FIN DESARME

      1 x (m_ancho-9)/2-43
      2 x (m_ancho-9)/4-43

         
         PARTE I
            3 x 4
         PARTE T95
            3 x 4
         PARTE B60
            6 x (m_ancho/3-3)/1000
        FIN DESARME


  /* tra_n = posicion al eje de la segunda traviesa */
        DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0

                DESARMAR SOLO SI m_dvh=0
	      PERFIL C6239
                FIN DESARME

                DESARMAR SOLO SI m_dvh=1
	      PERFIL C6253
                FIN DESARME

      2 x (m_ancho-9)/2-43
      4 x (m_ancho-9)/4-43
         PARTE I
            3 x 4
         PARTE T95
            3 x 4
         PARTE B60
            12 x (m_ancho/3-3)/1000
        FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
        DESARMAR SOLO SI tra2>0 .AND. tra1=0 .AND. tra_n=0
                DESARMAR SOLO SI m_dvh=0
	      PERFIL C6239
                FIN DESARME
                DESARMAR SOLO SI m_dvh=1
	      PERFIL C6253
                FIN DESARME

         tra2 x (m_ancho-9)/2-43
         2*tra2 x (m_ancho-9)/4-43
         PARTE I
            1 x 4*tra2
         PARTE T95
            1 x 4*tra2
         PARTE B60
            4 x tra2*m_ancho/3/1000
        FIN DESARME

	DESARMAR SOLO SI m_dvh=0
	      PERFIL C6207
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6250
	FIN DESARME
      	2 x m_alto - 79

	DESARMAR SOLO SI m_dvh=0
	      PERFIL C6208
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6251
	FIN DESARME
      2 x m_alto - 79

	DESARMAR SOLO SI m_dvh=0
         PERFIL C6203
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
         PERFIL C6248
	FIN DESARME
      2 x m_alto - 79


MOSQUITERO:
        DESARMAR SOLO SI mosquitero!=0
        
         /* Horizontales */
         PERFIL C6255
            CORTES A 45:
            4 x (m_ancho+36)/4
            CORTES A RECTO:
                DESARMAR SOLO SI tramosq>0
            PERFIL C6256
               2*tramosq x  (m_ancho-9)/4-44
            PARTE I
               tramosq x 4
            PARTE B9
               tramosq*2 x (m_ancho/3-3+20)/1000
                FIN DESARME
         /* Verticales */
         PERFIL C6255
         CORTES A 45:
            4 x m_alto-79
         CORTES A RECTO:
         PERFIL C6228
            2 x m_alto-100
         PARTE T21
            2 x 2+INT((m_alto-100)/250)
         PARTE E73
            2 x 4
         PARTE D
            2 x 16
         PARTE R43
            2 x 4
         PARTE B16
            2 x (m_alto-87)/1000
         TELA
            2 de (m_ancho-9)/4+100 x m_alto-87
        
        FIN DESARME
     /*  Mosquitero */
FIN MOSQUITERO:


     VIDRIOS
         
        DESARMAR SOLO SI tra1=0 .AND. tra2=0 .AND. tra_n=0
            1 de (m_ancho-9)/2-46 x m_alto-227
            2 de (m_ancho-9)/4-46 x m_alto-227
        FIN DESARME

   /* tra1= posicion del travesanio */
        DESARMAR SOLO SI tra1>0 .AND. tra2=0 .AND. tra_n=0
            /* los de  abajo */
        VIDRIOS
            1 de (m_ancho-9)/2-46 x tra1-27-150+18
            2 de (m_ancho-9)/4-46 x tra1-27-150+18
            /* los de  arriba */
        PANELES
            1 de (m_ancho-9)/2-46 x m_alto-tra1-27-94+18
            2 de (m_ancho-9)/4-46 x m_alto-tra1-27-94+18
        FIN DESARME

   /* tra_n= posicion del travesanio */
        DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND.tra2=0
            /* los de  abajo */
        VIDRIOS
            1 de (m_ancho-9)/2-54 x tra1-27-150+18
            2 de (m_ancho-9)/4-54 x tra1-27-150+18
            /* los del medio */
        PANELES
            1 de (m_ancho-9)/2-54 x tra_n-tra1-37
            2 de (m_ancho-9)/4-54 x tra_n-tra1-37
            /* los de  arriba */
        OTROS INTERIORES
            1 de (m_ancho-9)/2-54 x m_alto-tra_n-27-94+18
            2 de (m_ancho-9)/4-54 x m_alto-tra_n-27-94+18
        FIN DESARME

    /* tra2= cantidad de traviesas, se suponen centradas */
        DESARMAR SOLO SI tra2>0 .AND. tra1=0 .AND. tra_n=0
            tra2+1 de (m_ancho-9)/2-46 x (m_alto-141-85+18*tra2-54*tra2)/(tra2+1)
            2*(tra2+1) de (m_ancho-9)/4-46 x (m_alto-141-85+18*tra2-54*tra2)/(tra2+1)
        FIN DESARME

      /* MECANISMO */
      SEGUN rueda PARTE R39,R40,R41,R42
         1 x 6
           
      SEGUN cierre PARTE H56,H60,H102_MODENA
             1 x 2
      PARTE I
         1 x 8
      PARTE I
         3 x 6
      PARTE T90
         1 x 8
      PARTE T89
         1 x 4
      PARTE T93
         1 x 4
      PARTE C14
         12 x (m_ancho/3-8)/1000
         8 x (m_alto-79)/1000
      PARTE B60
         6 x (m_ancho/3-29-52)/1000
         6 x (m_alto-176)/1000
      PARTE T69
         1 x 2
        DESARMAR SOLO SI taco_reg=1
      PARTE T88

         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)

        FIN DESARME
      PARTE I
         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
      PARTE T91
         1 x 8
      PARTE T92
         1 x 4
      PARTE T130
         1 x 2
      PARTE T95
         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)

/*        DESARMAR SOLO SI m_ancho<1000
/*      M.OBRA   1.5
/*        FIN DESARME
/*        DESARMAR SOLO SI m_ancho>=1000 .AND. m_ancho<1500
/*      M.OBRA   2
/*        FIN DESARME
/*        DESARMAR SOLO SI m_ancho>=1500
/*      M.OBRA   2.5
/*        FIN DESARME
     
FIN DESARME  
 /* puerta de 3 Hojas */

 /* puerta de 4 Hojas */

DESARMAR SOLO SI n_hojas=4
      CORTES A RECTO:
		
        DESARMAR SOLO SI m_dvh=0
	      PERFIL C6204
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
          PERFIL C6249
	FIN DESARME

        4 x m_ancho/4 - 12

	DESARMAR SOLO SI m_dvh=0
	      PERFIL C6209
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6252
	FIN DESARME

      4 x m_ancho/4 - 12

      /* tra1 = posicion al eje de la primera traviesa */
        DESARMAR SOLO SI tra1>0 .AND. tra2=0 .AND.tra_n=0

                DESARMAR SOLO SI m_dvh=0
	      PERFIL C6239
                FIN DESARME

                DESARMAR SOLO SI m_dvh=1
	      PERFIL C6253
                FIN DESARME
         4 x m_ancho/4 - 12-43
         PARTE I
         1 x 8
         PARTE T95
            1 x 8
         PARTE B60
            8 x (m_ancho/4 - 12)/1000
        FIN DESARME

     /* tra_n = posicion al eje de la segunda traviesa */
        DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0

                DESARMAR SOLO SI m_dvh=0
	      PERFIL C6239
                FIN DESARME
                DESARMAR SOLO SI m_dvh=1
	      PERFIL C6253
                FIN DESARME

         8 x m_ancho/4 - 12-43

         PARTE I
            1 x 16

         PARTE T95
            1 x 16

         PARTE B60
            8 x (m_ancho/4 - 12)/1000
        FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
        DESARMAR SOLO SI tra2>0 .AND. tra1=0 .AND. tra_n=0

                DESARMAR SOLO SI m_dvh=0
	      PERFIL C6239
                FIN DESARME

                DESARMAR SOLO SI m_dvh=1
	      PERFIL C6253
                FIN DESARME

         4*tra2 x m_ancho/4 - 12-43

         PARTE I
            1 x 4*(2*tra2)

         PARTE T95
            1 x 4*(2*tra2)

         PARTE B60
            8*tra2 x (m_ancho/4 - 12)/1000

        FIN DESARME

	/*hoja parante central */

	DESARMAR SOLO SI m_dvh=0
	      PERFIL C6208
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6251
	FIN DESARME

         2 x m_alto - 79


	DESARMAR SOLO SI m_dvh=0
	      PERFIL C6207
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6250
	FIN DESARME

         2 x m_alto - 79

	DESARMAR SOLO SI m_dvh=0
	      PERFIL C6203
	FIN DESARME
	DESARMAR SOLO SI m_dvh=1
	      PERFIL C6248
	FIN DESARME

      4 x m_alto - 79

      PERFIL C6246
      1 x m_alto - 79

    
MOSQUITERO:
        DESARMAR SOLO SI mosquitero!=0
        
         /* Horizontales */
         PERFIL C6255
            CORTES A 45:
            4 x m_ancho/4+14
            CORTES A RECTO:
                DESARMAR SOLO SI tramosq>0
            PERFIL C6256
               2*tramosq x  m_ancho/4-46
            PARTE I
               2*tramosq x 4
            PARTE B9
               tramosq*2*2 x (m_ancho/4-46)/1000
                FIN DESARME

         /* Verticales */
         PERFIL C6255
         CORTES A 45:
            4 x m_alto-89
         CORTES A RECTO:
         PERFIL C6228
            2 x m_alto-100
         PARTE T21
            2 x 2+INT((m_alto-100)/250)
         PARTE E73
            1 x 8
         PARTE R43
            1 x 8
         PARTE B16
            2 x (m_alto-87)/1000
         TELA
            2 de m_ancho/4 x m_alto-87
        
        FIN DESARME
     /*  Mosquitero */
FIN MOSQUITERO:


      VIDRIOS
        
        DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2=0
            4 de m_ancho/4 - 12-72+18 x m_alto-227
        FIN DESARME

         /* tra1= posicion del primer travesanio */
        DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
      VIDRIOS
            4 de m_ancho/4 - 12-72+18 x tra1-27-150+18
      PANELES
            4 de m_ancho/4 - 12-72+18 x m_alto-tra1-27-94+18
        FIN DESARME

         /* tra_n= posicion del segundo travesanio */
        DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
       VIDRIOS
            4 de m_ancho/4 - 12-72+18 x tra1-27-150+18
       PANELES
            4 de m_ancho/4 - 12-72+18 x tra_n-tra1-37
       OTROS INTERIORES
            4 de m_ancho/4 - 12-72+18 x m_alto-tra_n-27-94+18
        FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
        DESARMAR SOLO SI tra2>0 .AND. tra1=0 .AND. tra_n=0
            4*(tra2+1) de m_ancho/4 - 12-72+18 x (m_alto-141-85+18*tra2-54*tra2)/(tra2+1)
        FIN DESARME

      /* MECANISMO */
      SEGUN rueda PARTE R39,R40,R41,R42
         1 x 8
         
      SEGUN cierre PARTE H56,H60,H102_MODENA
             1 x 4
      PARTE I
         1 x 24
      PARTE T90
         1 x 8
      PARTE T89
         1 x 8
      PARTE T93
         1 x 4
      PARTE C14
         16 x (m_ancho/4-6)/1000
         12 x (m_alto-79)/1000
      PARTE B60
         8 x (m_ancho/4-6)/1000
         8 x (m_alto-160)/1000
      PARTE T69
         1 x 2
        DESARMAR SOLO SI taco_reg=1
      PARTE T88
         1 x 2+INT((m_ancho-200)/500)+2
         2 x 2+INT((m_alto-200)/500)
        FIN DESARME
      PARTE I
         1 x 2+INT((m_ancho-200)/500)+2
         2 x 2+INT((m_alto-200)/500)
      PARTE T91
         1 x 8
      PARTE T92
         1 x 4
      PARTE T130
         1 x 4
      PARTE T95
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)

/*        DESARMAR SOLO SI m_ancho<1000
/*      M.OBRA   2.5
/*        FIN DESARME
/*        DESARMAR SOLO SI m_ancho>=1000 .AND. m_ancho<1500
/*      M.OBRA   3.3
/*        FIN DESARME
/*        DESARMAR SOLO SI m_ancho>=1500
/*      M.OBRA   4.15
/*        FIN DESARME
     
FIN DESARME 
  /* puerta de 4 Hojas */

        DESARMAR SOLO SI n_hojas=2
        FIN DESARME
        DESARMAR SOLO SI n_hojas=3
        FIN DESARME
        DESARMAR SOLO SI n_hojas=4
        FIN DESARME

   m_cant_vid:=cant_vid()
   m_2vid:=m2_vid()


PRODUCTO MACORR




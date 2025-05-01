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
      /* Parantes */

      PERFIL 176
         4 x m_alto-67

	/* PERFIL DE ACOPLE */
	CORTES A RECTO:
	PERFIL 175
	2 x m_alto-67


   /* Ventanas de 2 Hojas */
DESARMAR SOLO SI n_hojas=2

      PERFIL 176
          4 x m_ancho/2-12
        DESARMAR SOLO SI tra1=0 .AND. tra2=0

       SEGUN contravid PERFIL 177,179
         4 x m_ancho/2-37
         4 x m_alto-175
        FIN DESARME

      /* tra1= POSICION del travesanio */
        DESARMAR SOLO SI tra1>0 .AND. tra2=0
	CORTES A RECTO:
	PERFIL 178
         2 x m_ancho/2-12-84
        SEGUN contravid PERFIL 177,179
         8 x m_ancho/2-37
         4 x (tra1-10-121)/2
         4 x (m_alto-tra1-10-121)/2

         
         
        FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
        DESARMAR SOLO SI tra2>0 .AND. tra1=0
	CORTES A RECTO:
	PERFIL 178
         2*tra2 x m_ancho/2-12-84
       SEGUN contravid PERFIL 177,179
         (tra1+1)*4 x (m_ancho-175-20)/2
         4*(tra1+1) x (m_alto-175-20)/(tra1+1)


        FIN DESARME




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
            2 de m_ancho/2-12-94 x m_alto-67-94
        FIN DESARME

         /* tra1= posicion del travesanio */
        DESARMAR SOLO SI tra1>0
            2 de m_ancho/2-12-94 x tra1-93
            PANELES
            2 de m_ancho/2-12-94 x m_alto-tra1-93
        FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
        DESARMAR SOLO SI tra2>0
            2*(tra2+1) de m_ancho/2-12-94 x (m_alto-67-94-25*tra2)/(tra2+1)
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
      PARTE ABD
         1 x 2
      PARTE H5X4
         8 x (m_ancho/2)/1000
         6 x (m_alto)/1000
      PARTE T
         4 x (m_ancho/2)/1000
         4 x (m_alto-66)/1000
      PARTE W
         4 x (m_ancho/2)/1000
         4 x (m_alto-66)/1000
	
     


FIN DESARME
   /* Ventanas de Dos Hojas */



/*    CON HOJAS LATERALES EN LA MISMA GUIA */
/* LA HOJA CENTRAL ES EL DOBLE DE LAS LATERALES  */
/* HECHA CON DANIEL Y JORGE DE GABISA */

DESARMAR SOLO SI n_hojas=3 

CORTES A 45:
      PERFIL 176

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
	/* HOJA CENTRAL */
         2 x m_ancho/2+16

	/* hojas laterales */
	4 x m_ancho/4+4
      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0
	/* HOJA CENTRAL */
         2 x m_ancho/2+16

	/* hojas laterales */
	4 x m_ancho/4+4

	CORTES A RECTO:
	/* travesaño HOJA CENTRAL */
	PERFIL 178
	1 x m_ancho/2+16-84

	/* travesaño HOJA lateral */
	2 x m_ancho/4+4-84


         
      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0
	/* HOJA CENTRAL */
         2 x m_ancho/2+16

	/* hojas laterales */
	4 x m_ancho/4+4

	CORTES A RECTO:
	PERFIL 178
	/* travesaño HOJA CENTRAL */
	tra2 x m_ancho/2+16-84

	/* travesaño HOJA lateral */
	2*tra2 x m_ancho/4+4-84

      FIN DESARME


      /* Parantes  */
      PERFIL 176
         6 x m_alto-67

	/* perfil de solapa de encuentro  */
	CORTES A RECTO:
	PERFIL 175
	4 x m_alto-67

      DESARMAR SOLO SI mosquitero!=0
         SEPARACION
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
		/* vidrio hoja central */
		1 de m_ancho/2+12-86 x m_alto-67-86

		/* vidrio hojas laterales */
		2 de m_ancho/4+4-86 x m_alto-67-86
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
		/* vidrio hoja central */
		1 de m_ancho/2+12-86 x tra1-93
		PANELES
		1 de m_ancho/2+12-86 x m_alto-tra1-93

		/* vidrio hojas laterales */
		2 de m_ancho/4+4-86 x tra1-93
		PANELES
		2 de m_ancho/4+4-86 x m_alto-rta1-93
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
		/* vidrio hoja central */
		tra2+1 de m_ancho/2+12-86 x m_alto-25*tra2-67-94       

		/* vidrio hojas laterales */
		2*(tra2+1) de m_ancho/4+4-86 x m_alto-25*tra2-67-94

         FIN DESARME

   FIN DESARME   /* Ventanas de Tres Hojas */


DESARMAR SOLO SI n_hojas=3

      /* MECANISMO */

      PARTE A
         1 x 4
      PARTE D
         1 x 36    
      PARTE C1
         1 x 6
         PARTE 1088
            1 x 2
         PARTE ABD
            1 x 4
      PARTE ABB
         1 x 8
      PARTE ABC
         1 x 8

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

m_cant_vid:=cant_vid()
m_2vid:=m2_vid()

PRODUCTO MOCORR




/* MODENA PORTON DE 3,4,5 HOJAS*/ 
/* COPIA DE PUERTA MODENA MODIFICADA CON CLAUDIO EL 23-12-98 */

/* cv_ext = contravidrio exterior (C6220 / C6237)*/
/* contravid = contravidrio interior */
/* MEDIDA DE VIDRIOS MODIFICADA EL 26/9/97 CON CLAUDIO EN ALUAR */


/* PREMARCO*/
PRODUCTO PPMMODE

CALCULOS
   par1:=0
FIN CALCULOS

/* Marco */
   PERFIL C6216
      CORTES A 45:
      1 x m_ancho
      CORTES A 90 Y 45:
      2 x m_alto
   SEPARACION
    

   /* PORTON DE 3 HOJAS */
   DESARMAR SOLO SI n_hojas=3

      CORTES A 45:
      PERFIL C6214
      3 x (m_ancho-49)/3
      CORTES A 90 Y 45:
      6 x m_alto-24

      CORTES A RECTO:
      PERFIL C6219
      3 x (m_ancho-506)/3

	/* acople */
	PERFIL C6224
	2 x m_alto-42

	PERFIL C5989
	2 x (m_alto/2)-50

      CORTES A 45:

      /* NO Lleva travesa¤o intermedio */
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         SEGUN cv_ext PERFIL C6237,C6220
			6 x (m_ancho-496)/3
		        6 x m_alto-217
			SEGUN contravid PERFIL C6232,C6212,C6225,C6230,C6231,C6217,C6226,C6257
			6 x (m_ancho-496)/3
		        6 x m_alto-217
         PARTE T96
            12 x INT(((m_ancho-496-40)/3)/300) + 2
            12 x INT((m_alto-217-40)/300) + 2
     FIN DESARME


      /* Lleva un travesa¤o intermedio */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         CORTES A RECTO:
         PERFIL C6218
	    3 x (m_ancho-506)/3

         CORTES A 45:
			SEGUN cv_ext PERFIL C6237,C6220
			12 x (m_ancho-496)/3
		        6 x m_alto-tra1-125-30
		        6 x tra1-123-7-30
			SEGUN contravid PERFIL C6232,C6212,C6225,C6230,C6231,C6217,C6226,C6257
			12 x (m_ancho-496)/3
		        6 x m_alto-tra1-125-30
		        6 x tra1-123-7-30

         PARTE T96
            24 x INT(((m_ancho-496-40)/3)/300) + 2
            12 x INT((m_alto-tra1-123-30)/300) + 2
            12 x INT((tra1-123-7-30)/300) + 2
      FIN DESARME

      /* Lleva dos travesa¤o intermedio */
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         CORTES A RECTO:
         PERFIL C6218
	    6 x (m_ancho-506)/3
         CORTES A 45:
			SEGUN cv_ext PERFIL C6237,C6220
			18 x (m_ancho-496)/3
		        6 x m_alto-tra2-125-30
			6 x tra2-tra1-123-7-30-30
		        6 x tra1-123-7-30
			SEGUN contravid PERFIL C6232,C6212,C6225,C6230,C6231,C6217,C6226,C6257
			18 x (m_ancho-496)/3
		        6 x m_alto-tra2-125-30
			6 x tra2-tra1-123-7-30-30
		        6 x tra1-123-7-30
         PARTE T96
            28 x INT(((m_ancho-496-40)/3)/300) + 2
            12 x INT((m_alto-tra2-123-30)/300) + 2
            12 x INT((tra2-tra1-123-30-30-7)/300) + 2
            12 x INT((tra1-123-7-30)/300) + 2
      FIN DESARME


      SEPARACION
      /* NO lleva travesanio */
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         VIDRIOS
            3 de (m_ancho-506)/3-10 x m_alto-233
      FIN DESARME

      /* LLEVA un TRAVESANIO */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         VIDRIOS
            3 de (m_ancho-506)/3-10 x tra1-123-30-10
         PANELES
            3 de (m_ancho-506)/3-10 x m_alto-tra1-95-30-10
      FIN DESARME

      /* LLEVA 2 TRAVESANIOS */
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         VIDRIOS
            3 de (m_ancho-506)/3-10 x tra1-123-30-10
         PANELES
            3 de (m_ancho-506)/3-10 x tra2-tra1-60-10
         OTROS INTERIORES
            3 de (m_ancho-506)/3-10 x m_alto-tra2-95-30-10
      FIN DESARME

      /* MECANISMO PORTON DE 3 HOJAS */

      PARTE H82
	 1 x 3
      PARTE H42
	 2 x 2
      PARTE H43
         1 x 2 
      PARTE T98
	 1 x 2
      PARTE E67
         2 x 3
      PARTE E69
         1 x 2
      PARTE E70
         2 x 3
      PARTE H62
         3 x 2
      SEGUN cerradu PARTE H51,P323
         1 x 1
      DESARMAR SOLO SI manijon>1
         SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
            1 x 2
      FIN DESARME

      PARTE H50
         1 x 1

      PARTE C14
         3 x (m_ancho-506)/3000

      PARTE B67
         1 x m_ancho/1000
         2 x m_alto/1000

      PARTE B52
         3 x m_ancho/1000
         6 x m_alto/1000
	DESARMAR SOLO SI taco_reg=1
      PARTE T88
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
	FIN DESARME
      PARTE I
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
      PARTE T95
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
      PARTE B68
         /* NO LLEVA TRAVESANIO */
         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            2 x (m_ancho-180)/1000
            2 x (m_alto-180)/1000
         FIN DESARME
         /* LLEVA 1 TRAVESANIO */
         DESARMAR SOLO SI tra1>0 .AND. tra2=0
            4 x (m_ancho-180)/1000
            2 x (m_alto-270)/1000
         FIN DESARME
         /* LLEVA 2 TRAVESANIOs */
         DESARMAR SOLO SI tra1>0 .AND. tra2>0
            6 x (m_ancho-180)/1000
            2 x (m_alto-350)/1000
         FIN DESARME

      DESARMAR SOLO SI espesor=6
         PARTE B29
      FIN DESARME
      DESARMAR SOLO SI espesor=5
         PARTE B30
      FIN DESARME
      DESARMAR SOLO SI espesor=4
         PARTE B31
      FIN DESARME

      /* NO LLEVA TRAVESANIO */
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         2 x (m_ancho-180)/1000
         2 x (m_alto-180)/1000
      FIN DESARME
      /* LLEVA 1 TRAVESANIO */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         4 x (m_ancho-180)/1000
         2 x (m_alto-270)/1000
      FIN DESARME
      /* LLEVA 2 TRAVESANIOs */
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         6 x (m_ancho-180)/1000
         2 x (m_alto-350)/1000
      FIN DESARME

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         PARTE T20
            3 x 4
        PARTE T100
            3 x 4
      FIN DESARME
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         PARTE T20
            3 x 8
        PARTE T100
            3 x 8
      FIN DESARME
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         PARTE T20
            3 x 12
        PARTE T100
            3 x 12
      FIN DESARME


   FIN DESARME
 /* Porton de 3 Hojas*/


   /* PORTON DE 4 HOJAS */
   DESARMAR SOLO SI n_hojas=4

      CORTES A 45:
      PERFIL C6214
      4 x (m_ancho-54)/4
      CORTES A 90 Y 45:
      8 x m_alto-24

      CORTES A RECTO:
 	PERFIL C6219
      4 x (m_ancho-664)/4

	/* acople */
	PERFIL C6224
	3 x m_alto-42

	PERFIL C5989
	2 x (m_alto/2)-50

      CORTES A 45:

      /* NO Lleva travesa¤o intermedio */
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         SEGUN cv_ext PERFIL C6237,C6220
			8 x (m_ancho-660)/4
		        8 x m_alto-217
			SEGUN contravid PERFIL C6232,C6212,C6225,C6230,C6231,C6217,C6226,C6257
			8 x (m_ancho-660)/4
		        8 x m_alto-217
         PARTE T96
            16 x INT(((m_ancho-660-40)/4)/300) + 2
            16 x INT((m_alto-217-40)/300) + 2
     FIN DESARME


      /* Lleva un travesa¤o intermedio */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         CORTES A RECTO:
         PERFIL C6218
	    4 x (m_ancho-664)/4

         CORTES A 45:
			SEGUN cv_ext PERFIL C6237,C6220
			16 x (m_ancho-660)/4
		        8 x m_alto-tra1-125-30
		        8 x tra1-123-7-30
			SEGUN contravid PERFIL C6232,C6212,C6225,C6230,C6231,C6217,C6226,C6257
			16 x (m_ancho-660)/4
		        8 x m_alto-tra1-125-30
		        8 x tra1-123-7-30

         PARTE T96
            30 x INT(((m_ancho-660-40)/4)/300) + 2
            16 x INT((m_alto-tra1-123-30)/300) + 2
            16 x INT((tra1-123-7-30)/300) + 2
      FIN DESARME

      /* Lleva dos travesa¤o intermedio */
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         CORTES A RECTO:
         PERFIL C6218
	    8 x (m_ancho-664)/4
         CORTES A 45:
			SEGUN cv_ext PERFIL C6237,C6220
			24 x (m_ancho-660)/4
		        8 x m_alto-tra2-125-30
			8 x tra2-tra1-123-7-30-30
		        8 x tra1-123-7-30
			SEGUN contravid PERFIL C6232,C6212,C6225,C6230,C6231,C6217,C6226,C6257
			24 x (m_ancho-660)/4
		        8 x m_alto-tra2-125-30
			8 x tra2-tra1-123-7-30-30
		        8 x tra1-123-7-30
         PARTE T96
            35 x INT(((m_ancho-660-40)/4)/300) + 2
            16 x INT((m_alto-tra2-123-30)/300) + 2
            16 x INT((tra2-tra1-123-30-30-7)/300) + 2
            16 x INT((tra1-123-7-30)/300) + 2
      FIN DESARME


      SEPARACION
      /* NO lleva travesanio */
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         VIDRIOS
            4 de (m_ancho-664)/4-10 x m_alto-233
      FIN DESARME

      /* LLEVA un TRAVESANIO */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         VIDRIOS
            4 de (m_ancho-664)/4-10 x tra1-123-30-10
         PANELES
            4 de (m_ancho-664)/4-10 x m_alto-tra1-95-30-10
      FIN DESARME

      /* LLEVA 2 TRAVESANIOS */
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         VIDRIOS
            4 de (m_ancho-664)/4-10 x tra1-123-30-10
         PANELES
            4 de (m_ancho-664)/4-10 x tra2-tra1-60-10
         OTROS INTERIORES
            4 de (m_ancho-664)/4-10 x m_alto-tra2-95-30-10
      FIN DESARME

      /* MECANISMO PORTON DE 4 HOJAS */

      PARTE H82
	 2 x 3
      PARTE H42
	 2 x 2
      PARTE H43
         1 x 2 
      PARTE T98
	 1 x 3
      PARTE E67
         2 x 4
      PARTE E69
         1 x 2
      PARTE E70
         2 x 4
      PARTE H62
         2 x 3
      SEGUN cerradu PARTE H51,P323
         1 x 1
      DESARMAR SOLO SI manijon>1
         SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
            2 x 2
      FIN DESARME

      PARTE H50
         1 x 1

      PARTE C14
         4 x (m_ancho-664)/4000

      PARTE B67
         1 x m_ancho/1000
         2 x m_alto/1000

      PARTE B52
         4 x m_ancho/1000
         8 x m_alto/1000

	DESARMAR SOLO SI taco_reg=1
      PARTE T88
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
	FIN DESARME
      PARTE T95
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)

      PARTE I
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
      PARTE B68
         /* NO LLEVA TRAVESANIO */
         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            2 x (m_ancho-180)/1000
            2 x (m_alto-180)/1000
         FIN DESARME
         /* LLEVA 1 TRAVESANIO */
         DESARMAR SOLO SI tra1>0 .AND. tra2=0
            4 x (m_ancho-180)/1000
            2 x (m_alto-270)/1000
         FIN DESARME
         /* LLEVA 2 TRAVESANIOs */
         DESARMAR SOLO SI tra1>0 .AND. tra2>0
            6 x (m_ancho-180)/1000
            2 x (m_alto-350)/1000
         FIN DESARME

      DESARMAR SOLO SI espesor=6
         PARTE B29
      FIN DESARME
      DESARMAR SOLO SI espesor=5
         PARTE B30
      FIN DESARME
      DESARMAR SOLO SI espesor=4
         PARTE B31
      FIN DESARME

      /* NO LLEVA TRAVESANIO */
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         2 x (m_ancho-180)/1000
         2 x (m_alto-180)/1000
      FIN DESARME
      /* LLEVA 1 TRAVESANIO */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         4 x (m_ancho-180)/1000
         2 x (m_alto-270)/1000
      FIN DESARME
      /* LLEVA 2 TRAVESANIOs */
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         6 x (m_ancho-180)/1000
         2 x (m_alto-350)/1000
      FIN DESARME

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         PARTE T20
            4 x 4
        PARTE T100
            4 x 4
      FIN DESARME
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         PARTE T20
            4 x 8
        PARTE T100
            4 x 8
      FIN DESARME
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         PARTE T20
            4 x 12
        PARTE T100
            4 x 12
      FIN DESARME


   FIN DESARME
 /* Porton de 4 Hojas*/




   /* PORTON DE 5 HOJAS */
   DESARMAR SOLO SI n_hojas=5

      CORTES A 45:
      PERFIL C6214
      5 x (m_ancho-59)/5
      CORTES A 90 Y 45:
      10 x m_alto-24

      CORTES A RECTO:
 	PERFIL C6219
      5 x (m_ancho-821)/5

	/* acople */
	PERFIL C6224
	4 x m_alto-42

	PERFIL C5989
	3 x (m_alto/2)-50

      CORTES A 45:

      /* NO Lleva travesa¤o intermedio */
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         SEGUN cv_ext PERFIL C6237,C6220
			10 x (m_ancho-811)/5
		        10 x m_alto-217
			SEGUN contravid PERFIL C6232,C6212,C6225,C6230,C6231,C6217,C6226,C6257
			10 x (m_ancho-811)/5
		        10 x m_alto-217
         PARTE T96
            20 x INT(((m_ancho-811-40)/5)/300) + 2
            20 x INT((m_alto-217-40)/300) + 2
     FIN DESARME


      /* Lleva un travesa¤o intermedio */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         CORTES A RECTO:
         PERFIL C6218
	    5 x (m_ancho-821)/5

         CORTES A 45:
			SEGUN cv_ext PERFIL C6237,C6220
			20 x (m_ancho-811)/5
		        10 x m_alto-tra1-125-30
		        10 x tra1-123-7-30
			SEGUN contravid PERFIL C6232,C6212,C6225,C6230,C6231,C6217,C6226,C6257
			20 x (m_ancho-811)/5
		        10 x m_alto-tra1-125-30
		        10 x tra1-123-7-30

         PARTE T96
            40 x INT(((m_ancho-811-40)/5)/300) + 2
            20 x INT((m_alto-tra1-123-30)/300) + 2
            20 x INT((tra1-123-7-30)/300) + 2
      FIN DESARME

      /* Lleva dos travesa¤o intermedio */
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         CORTES A RECTO:
         PERFIL C6218
	    10 x (m_ancho-821)/5
         CORTES A 45:
			SEGUN cv_ext PERFIL C6237,C6220
			30 x (m_ancho-811)/5
		        10 x m_alto-tra2-125-30
			10 x tra2-tra1-123-7-30-30
		        10 x tra1-123-7-30
			SEGUN contravid PERFIL C6232,C6212,C6225,C6230,C6231,C6217,C6226,C6257
			30 x (m_ancho-811)/5
		        10 x m_alto-tra2-125-30
			10 x tra2-tra1-123-7-30-30
		        10 x tra1-123-7-30
         PARTE T96
            45 x INT(((m_ancho-811-40)/5)/300) + 2
            20 x INT((m_alto-tra2-123-30)/300) + 2
            20 x INT((tra2-tra1-123-30-30-7)/300) + 2
            20 x INT((tra1-123-7-30)/300) + 2
      FIN DESARME


      SEPARACION
      /* NO lleva travesanio */
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         VIDRIOS
            5 de (m_ancho-821)/5-10 x m_alto-233
      FIN DESARME

      /* LLEVA un TRAVESANIO */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         VIDRIOS
            5 de (m_ancho-821)/5-10 x tra1-123-30-10
         PANELES
            5 de (m_ancho-821)/5-10 x m_alto-tra1-95-30-10
      FIN DESARME

      /* LLEVA 2 TRAVESANIOS */
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         VIDRIOS
            5 de (m_ancho-821)/5-10 x tra1-123-30-10
         PANELES
            5 de (m_ancho-821)/5-10 x tra2-tra1-60-10
         OTROS INTERIORES
            5 de (m_ancho-821)/5-10 x m_alto-tra2-95-30-10
      FIN DESARME

      /* MECANISMO PORTON DE 5 HOJAS */

      PARTE H82
	 3 x 3
      PARTE H42
	 2 x 4
      PARTE H43
         1 x 4 
      PARTE T98
	 1 x 4
      PARTE E67
         2 x 5
      PARTE E69
         1 x 2
      PARTE E70
         2 x 5
      PARTE H62
         2 x 3
      SEGUN cerradu PARTE H51,P323
         1 x 1
      DESARMAR SOLO SI manijon>1
         SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANICU
            2 x 2
      FIN DESARME

      PARTE H50
         1 x 1

      PARTE C14
         5 x (m_ancho-821)/5000

      PARTE B67
         1 x m_ancho/1000
         2 x m_alto/1000

      PARTE B52
         5 x m_ancho/1000
         10 x m_alto/1000

	DESARMAR SOLO SI taco_reg=1
      PARTE T88
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
	FIN DESARME

      PARTE T95
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)

      PARTE I
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
      PARTE B68
         /* NO LLEVA TRAVESANIO */
         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            2 x (m_ancho-180)/1000
            2 x (m_alto-180)/1000
         FIN DESARME
         /* LLEVA 1 TRAVESANIO */
         DESARMAR SOLO SI tra1>0 .AND. tra2=0
            4 x (m_ancho-180)/1000
            2 x (m_alto-270)/1000
         FIN DESARME
         /* LLEVA 2 TRAVESANIOs */
         DESARMAR SOLO SI tra1>0 .AND. tra2>0
            6 x (m_ancho-180)/1000
            2 x (m_alto-350)/1000
         FIN DESARME

      DESARMAR SOLO SI espesor=6
         PARTE B29
      FIN DESARME
      DESARMAR SOLO SI espesor=5
         PARTE B30
      FIN DESARME
      DESARMAR SOLO SI espesor=4
         PARTE B31
      FIN DESARME

      /* NO LLEVA TRAVESANIO */
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         2 x (m_ancho-180)/1000
         2 x (m_alto-180)/1000
      FIN DESARME
      /* LLEVA 1 TRAVESANIO */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         4 x (m_ancho-180)/1000
         2 x (m_alto-270)/1000
      FIN DESARME
      /* LLEVA 2 TRAVESANIOs */
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         6 x (m_ancho-180)/1000
         2 x (m_alto-350)/1000
      FIN DESARME

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         PARTE T20
            4 x 5
        PARTE T100
            4 x 5
      FIN DESARME
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         PARTE T20
            5 x 8
        PARTE T100
            5 x 8
      FIN DESARME
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         PARTE T20
            5 x 12
        PARTE T100
            5 x 12
      FIN DESARME


   FIN DESARME
 /* Porton de 5 Hojas*/


PRODUCTO MAPUER




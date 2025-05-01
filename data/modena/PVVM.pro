/* MODENA Puerta vaiven */ 
/* borde curvo o recto , vidrio simple */
/* C6220 RECTO ->  C6257 CURVO	4,6
/*						 C6232 CURVO	DVH 25*/
/*						 C6212 RECTO	4,6*/
/*						 C6225 RECTO   DVH 25*/

/* C6237 CURVO ->  C6230 CURVO	4,6/*
/*						 C6231 CURVO	DVH 25*/
/*						 C6217 RECTO	4,6*/
/*						 C6226 RECTO   DVH 25*/

/* cv_ext = contravidrio exterior (C6220 / C6237)*/
/* contravid = contravidrio interior */
/* e_cont = espesor de contravidrio */
/* PREMARCO*/
  CALCULOS
   e_cont :=if(cv_ext=1,0,32)
   par1:=0
  FIN CALCULOS

PRODUCTO PPMMODE

/* Marco */
   PERFIL C6271
  
      CORTES A 45:
      1 x m_ancho
      CORTES A 90 Y 45:
      2 x m_alto
   
  PERFIL C6273
      1 x m_ancho-58
      CORTES A 90 Y 45:
      2 x m_alto-29

   /* Puertas de una hoja */
DESARMAR SOLO SI n_hojas=1

      CORTES A 45:
      PERFIL C6272
      2 x m_ancho-114

      CORTES A RECTO:
      PERFIL C6274
      1 x m_ancho-248


      /*jambas*/
      CORTES A 45:
      PERFIL C6272
      2 x m_alto-65

      CORTES A 45:
      PERFIL C6273
      2 x m_ancho-106
      2 x m_alto-57
      CORTES A 45:

      /* NO Lleva travesa¤o intermedio */
        DESARMAR SOLO SI tra1=0 .AND. tra2=0
         SEGUN cv_ext PERFIL C6237,C6220
                        2 x m_ancho-248-e_cont
                        2 x m_alto-252
			SEGUN contravid PERFIL C6232,C6212,C6225,C6230,C6231,C6217,C6226,C6257
                        2 x m_ancho-248-e_cont
                        2 x m_alto-252
                DESARMAR SOLO SI e_cont=0
         PARTE T96
            4 x INT((m_ancho-189-40)/300) + 2
            4 x INT((m_alto-217-40)/300) + 2
                FIN DESARME
        FIN DESARME


      /* Lleva un travesa¤o intermedio */
        DESARMAR SOLO SI tra1>0 .AND. tra2=0
         CORTES A RECTO:
         PERFIL C6274
            1 x m_ancho-248
         CORTES A 45:
			SEGUN cv_ext PERFIL C6237,C6220
            4 x m_ancho-248-e_cont
            2 x tra1-128-26
            2 x m_alto-tra1-124-26
                        SEGUN contravid PERFIL C6232,C6212,C6225,C6226,C6231,C6217,C6226,C6257
            4 x m_ancho-248-e_cont
            2 x tra1-128-26
            2 x m_alto-tra1-124-26

                DESARMAR SOLO SI e_cont=0
                PARTE T96
            8 x INT((m_ancho-248-40)/260) + 2
            4 x INT((tra1-128-26-40)/300) + 2
            4 x INT((m_alto-tra1-124-26-40)/300) + 2
                FIN DESARME
        FIN DESARME
      /* Lleva dos travesa¤o intermedio */
        DESARMAR SOLO SI tra1>0 .AND. tra2>0
         CORTES A RECTO:
         PERFIL C6274
            2 x m_ancho-248
         CORTES A 45:
			SEGUN cv_ext PERFIL C6237,C6220
            6 x m_ancho-248-e_cont
            2 x tra1-128-26
            2 x tra2-tra1-52
            2 x m_alto-tra2-124-26
			SEGUN contravid PERFIL C6232,C6212,C6225,C6230,C6231,C6217,C6226,C6257
            6 x m_ancho-248-e_cont
            2 x tra1-128-26
            2 x tra2-tra1-52
            2 x m_alto-tra2-124-26

                DESARMAR SOLO SI e_cont=0
                PARTE T96
            12 x INT((m_ancho-248-40)/300) + 2
            4 x INT((tra1-128-26-40)/300) + 2
            4 x INT((tra2-tra1-52-40)/300) + 2
            4 x INT((m_alto-tra2-124-26-40)/300) + 2
                FIN DESARME
        FIN DESARME

      
      /* NO lleva travesanio */
        DESARMAR SOLO SI tra1=0 .AND. tra2=0
         VIDRIOS                
            1 de m_ancho-260 x m_alto-264
        FIN DESARME

      /* LLEVA un TRAVESANIO */
        DESARMAR SOLO SI tra1>0 .AND. tra2=0
         VIDRIOS
            1 de m_ancho-260 x tra1-128-26-12
         PANELES
            1 de m_ancho-260 x m_alto-tra1-124-26-12
        FIN DESARME

      /* LLEVA 2 TRAVESANIOS */
        DESARMAR SOLO SI tra1>0 .AND. tra2>0
         VIDRIOS
            1 de m_ancho-260 x tra1-128-26-12
         PANELES
            1 de m_ancho-260 x tra2-tra1-52-12
         OTROS INTERIORES
            1 de m_ancho-260 x m_alto-tra2-124-26-12
        FIN DESARME

      /* MECANISMO PUERTA DE UNA HOJA */
        PARTE E69
                1 x 4
        PARTE E69
                1 x 2

        DESARMAR SOLO SI caja_p=0
        PARTE PIVOT
                1 x 1
        FIN DESARME

         SEGUN cierre PARTE H74,P323
                1 x 1

      /* PORTA FELPA */
        DESARMAR SOLO SI manijon>1
         SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
                1 x 2
        FIN DESARME

         PARTE MANIJA
                1 x 1


      DESARMAR SOLO SI caja_p>0
         PARTE CAJAP
                1 x 1
      FIN DESARME

      PARTE C14
         6 x (m_ancho-100)/1000
         8 x (m_alto-100)/1000
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
            1 x 4
        PARTE T100
            1 x 4
      FIN DESARME
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         PARTE T20
            1 x 8
        PARTE T100
            1 x 8
      FIN DESARME
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         PARTE T20
            1 x 12
        PARTE T100
            1 x 12
      FIN DESARME


   FIN DESARME
 /* Puertas de una Hoja */

   /* =================================================== */

   /* Puertas de dos hoja */
DESARMAR SOLO SI n_hojas=2

      CORTES A 45:
      PERFIL C6272
      4 x m_ancho/2-65
      PERFIL C6272
      4 x m_alto-65

      CORTES A 45:
      PERFIL C6273
         4 x m_ancho/2-57
      PERFIL C6273
         4 x m_alto-57

      CORTES A RECTO:
      PERFIL C6274
         2 x m_ancho/2-130

      CORTES A 45:
    /* NO Lleva travesa¤o intermedio */
        DESARMAR SOLO SI tra1=0 .AND. tra2=0
                        SEGUN cv_ext PERFIL C6237,C6220
         4 x m_ancho/2-130-e_cont
         4 x m_alto-252
			SEGUN contravid PERFIL C6232,C6212,C6225,C6230,C6231,C6217,C6226,C6257
         4 x m_ancho/2-130-e_cont
         4 x m_alto-284

                DESARMAR SOLO SI e_cont=0
                 PARTE T96
            8 x INT((m_ancho/2-130-40)/300) + 2
            8 x INT((m_alto-284-40)/300) + 2
                FIN DESARME
        FIN DESARME

      /* Lleva un travesa¤o intermedio */
        DESARMAR SOLO SI tra1>0 .AND. tra2=0
         CORTES A RECTO:
         PERFIL C6274
            2 x m_ancho/2-130
         CORTES A 45:
			SEGUN cv_ext PERFIL C6237,C6220
            8 x m_ancho/2-130-e_cont
            4 x tra1-128-26
            4 x m_alto-tra1-124-26
                        SEGUN contravid PERFIL C6232,C6212,C6225,C6230,C6231,C6284,C6226,C6257
            8 x m_ancho/2-130-e_cont
            4 x tra1-128-26
            4 x m_alto-tra1-124-26

                DESARMAR SOLO SI e_cont=0
         PARTE T96
            16 x INT((m_ancho/2-130-40)/300) + 2
            8 x INT((tra1-128-26-40)/300) + 2
            8 x INT((m_alto-tra1-124-26-40)/300) + 2
                FIN DESARME
        FIN DESARME
      /* Lleva dos travesa¤o intermedio */
        DESARMAR SOLO SI tra1>0 .AND. tra2>0
         CORTES A RECTO:
         PERFIL C6274
            4 x m_ancho/2-175
         CORTES A 45:
			SEGUN cv_ext PERFIL C6237,C6220
           12 x m_ancho/2-130-e_cont
            4 x tra1-128-26
            4 x tra2-tra1-60
            4 x m_alto-tra2-124-26
			SEGUN contravid PERFIL C6232,C6212,C6225,C6230,C6231,C6217,C6226,C6257
           12 x m_ancho/2-130-e_cont
            4 x tra1-128-26
            4 x tra2-tra1-60
            4 x m_alto-tra2-124-26
                DESARMAR SOLO SI e_cont=0
         PARTE T96
           24 x INT((m_ancho/2-130-40)/300) + 2
            8 x INT((tra1-128-26-40)/300) + 2
            8 x INT((tra2-tra1-60-40)/300) + 2
            8 x INT((m_alto-tra2-124-26-40)/300) + 2
                FIN DESARME
        FIN DESARME
   
     /* NO lleva travesanio */
        DESARMAR SOLO SI tra1=0 .AND. tra2=0
         VIDRIOS
            2 de m_ancho/2-130-12 x m_alto-252-12
        FIN DESARME

      /* LLEVA un TRAVESANIO */
        DESARMAR SOLO SI tra1>0 .AND. tra2=0
         VIDRIOS
            2 de m_ancho/2-130-12 x tra1-128-26-12
         PANELES
            2 de m_ancho/2-130-12 x m_alto-tra1-124-26-12
        FIN DESARME

      /* LLEVA 2 TRAVESANIOS */
        DESARMAR SOLO SI tra1>0 .AND. tra2>0
         VIDRIOS
            2 de m_ancho/2-130-12 x tra1-128-26-12
         PANELES
            2 de m_ancho/2-130-12 x tra2-tra1-52-12
         OTROS INTERIORES
            2 de m_ancho/2-130-12 x m_alto-tra2-124-26-12
        FIN DESARME

      /* MECANISMO PUERTA DE DOS HOJAS */
      PARTE E69
         1 x 2
      PARTE E69
         1 x 8
      SEGUN cierre PARTE H73,P323
         1 x 1
        DESARMAR SOLO SI manijon>1
         SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
            1 x 4
        FIN DESARME

      PARTE MANIJA
         1 x 1

        DESARMAR SOLO SI caja_p=0
        PARTE PIVOT
           1 x 2
        FIN DESARME

        DESARMAR SOLO SI caja_p>0
        PARTE CAJAP
           1 x 2
        FIN DESARME

      PARTE H42
         1 x 2

      PARTE C14
         6 x (m_ancho/2-330)/1000
        12 x (m_alto-330)/1000

	DESARMAR SOLO SI taco_reg=1
      PARTE T88
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
	FIN DESARME
      PARTE I
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
      PARTE B68
         /* NO LLEVA TRAVESANIO */
        DESARMAR SOLO SI tra1=0 .AND. tra2=0
            4 x (m_ancho/2-330)/1000
            4 x (m_alto-180)/1000
        FIN DESARME
         /* LLEVA 1 TRAVESANIO */
        DESARMAR SOLO SI tra1>0 .AND. tra2=0
            8 x (m_ancho/2-330)/1000
            4 x (m_alto-270)/1000
        FIN DESARME
         /* LLEVA 2 TRAVESANIOs */
        DESARMAR SOLO SI tra1>0 .AND. tra2>0
           12 x (m_ancho/2-330)/1000
            4 x (m_alto-350)/1000
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
         4 x (m_ancho/2-330)/1000
         4 x (m_alto-180)/1000
        FIN DESARME
      /* LLEVA 1 TRAVESANIO */
        DESARMAR SOLO SI tra1>0 .AND. tra2=0
         8 x (m_ancho/2-330)/1000
         4 x (m_alto-270)/1000
        FIN DESARME
      /* LLEVA 2 TRAVESANIOs */
        DESARMAR SOLO SI tra1>0 .AND. tra2>0
        12 x (m_ancho/2-330)/1000
         4 x (m_alto-350)/1000
        FIN DESARME

        DESARMAR SOLO SI tra1=0 .AND. tra2=0
         PARTE T20
            1 x 8
        PARTE T100
            1 x 8
        FIN DESARME
        DESARMAR SOLO SI tra1>0 .AND. tra2=0
         PARTE T20
            1 x 16
        PARTE T100
            1 x 16
        FIN DESARME
        DESARMAR SOLO SI tra1>0 .AND. tra2>0
         PARTE T20
            1 x 24
        PARTE T100
            1 x 24
        FIN DESARME

FIN DESARME          /* Puertas de DOS Hoja */



PRODUCTO MAPUER




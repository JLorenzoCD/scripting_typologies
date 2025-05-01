/* A 30 NEW Puerta vaiven */ 

/* cv_ext = contravidrio exterior (C6049 / C6050)*/
/* contravid = contravidrio interior */
/* e_cont = espesor de contravidrio */
/* PREMARCO*/
  CALCULOS
  e_cont :=if(cv_ext=1,44,0)
  par1:=0
  FIN CALCULOS

PRODUCTO PMA30N

/* Marco */
   PERFIL C6076
  
      CORTES A 45:
      1 x m_ancho
      CORTES A 90 Y 45:
      2 x m_alto
      CORTES A 45:
  PERFIL C6077
      1 x m_ancho-66
      CORTES A 90 Y 45:
      2 x m_alto-33

   /* Puertas de una hoja */
DESARMAR SOLO SI n_hojas=1

      CORTES A 45:
      PERFIL C6075
      2 x m_ancho-124

      CORTES A RECTO:
      PERFIL C6042
      1 x m_ancho-266                                                                             


      /*jambas*/
      CORTES A 45:
      PERFIL C6075
      2 x m_alto-71

      CORTES A 45:
      PERFIL C6077
      2 x m_ancho-116
      2 x m_alto-63
      CORTES A 45:

      /* NO Lleva travesa¤o intermedio */
        DESARMAR SOLO SI tra1=0 .AND. tra2=0
         SEGUN cv_ext PERFIL C6049,C6050
                        2 x m_ancho-266-e_cont
                        2 x m_alto-263
                        SEGUN contravid PERFIL C6045,C6046,C6047,C6048
                        2 x m_ancho-266-e_cont
                        2 x m_alto-263
                DESARMAR SOLO SI e_cont=0
         PARTE T96
            4 x INT((m_ancho-266-40)/300) + 2
            4 x INT((m_alto-263-40)/300) + 2
                FIN DESARME
        FIN DESARME


      /* Lleva un travesa¤o intermedio */
        DESARMAR SOLO SI tra1>0 .AND. tra2=0
         CORTES A RECTO:
         PERFIL C6042
            1 x m_ancho-266
         CORTES A 45:
                        SEGUN cv_ext PERFIL C6049,C6050
            4 x m_ancho-266-e_cont
            2 x tra1-133-28
            2 x m_alto-tra1-130-28
                        SEGUN contravid PERFIL C6045,C6046,C6047,C6048
            4 x m_ancho-266-e_cont
            2 x tra1-133-28
            2 x m_alto-tra1-130-28

                DESARMAR SOLO SI e_cont=0
                PARTE T96
            8 x INT((m_ancho-266-40)/270) + 2
            4 x INT((tra1-133-28-40)/300) + 2
            4 x INT((m_alto-tra1-130-28-40)/300) + 2
                FIN DESARME
        FIN DESARME
      /* Lleva dos travesa¤o intermedio */
        DESARMAR SOLO SI tra1>0 .AND. tra2>0
         CORTES A RECTO:
         PERFIL C6042
            2 x m_ancho-276
         CORTES A 45:
                        SEGUN cv_ext PERFIL C6049,C6050
            6 x m_ancho-266-e_cont
            2 x tra1-133-28
            2 x tra2-tra1-56
            2 x m_alto-tra2-130-28
                        SEGUN contravid PERFIL C6045,C6046,C6047,C6048
            6 x m_ancho-266-e_cont
            2 x tra1-133-28
            2 x tra2-tra1-56
            2 x m_alto-tra2-130-28

                DESARMAR SOLO SI e_cont=0
                PARTE T96
            12 x INT((m_ancho-266-40)/300) + 2
            4 x INT((tra1-133-28-40)/300) + 2
            4 x INT((tra2-tra1-56-40)/300) + 2
            4 x INT((m_alto-tra2-130-28-40)/300) + 2
                FIN DESARME
        FIN DESARME

      
      /* NO lleva travesanio */
        DESARMAR SOLO SI tra1=0 .AND. tra2=0
         VIDRIOS                
            1 de m_ancho-266-26 x m_alto-263-26
        FIN DESARME

      /* LLEVA un TRAVESANIO */
        DESARMAR SOLO SI tra1>0 .AND. tra2=0
         VIDRIOS
            1 de m_ancho-266-26 x tra1-133-28-26
         PANELES
            1 de m_ancho-266-26 x m_alto-tra1-130-28-26
        FIN DESARME

      /* LLEVA 2 TRAVESANIOS */
        DESARMAR SOLO SI tra1>0 .AND. tra2>0
         VIDRIOS
            1 de m_ancho-266-26 x tra1-133-28-26
         PANELES
            1 de m_ancho-266-26 x tra2-tra1-56-26
         OTROS INTERIORES
            1 de m_ancho-266-26 x m_alto-tra2-130-28-26
        FIN DESARME

      /* MECANISMO PUERTA DE UNA HOJA */
        PARTE E83
                1 x 4
        PARTE E83
                1 x 2

        DESARMAR SOLO SI caja_p=0
        PARTE PIVOT
                1 x 1
        FIN DESARME

        PARTE 5006
                1 x 1

      /* PORTA FELPA */
        DESARMAR SOLO SI manijon>1
         SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
                1 x 2
        FIN DESARME

       
      DESARMAR SOLO SI caja_p>0
         PARTE CAJAP
                1 x 1
      FIN DESARME

      PARTE C11
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
      /* LLEVA 2 TRAVESANIOS */
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
      PERFIL C6075
      4 x m_ancho/2-70
      PERFIL C6075
      4 x m_alto-71

      CORTES A 45:
      PERFIL C6077
         4 x m_ancho/2-62
      PERFIL C6077
         4 x m_alto-63

      CORTES A RECTO:
      PERFIL C6042
         2 x m_ancho/2-212

      CORTES A 45:
    /* NO Lleva travesa¤o intermedio */
        DESARMAR SOLO SI tra1=0 .AND. tra2=0
                        SEGUN cv_ext PERFIL C6049,C6050
         4 x m_ancho/2-212-e_cont
         4 x m_alto-263
                        SEGUN contravid PERFIL C6045,C6046,C6047,C6048
         4 x m_ancho/2-212-e_cont
         4 x m_alto-263

                DESARMAR SOLO SI e_cont=0
                 PARTE T96
            8 x INT((m_ancho/2-212-40)/300) + 2
            8 x INT((m_alto-263-40)/300) + 2
                FIN DESARME
        FIN DESARME

      /* Lleva un travesa¤o intermedio */
        DESARMAR SOLO SI tra1>0 .AND. tra2=0
         CORTES A RECTO:
         PERFIL C6042
            2 x m_ancho/2-212
         CORTES A 45:
                        SEGUN cv_ext PERFIL C6049,C6050
            8 x m_ancho/2-212-e_cont
            4 x tra1-133-28
            4 x m_alto-tra1-130-28
                        SEGUN contravid PERFIL C6045,C6046,C6047,C6048
            8 x m_ancho/2-212-e_cont
            4 x tra1-133-28
            4 x m_alto-tra1-130-28

                DESARMAR SOLO SI e_cont=0
         PARTE T96
            16 x INT((m_ancho/2-212-40)/300) + 2
            8 x INT((tra1-133-28-40)/300) + 2
            8 x INT((m_alto-tra1-130-28-40)/300) + 2
                FIN DESARME
        FIN DESARME
      /* Lleva dos travesa¤o intermedio */
        DESARMAR SOLO SI tra1>0 .AND. tra2>0
         CORTES A RECTO:
         PERFIL C6042
            4 x m_ancho/2-212
         CORTES A 45:
                        SEGUN cv_ext PERFIL C6049,C6050
           12 x m_ancho/2-212-e_cont
            4 x tra1-133-28
            4 x tra2-tra1-56
            4 x m_alto-tra2-130-28
                        SEGUN contravid PERFIL C6045,C6046,C6047,C6048
           12 x m_ancho/2-212-e_cont
            4 x tra1-133-28
            4 x tra2-tra1-56
            4 x m_alto-tra2-130-28
                DESARMAR SOLO SI e_cont=0
         PARTE T96
           24 x INT((m_ancho/2-212-40)/300) + 2
            8 x INT((tra1-133-28-40)/300) + 2
            8 x INT((tra2-tra1-60-40)/300) + 2
            8 x INT((m_alto-tra2-130-28-40)/300) + 2
                FIN DESARME
        FIN DESARME
   
     /* NO lleva travesanio */
        DESARMAR SOLO SI tra1=0 .AND. tra2=0
         VIDRIOS
            2 de m_ancho/2-212-26 x m_alto-263-26
        FIN DESARME

      /* LLEVA un TRAVESANIO */
        DESARMAR SOLO SI tra1>0 .AND. tra2=0
         VIDRIOS
            2 de m_ancho/2-212-26 x tra1-133-28-26
         PANELES
            2 de m_ancho/2-212-26 x m_alto-tra1-130-28-26
        FIN DESARME

      /* LLEVA 2 TRAVESANIOS */
        DESARMAR SOLO SI tra1>0 .AND. tra2>0
         VIDRIOS
            2 de m_ancho/2-212-26 x tra1-133-28-26
         PANELES
            2 de m_ancho/2-212-26 x tra2-tra1-56-26
         OTROS INTERIORES
            2 de m_ancho/2-212-26 x m_alto-tra2-130-28-26
        FIN DESARME

      /* MECANISMO PUERTA DE DOS HOJAS */
      PARTE E83
         1 x 2
      PARTE E83
         1 x 8
      PARTE 5006
         1 x 1
        DESARMAR SOLO SI manijon>1
         SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
            1 x 4
        FIN DESARME

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

        PARTE C11
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



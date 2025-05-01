/* A30NEW PORTON DE 3,4,5 HOJAS*/ 
/*e_cont es el espesor de los contravidrios segun sean rectos o curvos*/

/* PREMARCO*/
PRODUCTO PMA30N

/* Marco */
    CALCULOS
     e_cont:=if(cv_ext=1,44,0)
   FIN CALCULOS

  SEGUN marco PERFIL C6040,C6055,C6059
      CORTES A 45:
      1 x m_ancho
      CORTES A 90 Y 45:
      2 x m_alto
 
   /* PORTON DE 3 HOJAS */
DESARMAR SOLO SI n_hojas=3
   DESARMAR SOLO SI marco=2 .OR. marco=3
      CORTES A 45:
      PERFIL C6041
      3 x m_ancho/3-22
      CORTES A 90 Y 45:
      6 x m_alto-28.2

      CORTES A RECTO:
      PERFIL C6043
      3 x m_ancho/3-173.2

	/* acople */
        PERFIL C6044
      2 x m_alto-28.2

      CORTES A RECTO:

      /* NO Lleva travesa¤o intermedio */
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         SEGUN cv_ext PERFIL C6049,C6050
            6 x m_ancho/3-173.2-e_cont    
            6 x m_alto-233   
            SEGUN contravid PERFIL C6045,C6046,C6047,C6048
            6 x m_ancho/3-173.2-e_cont
            6 x m_alto-233
         DESARMAR SOLO SI cv_ext=2
            PARTE T96
               6 x INT(m_ancho/3-173.2-e_cont)/300+2
               6 x INT(m_alto-233)/300+2
         FIN DESARME
      FIN DESARME


      /* Lleva un travesa¤o intermedio */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         CORTES A RECTO:
         PERFIL C6042
            3 x m_ancho/3-173

         CORTES A 45:
            SEGUN cv_ext PERFIL C6049,C6050
               12 x m_ancho/3-e_cont
               6 x tra1-136-28
               6 x m_alto-tra1-28-97

            SEGUN contravid PERFIL C6045,C6046,C6047,C6048
               12 x m_ancho/3-e_cont
               6 x tra1-136-28
               6 x m_alto-tra1-28-97

         DESARMAR SOLO SI cv_ext=2
            PARTE T96
               24 x INT(m_ancho/3-e_cont)/300+2
               12 x INT(tra1-136-28)/300+2
               12 x INT(m_alto-tra1-28-97)/300+2
         FIN DESARME
      FIN DESARME
      /* Lleva dos travesa¤o intermedio */
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         CORTES A RECTO:
         PERFIL C6042
            3 x m_ancho/3-173
         CORTES A 45:
            SEGUN cv_ext PERFIL C6049,C6050 
               18 x m_ancho/3 - e_cont
               6 x tra1-136-28
               6 x tra2-tra1-56
               6 x m_alto-tra2-97-28
   
            SEGUN contravid PERFIL C6045,C6046,C6047,C6048
               18 x m_ancho/3-e_cont
               6 x tra1-136-28
               6 x tra2-tra1-56
               6 x m_alto-tra2-97-28

         DESARMAR SOLO SI cv_ext=2
            PARTE T96
               28 x INT(m_ancho/3-e_cont)/300+2
               12 x INT(tra1-136-28)/300+2
               12 x INT(tra2-tra1-56)/300+2
               12 x INT(m_alto-tra2-97-28)/300+2
         FIN DESARME
      FIN DESARME

      /* NO lleva travesanio */
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         VIDRIOS
            3 de m_ancho/3-173.2-26 x m_alto-233-26
      FIN DESARME

      /* LLEVA un TRAVESANIO */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         VIDRIOS
            3 de m_ancho/3-173.2-26 x tra1-136-38-26
         PANELES
            3 de m_ancho/3-173.2-26 x m_alto-tra1-97-28-26
      FIN DESARME

      /* LLEVA 2 TRAVESANIOS */
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         VIDRIOS
            3 de m_ancho/3-173.2-26 x tra1-136-28-26
         PANELES
            3 de m_ancho/3-173.2-26 x tra2-tra1-58-26
         OTROS INTERIORES
            3 de m_ancho/3-173.2-26 x m_alto-tra2-97-28-26
      FIN DESARME
   FIN DESARME

            /*::::::::::::::::::::::::::::::::::::::::::::::::::

   DESARMAR SOLO SI marco=1
      CORTES A 45:
      PERFIL C6041
      3 x m_ancho/3-31
      CORTES A 90 Y 45:
      6 x m_alto-41.8

      CORTES A RECTO:
      PERFIL C6043
      3 x m_ancho/3-182.26

	/* acople */
        PERFIL C6044
      2 x m_alto-42
	PERFIL C5989
        4 x (m_alto/2)-50

      CORTES A RECTO:

      /* NO Lleva travesa¤o intermedio */
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         SEGUN cv_ext PERFIL C6049,C6050
            6 x m_ancho/3-182.26-e_cont    
            6 x m_alto-233-13   
         SEGUN contravid PERFIL C6045,C6046,C6047,C6048
            6 x m_ancho/3-182.26-e_cont
            6 x m_alto-233-13

         DESARMAR SOLO SI cv_ext=2 
            PARTE T96
                6 x INT(m_ancho/3-182.26-e_cont)/300+2
                6 x INT(m_alto-233)/300+2
         FIN DESARME
      FIN DESARME

      /* Lleva un travesa¤o intermedio */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         CORTES A RECTO:
         PERFIL C6042
            3 x m_ancho/3-182.26

         CORTES A 45:
            SEGUN cv_ext PERFIL  C6049,C6050
               12 x m_ancho/3-182.26-e_cont
               6 x tra1-136-28
               6 x m_alto-tra1-28-104.4-13

            SEGUN contravid PERFIL C6045,C6046,C6047,C6048
               12 x m_ancho/3-182.26-e_cont
               6 x tra1-136-28
               6 x m_alto-tra1-28-97-13

         DESARMAR SOLO SI cv_ext=2
            PARTE T96
               24 x INT(m_ancho/3-182.26-e_cont)/300+2
                  12 x INT(tra1-136-28)/300+2
                  12 x INT(m_alto-tra1-28-97-13)/300+2
         FIN DESARME
      FIN DESARME
      /* Lleva dos travesa¤o intermedio */
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         CORTES A RECTO:
         PERFIL C6042
            3 x m_ancho/3-182.26
         CORTES A 45:
            SEGUN cv_ext PERFIL C6049,C6050 
               18 x m_ancho/3-182.26 - e_cont
               6 x tra1-136-28
               6 x tra2-tra1-56
               6 x m_alto-tra2-97-28-13

            SEGUN contravid PERFIL C6045,C6046,C6047,C6048
               18 x m_ancho/3-182.26-e_cont
               6 x tra1-136-28
               6 x tra2-tra1-56
               6 x m_alto-tra2-97-28-13

         DESARMAR SOLO SI cv_ext=2

            PARTE T96
               28 x INT(m_ancho/3-182.26-e_cont)/300+2
               12 x INT(tra1-136-28)/300+2
               12 x INT(tra2-tra1-56)/300+2
               12 x INT(m_alto-tra2-97-28-13)/300+2
         FIN DESARME
      FIN DESARME

      /* NO lleva travesanio */
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         VIDRIOS
            3 de m_ancho/3-182.26-26 x m_alto-233-13-26
      FIN DESARME

      /* LLEVA un TRAVESANIO */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         VIDRIOS
            3 de m_ancho/3-182.26-26 x tra1-136-38-26-13
         PANELES
            3 de m_ancho/3-182.26-26 x m_alto-tra1-97-28-26-13
      FIN DESARME

      /* LLEVA 2 TRAVESANIOS */
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         VIDRIOS
            3 de m_ancho/3-182.26-26 x tra1-136-28-26-13
         PANELES
            3 de m_ancho/3-182.26-26 x tra2-tra1-58-26-13
         OTROS INTERIORES
            3 de m_ancho/3-182.26-26 x m_alto-tra2-97-28-26-13
      FIN DESARME
   FIN DESARME

      /* MECANISMO PORTON DE 3 HOJAS */
      PARTE E83
         1 x 2
      PARTE E70
         2 x 3
      PARTE E80
         2 x 3
   DESARMAR SOLO SI marco=2 .OR. marco=3
      PARTE H62
         3 x 3
   FIN DESARME
   DESARMAR SOLO SI marco=1
      PARTE H103
         3 x 3
   FIN DESARME
   DESARMAR SOLO SI manijon>1
         SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
            1 x 2
   FIN DESARME
      SEGUN tipo_cerr PARTE H51,P320,P323
         1 x 1
         
      PARTE MANIJA
         1 x 1

      PARTE C14
         6 x (m_ancho-506)/3000

      PARTE B67
         1 x m_ancho/1000
         4 x m_alto/1000

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
      PARTE B68
         /* NO LLEVA TRAVESANIO */
   DESARMAR SOLO SI tra1=0 .AND. tra2=0
            2 x (m_ancho-180)/1000
            6 x (m_alto-180)/1000
   FIN DESARME
         /* LLEVA 1 TRAVESANIO */
   DESARMAR SOLO SI tra1>0 .AND. tra2=0
            4 x (m_ancho-180)/1000
            6 x (m_alto-270)/1000
   FIN DESARME
         /* LLEVA 2 TRAVESANIOs */
   DESARMAR SOLO SI tra1>0 .AND. tra2>0
            6 x (m_ancho-180)/1000
            6 x (m_alto-350)/1000
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
         6 x (m_alto-180)/1000
   FIN DESARME
      /* LLEVA 1 TRAVESANIO */
   DESARMAR SOLO SI tra1>0 .AND. tra2=0
         4 x (m_ancho-180)/1000
         6 x (m_alto-270)/1000
   FIN DESARME
      /* LLEVA 2 TRAVESANIOs */
   DESARMAR SOLO SI tra1>0 .AND. tra2>0
         6 x (m_ancho-180)/1000
         6 x (m_alto-350)/1000
   FIN DESARME

   DESARMAR SOLO SI tra1=0 .AND. tra2=0
         PARTE T20
            3 x 8
        PARTE T100
            3 x 8
   FIN DESARME
   DESARMAR SOLO SI tra1>0 .AND. tra2=0
         PARTE T20
            3 x 12
        PARTE T100
            3 x 12
   FIN DESARME
   DESARMAR SOLO SI tra1>0 .AND. tra2>0
         PARTE T20
            3 x 16
        PARTE T100
            3 x 16
   FIN DESARME
FIN DESARME

 /* Porton de 3 Hojas*/    :::::::::::::::::::::::::::::::::::::::::::


   /* PORTON DE 4 HOJAS */
DESARMAR SOLO SI n_hojas=4

      CORTES A 45:
      PERFIL C6041
   DESARMAR SOLO SI marco=2 .OR. marco=3
      4 x m_ancho/4-19
      CORTES A 90 Y 45:
      8 x m_alto-28.2

      CORTES A RECTO:
        PERFIL C6043
      4 x m_ancho/4-169.75
	/* acople */
        PERFIL C6044
        3 x m_alto-28.2
      
      CORTES A 45:

      /* NO Lleva travesa¤o intermedio */
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         SEGUN cv_ext PERFIL C6049,C6050
                        8 x m_ancho/4-169.75-e_cont
                        8 x m_alto-233
                        SEGUN contravid PERFIL C6045,C6046,C6047,C6048
                        8 x m_ancho/4-169.75-e_cont
                        8 x m_alto-233

         DESARMAR SOLO SI cv_ext=2
         PARTE T96
                        16 x INT(m_ancho/4-169.75-e_cont)/300+2
                        16 x INT(m_alto-233)/300+2
         FIN DESARME
      FIN DESARME

      /* Lleva un travesa¤o intermedio */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         CORTES A RECTO:
         PERFIL C6042
            4 x m_ancho/4-169.75

         CORTES A 45:
            SEGUN cv_ext PERFIL C6049,C6050
               16 x m_ancho/4-169-e_cont
               8 x tra1-136-28
               8 x m_alto-tra1-97-28
            SEGUN contravid PERFIL C6045,C6046,C6047,C6048
               16 x m_ancho/4-169-e_cont
               8 x tra1-136-28
               8 x m_alto-tra1-97-28

         DESARMAR SOLO SI cv_ext=2

         PARTE T96
                        32 x INT(m_ancho/4-169-e_cont)/300+2
                        16 x INT(tra1-136-28)/300+2
                        16 x INT(m_alto-tra1-97-28)/300+2
         FIN DESARME
      FIN DESARME
      /* Lleva dos travesa¤o intermedio */
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         CORTES A RECTO:
         PERFIL C6042
            8 x m_ancho/4-169.73
         CORTES A 45:
                        SEGUN cv_ext PERFIL C6045,C6049
                        24 x m_ancho/4-169.75-e_cont
                        8 x tra1-136-28
                        8 x tra2-tra1-28-28
                        8 x m_alto-tra2-97-28
                        SEGUN contravid PERFIL C6045,C6046,C6047,C6048
                        24 x m_ancho/4-169.75-e_cont
                        8 x tra1-136-28
                        8 x tra2-tra1-28-28
                        8 x m_alto-tra2-97-28

         DESARMAR SOLO SI cv_ext=2
            PARTE T96
                        35 x INT(m_ancho/4-169.75-e_cont)/300+2
                        16 x INT(tra1-136-28)/300+2
                        16 x INT(tra2-tra1-28-28)/300+2
                        16 x INT(m_alto-tra2-97-28)/300+2
         FIN DESARME
      FIN DESARME
      /* NO lleva travesanio */
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         VIDRIOS
            4 de m_ancho/4-169.75-26 x m_alto-233-26
      FIN DESARME

      /* LLEVA un TRAVESANIO */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         VIDRIOS
            4 de m_ancho/4-169.75-26 x tra1-136-28-26
         PANELES
            4 de m_ancho/4-169.75-26 x m_alto-tra1-97-28-26
      FIN DESARME

      /* LLEVA 2 TRAVESANIOS */
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         VIDRIOS
            4 de m_ancho/4-169.75-26 x tra1-136-28-26
         PANELES
            4 de m_ancho/4-169.75-26 x tra2-tra1-58-26
         OTROS INTERIORES
            4 de m_ancho/4-169.75-26 x m_alto-tra2-97-28-26
      FIN DESARME
   FIN DESARME

            /*::::::::::::::::::::::::::::::::::::::::::::::::

   DESARMAR SOLO SI marco=1
      PERFIL C6041
      4 x m_ancho/4-25
      CORTES A 90 Y 45:
      8 x m_alto-41.8

      CORTES A RECTO:
        PERFIL C6043
      4 x m_ancho/4-176.55

	/* acople */
        PERFIL C6044
        3 x m_alto-41.8

	PERFIL C5989
        6 x (m_alto/2)-50

      CORTES A 45:

      /* NO Lleva travesa¤o intermedio */
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         SEGUN cv_ext PERFIL C6049,C6050
                        8 x m_ancho/4-176.55-e_cont
                        8 x m_alto-233-13
                        SEGUN contravid PERFIL C6045,C6046,C6047,C6048
                        8 x m_ancho/4-176.55-e_cont
                        8 x m_alto-233-13

         DESARMAR SOLO SI cv_ext=2

         PARTE T96
                        16 x INT(m_ancho/4-176.55-e_cont)/300+2
                        16 x INT(m_alto-233-13)/300+2
         FIN DESARME
      FIN DESARME

      /* Lleva un travesa¤o intermedio */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         CORTES A RECTO:
         PERFIL C6042
            4 x m_ancho/4-176.55

         CORTES A 45:
                        SEGUN cv_ext PERFIL C6049,C6050
                        16 x m_ancho/4-176.55-e_cont
                        8 x tra1-136-28
                        8 x m_alto-tra1-97-28-13
                        SEGUN contravid PERFIL C6045,C6046,C6047,C6048
                        16 x m_ancho/4-176.55-e_cont
                        8 x tra1-136-28
                        8 x m_alto-tra1-97-28-13
         DESARMAR SOLO SI cv_ext=2

         PARTE T96
                        32 x INT(m_ancho/4-176.55-e_cont)/300+2
                        16 x INT(tra1-136-28)/300+2
                        16 x INT(m_alto-tra1-97-28-13)/300+2
         FIN DESARME
      FIN DESARME
      /* Lleva dos travesa¤o intermedio */
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         CORTES A RECTO:
         PERFIL C6042
            8 x m_ancho/4-176.55
         CORTES A 45:
                        SEGUN cv_ext PERFIL C6045,C6049
                        24 x m_ancho/4-176.55-e_cont
                        8 x tra1-136-28
                        8 x tra2-tra1-28-28
                        8 x m_alto-tra2-97-28-13
                        SEGUN contravid PERFIL C6045,C6046,C6047,C6048
                        24 x m_ancho/4-176.55-e_cont
                        8 x tra1-136-28
                        8 x tra2-tra1-28-28
                        8 x m_alto-tra2-97-28-13


         DESARMAR SOLO SI cv_ext=2
   
               PARTE T96
                           35 x INT(m_ancho/4-176.55-e_cont)/300+2
                           16 x INT(tra1-136-28)/300+2
                           16 x INT(tra2-tra1-28-28)/300+2
                           16 x INT(m_alto-tra2-97-28-13)/300+2
         FIN DESARME
      FIN DESARME
      /* NO lleva travesanio */
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         VIDRIOS
            4 de m_ancho/4-176.55-26 x m_alto-233-13-26
      FIN DESARME

      /* LLEVA un TRAVESANIO */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         VIDRIOS
            4 de m_ancho/4-176.55-26 x tra1-136-28-26
      PANELES
            4 de m_ancho/4-176.55-26 x m_alto-tra1-97-28-26-13
      FIN DESARME

      /* LLEVA 2 TRAVESANIOS */
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         VIDRIOS
            4 de m_ancho/4-176.55-26 x tra1-136-28-26-13
         PANELES
            4 de m_ancho/4-176.55-26 x tra2-tra1-58-26
         OTROS INTERIORES
            4 de m_ancho/4-176.55-26 x m_alto-tra2-97-28-26-13
      FIN DESARME
   FIN DESARME

   /* MECANISMO PORTON DE 4 HOJAS */
   PARTE E80
      2 x 4
   PARTE E83
      1 x 2
   PARTE E70
      2 x 4
   SEGUN tipo_cerr PARTE H51,P320,P323
      1 x 1
   DESARMAR SOLO SI marco=2 .OR. marco=3
   PARTE H62
      4 x 3
   FIN DESARME
   DESARMAR SOLO SI marco=1
   PARTE H103
      4 x 3
   FIN DESARME
   DESARMAR SOLO SI manijon>1
      SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
         1 x 2
   FIN DESARME



   PARTE MANIJA
      1 x 1

   PARTE C14
      4 x (m_ancho-664)/4000

   PARTE B67
      1 x m_ancho/1000
      5 x m_alto/1000

   PARTE B52
      4 x m_ancho/1000
      8 x m_alto/1000
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
         8 x (m_alto-180)/1000
   FIN DESARME
      /* LLEVA 1 TRAVESANIO */
   DESARMAR SOLO SI tra1>0 .AND. tra2=0
      4 x (m_ancho-180)/1000
      8 x (m_alto-270)/1000
   FIN DESARME
   /* LLEVA 2 TRAVESANIOs */
   DESARMAR SOLO SI tra1>0 .AND. tra2>0
      6 x (m_ancho-180)/1000
      8 x (m_alto-350)/1000
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
      8 x (m_alto-180)/1000
   FIN DESARME
   /* LLEVA 1 TRAVESANIO */
   DESARMAR SOLO SI tra1>0 .AND. tra2=0
      4 x (m_ancho-180)/1000
      8 x (m_alto-270)/1000
   FIN DESARME
   /* LLEVA 2 TRAVESANIOs */
   DESARMAR SOLO SI tra1>0 .AND. tra2>0
      6 x (m_ancho-180)/1000
      8 x (m_alto-350)/1000
   FIN DESARME

   DESARMAR SOLO SI tra1=0 .AND. tra2=0
      PARTE T20
         4 x 8
     PARTE T100
         4 x 8
   FIN DESARME
   DESARMAR SOLO SI tra1>0 .AND. tra2=0
      PARTE T20
         4 x 12
     PARTE T100
         4 x 12
   FIN DESARME
   DESARMAR SOLO SI tra1>0 .AND. tra2>0
      PARTE T20
         4 x 16
     PARTE T100
         4 x 16
   FIN DESARME
FIN DESARME


 /* Porton de 4 Hojas*/   :::::::::::::::::::::::::::::::::::::::

                                                                 
   /* PORTON DE 5 HOJAS */
   DESARMAR SOLO SI n_hojas=5

      CORTES A 45:
      PERFIL C6041
      DESARMAR SOLO SI marco=2 .OR. marco=3
      5 x m_ancho/5-16
      CORTES A 90 Y 45:
      10 x m_alto-28.2

      CORTES A RECTO:
        PERFIL C6043
      5 x m_ancho/5-167.68

	/* acople */
        PERFIL C6044
        4 x m_alto-28.2
    
      CORTES A 45:

      /* NO Lleva travesa¤o intermedio */
                DESARMAR SOLO SI tra1=0 .AND. tra2=0
         SEGUN cv_ext PERFIL C6049,C6050
                        10 x m_ancho/5-167.68-e_cont
                        10 x m_alto-233
                        SEGUN contravid PERFIL C6045,C6046,C6047,C6048
                        10 x m_ancho/5-167.68-e_cont
                        10 x m_alto-233

               DESARMAR SOLO SI cv_ext=2
         PARTE T96
            20 x INT(((m_ancho-811-40)/5)/300) + 2
            20 x INT((m_alto-233-40)/300) + 2
                FIN DESARME
                FIN DESARME


      /* Lleva un travesa¤o intermedio */
                DESARMAR SOLO SI tra1>0 .AND. tra2=0
         CORTES A RECTO:
         PERFIL C6042
	    5 x (m_ancho-821)/5

         CORTES A 45:
                        SEGUN cv_ext PERFIL C6049,C6050
                        20 x m_ancho/5-167.68-e_cont
                        10 x tra1-136-28
                        10 x m_alto-tra1-97-28
                        SEGUN contravid PERFIL C6045,C6046,C6047,C6048
                        20 x m_ancho/5-167.68-e_cont
                        10 x tra1-136-28
                        10 x m_alto-tra1-97-28

              DESARMAR SOLO SI cv_ext=2
         PARTE T96
                        40 x INT(m_ancho/5-167.68-e_cont)/300+2
                        20 x INT(tra1-136-28)/300+2
                        20 x INT(m_alto-tra1-97-28)/300+2
               FIN DESARME
               FIN DESARME

      /* Lleva dos travesa¤o intermedio */
                DESARMAR SOLO SI tra1>0 .AND. tra2>0
         CORTES A RECTO:
         PERFIL C6042
	    10 x (m_ancho-821)/5
         CORTES A 45:
                        SEGUN cv_ext PERFIL C6049,C6050
                        30 x m_ancho/5-167.68-e_cont
                        10 x tra1-136-28
                        10 x tra2-tra1-28-28
                        10 x m_alto-tra2-97-28
                        SEGUN contravid PERFIL C6045,C6046,C6047,C6048
                        30 x m_ancho/5-167.68-e_cont
                        10 x tra1-136-28
                        10 x tra2-tra1-28-28
                        10 x m_alto-tra2-97-28

                DESARMAR SOLO SI cv_ext=2
         PARTE T96
                        30 x INT(m_ancho/5-167.68-e_cont)/300+2
                        10 x INT(tra1-136-28)/300+2
                        10 x INT(tra2-tra1-28-28)/300+2
                        10 x INT(m_alto-tra2-97-28)/300+2
                FIN DESARME
                FIN DESARME
      /* NO lleva travesanio */
                DESARMAR SOLO SI tra1=0 .AND. tra2=0
         VIDRIOS
            5 de m_ancho/5-167.68-26 x m_alto-233-26
                FIN DESARME

      /* LLEVA un TRAVESANIO */
                DESARMAR SOLO SI tra1>0 .AND. tra2=0
         VIDRIOS
            5 de m_ancho/5-167.68-26 x tra1-136-28-26
         PANELES
            5 de m_ancho/5-167.68-26 x m_alto-tra1-97-28-26
                FIN DESARME
                                                  
      /* LLEVA 2 TRAVESANIOS */
                DESARMAR SOLO SI tra1>0 .AND. tra2>0
         VIDRIOS
            5 de m_ancho/5-167.68-26 x tra1-136-28-26
         PANELES
            5 de m_ancho/5-167.68-26 x tra2-tra1-56-26
         OTROS INTERIORES
            5 de m_ancho/5-167.68-26 x m_alto-tra2-97-28-26
                FIN DESARME
        FIN DESARME
      

          /*:::::::::::::::::::::::::::::::::::::::::::::

        DESARMAR SOLO SI marco=1
      PERFIL C6041
      5 x m_ancho/5-22
      CORTES A 90 Y 45:
      10 x m_alto-41.8

      CORTES A RECTO:
        PERFIL C6043
      5 x m_ancho/5-173.12

	/* acople */
        PERFIL C6044
        4 x m_alto-41.8

	PERFIL C5989
        10 x (m_alto/2)-50

      CORTES A 45:

      /* NO Lleva travesa¤o intermedio */
                DESARMAR SOLO SI tra1=0 .AND. tra2=0
         SEGUN cv_ext PERFIL C6049,C6050
                        10 x m_ancho/5-167.68-26-e_cont
                        10 x m_alto-233-13
                        SEGUN contravid PERFIL C6045,C6046,C6047,C6048
                        10 x m_ancho/5-167.68-26-e_cont
                        10 x m_alto-233-13
                DESARMAR SOLO SI cv_ext=2
         PARTE T96
            20 x INT(((m_ancho-811-40)/5)/300) + 2
            20 x INT((m_alto-233-13-40)/300) + 2
                FIN DESARME
                FIN DESARME

      /* Lleva un travesa¤o intermedio */
                DESARMAR SOLO SI tra1>0 .AND. tra2=0
         CORTES A RECTO:
         PERFIL C6042
	    5 x (m_ancho-821)/5

         CORTES A 45:
                        SEGUN cv_ext PERFIL C6049,C6050
                        20 x m_ancho/5-167.68-26-e_cont
                        10 x tra1-136-28
                        10 x m_alto-tra1-97-28-13
                        SEGUN contravid PERFIL C6045,C6046,C6047,C6048
                        20 x m_ancho/5-167.68-26-e_cont
                        10 x tra1-136-28
                        10 x m_alto-tra1-97-28-13

                DESARMAR SOLO SI cv_ext=2
         PARTE T96
                        40 x INT(m_ancho/5-167.68-26-e_cont)/300+2
                        20 x INT(tra1-136-28)/300+2
                        20 x INT(m_alto-tra1-97-28-13)/300+2
                FIN DESARME
                FIN DESARME
      /* Lleva dos travesa¤o intermedio */
                DESARMAR SOLO SI tra1>0 .AND. tra2>0
         CORTES A RECTO:
         PERFIL C6042
	    10 x (m_ancho-821)/5
         CORTES A 45:
                        SEGUN cv_ext PERFIL C6049,C6050
                        30 x m_ancho/5-167.68-26-e_cont
                        10 x tra1-136-28
                        10 x tra2-tra1-28-28
                        10 x m_alto-tra2-97-28-13
                        SEGUN contravid PERFIL C6045,C6046,C6047,C6048
                        30 x m_ancho/5-167.68-26-e_cont
                        10 x tra1-136-28
                        10 x tra2-tra1-28-28
                        10 x m_alto-tra2-97-28-13
                DESARMAR SOLO SI cv_ext=2
         PARTE T96
                        30 x INT(m_ancho/5-167.68-26-e_cont)/300+2
                        10 x INT(tra1-136-28)/300+2
                        10 x INT(tra2-tra1-28-28)/300+2
                        10 x INT(m_alto-tra2-97-28-13)/300+2
                FIN DESARME
                FIN DESARME
      /* NO lleva travesanio */
                DESARMAR SOLO SI tra1=0 .AND. tra2=0
         VIDRIOS
            5 de m_ancho/5-173.12-e_cont-26 x m_alto-233-13-26
                FIN DESARME

      /* LLEVA un TRAVESANIO */
                DESARMAR SOLO SI tra1>0 .AND. tra2=0
         VIDRIOS
            5 de m_ancho/5-173.12-26 x tra1-136-28-26
         PANELES
            5 de m_ancho/5-173.12-26 x m_alto-tra1-97-28-13-26
                FIN DESARME
                                                  
      /* LLEVA 2 TRAVESANIOS */
                DESARMAR SOLO SI tra1>0 .AND. tra2>0
         VIDRIOS
            5 de m_ancho/5-173.12-26 x tra1-136-28-26
         PANELES
            5 de m_ancho/5-173.12-26 x tra2-tra1-56-26
         OTROS INTERIORES
            5 de m_ancho/5-173.12-26 x m_alto-tra2-97-28-13-26
                FIN DESARME
        FIN DESARME

      /* MECANISMO PORTON DE 5 HOJAS */
      PARTE E70
         2 x 5
      PARTE E83
         1 x 2
      PARTE E70
         2 x 5
      SEGUN tipo_cerr PARTE H51,P320,P323
         1 x 1

      DESARMAR SOLO SI marco=2 .OR. marco=3
      PARTE H62
         3 x 3
      FIN DESARME
      DESARMAR SOLO SI marco=1
      PARTE H103
         3 x 3
      FIN DESARME
        DESARMAR SOLO SI manijon>1
         SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
            1 x 2
        FIN DESARME
            
      PARTE MANIJA
         1 x 1

      PARTE C14
         5 x (m_ancho-821)/5000

      PARTE B67
         1 x m_ancho/1000
         10 x m_alto/1000

      PARTE B52
         5 x m_ancho/1000
         10 x m_alto/1000
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
            10 x (m_alto-180)/1000
         FIN DESARME
         /* LLEVA 1 TRAVESANIO */
         DESARMAR SOLO SI tra1>0 .AND. tra2=0
            4 x (m_ancho-180)/1000
            10 x (m_alto-270)/1000
         FIN DESARME
         /* LLEVA 2 TRAVESANIOs */
         DESARMAR SOLO SI tra1>0 .AND. tra2>0
            6 x (m_ancho-180)/1000
            10 x (m_alto-350)/1000
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
         10 x (m_alto-180)/1000
      FIN DESARME
      /* LLEVA 1 TRAVESANIO */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         4 x (m_ancho-180)/1000
         10 x (m_alto-270)/1000
      FIN DESARME
      /* LLEVA 2 TRAVESANIOs */
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         6 x (m_ancho-180)/1000
         10 x (m_alto-350)/1000
      FIN DESARME

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         PARTE T20
            5 x 8
        PARTE T100
            5 x 8
      FIN DESARME
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         PARTE T20
            5 x 12
        PARTE T100
            5 x 12
      FIN DESARME
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         PARTE T20
            5 x 16
        PARTE T100
            5 x 16
      FIN DESARME


   FIN DESARME
 /* Porton de 5 Hojas*/



PRODUCTO MAPUER




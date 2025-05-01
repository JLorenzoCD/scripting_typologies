
/* cv_ext = contravidrio exterior (C6049 / C6050)*/
/* contravid = contravidrio interior */

CALCULOS
tra2:=0
par1:=0
FIN CALCULOS

/* PREMARCO*/
PRODUCTO PMA30N

CALCULOS
     e_cont:=if(cv_ext=1,44,0)
FIN CALCULOS

CALCULOS

ADVERTENCIA "Medidas no confirmadas por Aluar!!!"

   /* SI ESTA UNIFICADO, USA LAS VARIABLES DEL MARCO 
   DESARMAR SOLO SI unificado(1)!=0
      amarco:=tmarco()
      DESARMAR SOLO SI amarco=0
          marco:=3
      FIN DESARME
      DESARMAR SOLO SI amarco!=0
         marco:=amarco
      FIN DESARME

      tipo_patr:=ttrav()
   FIN DESARME
   m_desc:=
/* if(marco=1,32,0)
   d_tra:=0
/*if (tipo_patr=1,0,5)
   m_em:=25
/* if(marco=1,48,32)
   m_et:=16
/*if (tipo_patr=1,12,17)
   m_dto_u:=m_em-m_et
   
FIN CALCULOS

DESARMAR SOLO SI unificado(1)=0
/* Marco */
   SEGUN marco PERFIL C6040,C6055,C6059

      CORTES A 45:
      1 x m_ancho
      CORTES A 90 Y 45:
      2 x m_alto
FIN DESARME

   DESARMAR SOLO SI unificado(1)!=0
      DESARMAR SOLO SI unificado(2) != 0
         m_alto:=m_alto+m_dto_u
      FIN DESARME
      DESARMAR SOLO SI unificado(4) != 0
         m_alto:=m_alto+m_dto_u
      FIN DESARME
      DESARMAR SOLO SI unificado(8) != 0
         m_ancho:=m_ancho+m_dto_u
      FIN DESARME
      DESARMAR SOLO SI unificado(16) != 0
         m_ancho:=m_ancho+m_dto_u
      FIN DESARME
   FIN DESARME



    
DESARMAR SOLO SI n_hojas=1
        DESARMAR SOLO SI marco=1
   /* Puertas de una hoja */

      CORTES A 45:
      PERFIL C6041
      1 x m_ancho-74
      CORTES A 90 Y 45:
      2 x m_alto-42

      CORTES A RECTO:
      PERFIL C6043
      1 x m_ancho-228

      CORTES A 45:

      /* NO Lleva travesa¤o intermedio */
                DESARMAR SOLO SI tra1=0
         SEGUN cv_ext PERFIL C6049,C6050
            2 x m_ancho-228-e_cont
            2 x m_alto-245
            SEGUN contravid PERFIL C6045,C6046,C6047,C6048
         2 x m_ancho-228-e_cont
         2 x m_alto-245
                        DESARMAR SOLO SI cv_ext=1
         PARTE T96
            4 x INT((m_ancho-228-40)/300) + 2
            4 x INT((m_alto-245-40)/300) + 2
                        FIN DESARME
                FIN DESARME

      /* Lleva un travesa¤o intermedio */
                DESARMAR SOLO SI tra1>0
         CORTES A RECTO:
         PERFIL C6042
            tra1 x m_ancho-228
         CORTES A 45:
                        SEGUN cv_ext PERFIL C6049,C6050
            2*(tra1+1) x m_ancho-228-e_cont
            2 x m_alto-(tra1*56)-246
            SEGUN contravid PERFIL C6045,C6046,C6047,C6048
            2*(tra1+1) x m_ancho-228-e_cont
            2 x m_alto-(tra1*56)-246
                        DESARMAR SOLO SI cv_ext=1
         PARTE T96
            8 x INT((m_ancho-228-40)/300) + 2
            4 x INT((m_alto-(tra1*56)-246-40)/300) + 2
                        FIN DESARME
                FIN DESARME
      
      /* NO lleva travesanio */
                DESARMAR SOLO SI tra1=0 
         VIDRIOS
            1 de m_ancho-228-26 x m_alto-245-26
                FIN DESARME

      /* LLEVA un TRAVESANIO */
                DESARMAR SOLO SI tra1>0 
         VIDRIOS
            tra1+1 de m_ancho-228-26 x (m_alto-(tra1*68)-246-12)/(tra1+1)
                FIN DESARME

        FIN DESARME

/*  ========================0



/* Puerta de rebatir escalonada linea A30NEW */


        DESARMAR SOLO SI marco=2 .OR. marco=3
  /* Puertas de una hoja */

      CORTES A 45:
      PERFIL C6041
      1 x m_ancho-47
      CORTES A 90 Y 45:
      2 x m_alto-29

      CORTES A RECTO:
      PERFIL C6043
      1 x m_ancho-201

      CORTES A 45:

      /* NO Lleva travesa¤o intermedio */
                DESARMAR SOLO SI tra1=0 
         SEGUN cv_ext PERFIL C6049,C6050
            2 x m_ancho-201-e_cont
            2 x m_alto-232
            SEGUN contravid PERFIL C6045,C6046,C6047,C6048
         2 x m_ancho-201-e_cont
         2 x m_alto-232
                        DESARMAR SOLO SI cv_ext=1
         PARTE T96
            4 x INT((m_ancho-201-40)/300) + 2
            4 x INT((m_alto-234-40)/300) + 2
                        FIN DESARME
                FIN DESARME

      /* Lleva un travesa¤o intermedio */
                DESARMAR SOLO SI tra1>0 
         CORTES A RECTO:
         PERFIL C6042
            tra1 x m_ancho-201
         CORTES A 45:
                        SEGUN cv_ext PERFIL C6049,C6050
            2*(tra1+1) x m_ancho-201-e_cont
            2*(tra1+1) x (m_alto-(tra1*56)-232)/(tra1+1)
            SEGUN contravid PERFIL C6045,C6046,C6047,C6048
            2*(tra1+1) x m_ancho-201-e_cont
            2*(tra1+1) x (m_alto-(tra1*56)-232)/(tra1+1)
                        DESARMAR SOLO SI cv_ext=1
         PARTE T96
            8 x INT((m_ancho-201-40)/300) + 2
            4 x INT((m_alto-(tra1*56)-232-40)/300) + 2
                        FIN DESARME
                FIN DESARME

           /* NO lleva travesanio */
                DESARMAR SOLO SI tra1=0 
         VIDRIOS
            1 de m_ancho-220 x m_alto-258
                FIN DESARME

      /* LLEVA un TRAVESANIO */
                DESARMAR SOLO SI tra1>0 
         VIDRIOS
            tra1+1 de m_ancho-220 x (m_alto-(tra1*56)-232-26)/(tra1+1)

                FIN DESARME
        FIN DESARME
      /* MECANISMO PUERTA DE UNA HOJA */
      PARTE E80
         1 x 2
        DESARMAR SOLO SI marco = 1
      PARTE E70
         1 x 2
        FIN DESARME
        DESARMAR SOLO SI marco = 2 .OR. marco =3
      PARTE E83
         1 x 2
        FIN DESARME

      PARTE E70
         1 x 2
        DESARMAR SOLO SI marco = 1
      PARTE H103
         1 x 3
        FIN DESARME
        DESARMAR SOLO SI marco = 2 .OR. marco=3
      PARTE H62
         1 x 3
         FIN DESARME
      SEGUN cierre PARTE H51,P323
         1 x 1

        DESARMAR SOLO SI manijon>1
         SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
            1 x 2
        FIN DESARME

      PARTE H50
         1 x 1

        DESARMAR SOLO SI cierra_p>0
         PARTE CIEPTA
          1 x 1
        FIN DESARME

        DESARMAR SOLO SI caja_p>0
        PARTE CAJAP
          1 x 1
        FIN DESARME

      PARTE C14
         2 x (m_ancho-180)/1000

      PARTE B67
         1 x m_ancho/1000
         2 x m_alto/1000

      PARTE B52
         1 x m_ancho/1000
         2 x m_alto/1000
DESARMAR SOLO SI taco_reg=1
      PARTE T88
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
FIN DESARME
      PARTE T1
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
      PARTE T114
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
      PARTE B68
         /* NO LLEVA TRAVESANIO */
        DESARMAR SOLO SI tra1=0 
            2 x (m_ancho-180)/1000
            2 x (m_alto-180)/1000
        FIN DESARME
         /* LLEVA 1 TRAVESANIO */
        DESARMAR SOLO SI tra1>0 
            2*(tra1+1) x (m_ancho-180)/1000
            2 x (m_alto-270)/1000
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
        DESARMAR SOLO SI tra1=0
         2 x (m_ancho-180)/1000
         2 x (m_alto-180)/1000
        FIN DESARME
      /* LLEVA 1 TRAVESANIO */
        DESARMAR SOLO SI tra1>0
         2*(tra1+1) x (m_ancho-180)/1000
         2 x (m_alto-270)/1000
        FIN DESARME

        DESARMAR SOLO SI tra1=0
         PARTE T20
            1 x 4
        PARTE T100
            1 x 4
        FIN DESARME
        DESARMAR SOLO SI tra1>0
         PARTE T20
            tra1 x 4
        PARTE T100
            tra1 x 4
        FIN DESARME

        
FIN DESARME
 /* Puertas de una Hoja */
   /* =================================================== */

DESARMAR SOLO SI n_hojas=2
	DESARMAR SOLO SI marco=1
   /* Puertas de dos hojas */

      CORTES A 45:
      PERFIL C6041
      2 x m_ancho/2-40
      CORTES A 90 Y 45:
      4 x m_alto-42

      CORTES A RECTO:
      PERFIL C6043
         2 x m_ancho/2-193
      PERFIL C6044
         1 x m_alto-42

      CORTES A 45:

      /* NO Lleva travesa¤o intermedio */
                DESARMAR SOLO SI tra1=0 
                        SEGUN cv_ext PERFIL C6049,C6050
         4 x m_ancho/2-193-e_cont
         4 x m_alto-245
            SEGUN contravid PERFIL C6045,C6046,C6047,C6048
         4 x m_ancho/2-193-e_cont
         4 x m_alto-245
                        DESARMAR SOLO SI cv_ext=1
         PARTE T96
            8 x INT((m_ancho/2-193-40)/300) + 2
            8 x INT((m_alto-245-40)/300) + 2
                        FIN DESARME
                FIN DESARME

      /* Lleva un travesa¤o intermedio */
                DESARMAR SOLO SI tra1>0 
         CORTES A RECTO:
         PERFIL C6042
            2*tra1 x m_ancho/2-193
         CORTES A 45:
                        SEGUN cv_ext PERFIL C6049,C6050
            4*(tra1+1) x m_ancho/2-193-e_cont
            4*(tra1+1) x m_alto-(tra1*56)-246
            SEGUN contravid PERFIL C6045,C6046,C6047,C6048
            4*(tra1+1) x m_ancho/2-193-e_cont
            4*(tra1+1) x m_alto-(tra1*56)-246
                        DESARMAR SOLO SI cv_ext=1
         PARTE T96
            16 x INT((m_ancho/2-193-40)/300) + 2
            8 x INT((m_alto-(tra1*56)-246-40)/300) + 2
                        FIN DESARME
                FIN DESARME

                  
      /* NO lleva travesanio */
                DESARMAR SOLO SI tra1=0 
         VIDRIOS
            2 de m_ancho/2-205 x m_alto-245-26
                FIN DESARME

      /* LLEVA un TRAVESANIO */
      DESARMAR SOLO SI tra1>0 
         VIDRIOS
            2*(tra1+1) de m_ancho/2-205 x (m_alto-(tra1*68)-246-26)/(tra1+1)
      FIN DESARME
	FIN DESARME

  /*=============================00


        DESARMAR SOLO SI marco = 2 .OR. marco = 3
      CORTES A 45:
      PERFIL C6041
      2 x m_ancho/2-26
      CORTES A 90 Y 45:
      4 x m_alto-29

      CORTES A RECTO:
      PERFIL C6043
         2 x m_ancho/2-180
      PERFIL C6044
         1 x m_alto-29

      CORTES A 45:

      /* NO Lleva travesa¤o intermedio */
        DESARMAR SOLO SI tra1=0 
                        SEGUN cv_ext PERFIL C6049,C6050
         4 x m_ancho/2-180-e_cont
         4 x m_alto-196
            SEGUN contravid PERFIL C6045,C6046,C6047,C6048
         4 x m_ancho/2-180-e_cont
         4 x m_alto-196
                DESARMAR SOLO SI cv_ext=1
         PARTE T96
            8 x INT((m_ancho/2-180-40)/300) + 2
            8 x INT((m_alto-245-40)/300) + 2
                FIN DESARME
        FIN DESARME

      /* Lleva un travesa¤o intermedio */
        DESARMAR SOLO SI tra1>0 
         CORTES A RECTO:
         PERFIL C6042
            2*tra1 x m_ancho/2-180
         CORTES A 45:
                        SEGUN cv_ext PERFIL C6049,C6050
            4*(tra1+1) x m_ancho/2-180-e_cont
            4*(tra1+1) x m_alto-(tra1*56)-232
            SEGUN contravid PERFIL C6045,C6046,C6047,C6048
            4*(tra1+1) x m_ancho/2-180-e_cont
            4*(tra1+1) x m_alto-(tra1*56)-232
                DESARMAR SOLO SI cv_ext=1
         PARTE T96
            16 x INT((m_ancho/2-180-40)/300) + 2
            8 x INT((m_alto-(tra1*56)-232-40)/300) + 2
                FIN DESARME
        FIN DESARME

            
      /* NO lleva travesanio */
        DESARMAR SOLO SI tra1=0 
         VIDRIOS
            2 de m_ancho/2-205 x m_alto-208
        FIN DESARME

      /* LLEVA un TRAVESANIO */
        DESARMAR SOLO SI tra1>0 
         VIDRIOS
            2*(tra1+1) de m_ancho/2-205 x (m_alto-(tra1*68)-232-20)/(tra1+1)
        FIN DESARME

	FIN DESARME

      /* MECANISMO PUERTA DE DOS HOJAS */
      PARTE E80
         1 x 4
        DESARMAR SOLO SI marco=1
      PARTE E70
         1 x 2
         FIN DESARME
        DESARMAR SOLO SI marco=2 .OR. marco=3
      PARTE E83
         1 x 2
         FIN DESARME
      PARTE E70
         1 x 4
     DESARMAR SOLO SI marco=1
      PARTE H103
         1 x 6
     FIN DESARME

     DESARMAR SOLO SI marco=2 .OR. marco=3
      PARTE H62
         1 x 6
     FIN DESARME
      SEGUN cierre PARTE H51,P323
         1 x 1
      /* PORTA FELPA */
      PARTE T99
         1 x 4
                DESARMAR SOLO SI manijon>1
                  SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
                        1 x 4
                FIN DESARME

                  PARTE H50
                        1 x 1

                DESARMAR SOLO SI cierra_p>0
         PARTE CIEPTA
            1 x 2
                FIN DESARME

                DESARMAR SOLO SI caja_p>0
            PARTE CAJAP
             1 x 2
                FIN DESARME

      PARTE H42
         1 x 2

      PARTE C14
         4 x (m_ancho/2-330)/1000

      PARTE B67
         1 x m_ancho/1000
         3 x m_alto/1000

      PARTE B52
         1 x m_ancho/1000
         4 x m_alto/1000
DESARMAR SOLO SI taco_reg=1
      PARTE T88
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
FIN DESARME
      PARTE T1
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
      PARTE B68
         /* NO LLEVA TRAVESANIO */
                DESARMAR SOLO SI tra1=0 
            4 x (m_ancho/2-330)/1000
            4 x (m_alto-180)/1000
                FIN DESARME
         /* LLEVA 1 TRAVESANIO */
                DESARMAR SOLO SI tra1>0 
            4*(tra1+1) x (m_ancho/2-330)/1000
            4 x (m_alto-270)/1000
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
                DESARMAR SOLO SI tra1=0
         4 x (m_ancho/2-330)/1000
         4 x (m_alto-180)/1000
                FIN DESARME
      /* LLEVA 1 TRAVESANIO */
                DESARMAR SOLO SI tra1>0
         4*(tra1+1) x (m_ancho/2-330)/1000
         4 x (m_alto-270)/1000
                FIN DESARME

                DESARMAR SOLO SI tra1=0 
         PARTE T20
            1 x 8
        PARTE T100
            1 x 8
                FIN DESARME
                DESARMAR SOLO SI tra1>0 
         PARTE T20
            tra1 x 8
        PARTE T100
            tra1 x 8
                FIN DESARME


        FIN DESARME
 /* Puertas de DOS Hoja */




PRODUCTO MAPUER



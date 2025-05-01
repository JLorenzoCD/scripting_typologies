/* MODENA Puerta de Rebatir */ 
/* borde curvo o recto , vidrio simple */
/* C6220 RECTO ->  C6257 CURVO	4,6    */ 
/* C6232 CURVO	DVH 25                 */
/* C6212 RECTO	4,6                    */
/* C6225 RECTO   DVH 25                */

/* C6237 CURVO ->  C6230 CURVO	4,6    */
/* C6231 CURVO	DVH 25                 */
/* C6217 RECTO	4,6                    */
/* C6226 RECTO   DVH 25                */

/* cv_ext = contravidrio exterior (C6220 / C6237)*/
/* contravid = contravidrio interior */
/* MEDIDA DE VIDRIOS MODIFICADA EL 26/9/97 CON CLAUDIO EN ALUAR */


/* PREMARCO*/
PRODUCTO PPMMODE


CALCULOS

   /* SI ESTA UNIFICADO, USA LAS VARIABLES DEL MARCO 
DESARMAR SOLO SI unificado(1)!=0
   amarco:=tmarco()
   DESARMAR SOLO SI amarco=0
       marco:=3
   FIN DESARME
   DESARMAR SOLO SI amarco!=0
      marco:=amarco
   FIN DESARME

FIN DESARME
   tipo_patr:=ttrav()

   m_desc:=0
   d_tra:=if (tipo_patr=1,0,5)
   m_em:=25
   m_et:=if (tipo_patr=1,12,17)
   m_dto_u:=m_em-m_et
   e_cont:=if(cv_ext=1,0,36)
   par1:=0
   tra2:=0
   
FIN CALCULOS





DESARMAR SOLO SI unificado(1)=0
/* Marco */
   PERFIL C6216
      CORTES A 45:
      1 x m_ancho
      CORTES A 90 Y 45:
      2 x m_alto
FIN DESARME


      DESARMAR SOLO SI unificado(1) !=0
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



   /* Puertas de una hoja */
   DESARMAR SOLO SI n_hojas=1

      CORTES A 45:
      PERFIL C6214
      1 x m_ancho-39
      CORTES A 90 Y 45:
      2 x m_alto-24

      CORTES A RECTO:
      PERFIL C6219
      1 x m_ancho-192

      CORTES A 45:

      /* NO Lleva travesa¤os intermedios */
      DESARMAR SOLO SI tra1=0
               SEGUN cv_ext PERFIL C6237,C6220
            2 x m_ancho-189-e_cont
            2 x m_alto-225
            SEGUN contravid PERFIL C6212,C6225,C6230,C6231
         2 x m_ancho-189-e_cont
         2 x m_alto-225
         DESARMAR SOLO SI cv_ext=1
         PARTE T96
            4 x INT((m_ancho-189-40)/300) + 2
            4 x INT((m_alto-217-40)/300) + 2
         FIN DESARME
      /* NO lleva travesanio */
         VIDRIOS
            1 de m_ancho-205 x m_alto-241
     FIN DESARME


      /* Lleva travesa¤os centrados */
      DESARMAR SOLO SI tra1>0
         CORTES A RECTO:
         PERFIL C6218
            tra1 x m_ancho-192
         CORTES A 45:
			SEGUN cv_ext PERFIL C6237,C6220
            2*(tra1+1) x m_ancho-189-e_cont
            2*(tra1+1) x (m_alto-(tra1*60)-224)/(tra1+1)
            SEGUN contravid PERFIL C6212,C6225,C6230,C6231
            2*(tra1+1) x m_ancho-189-e_cont
            2*(tra1+1) x (m_alto-(tra1*60)-224)/(tra1+1)
         DESARMAR SOLO SI cv_ext=1
         PARTE T96
            4*(tra1+1) x INT((m_ancho-189-40)/300) + 2
            4 x INT((m_alto-(tra1*60)-224)/300) + 2
         FIN DESARME
      /* LLEVA TRAVESANIOS centrados*/
         VIDRIOS
            tra1+1 de m_ancho-205 x (m_alto-(tra1*72)-230)/(tra1+1)
      FIN DESARME


      /* MECANISMO PUERTA DE UNA HOJA */
      PARTE E67
         1 x 2
      PARTE E69
         1 x 2
      PARTE E70
         1 x 2
      PARTE H62
         1 x 3
      SEGUN cierre PARTE H51,P323
         1 x 1
      /* PORTA FELPA */
      PARTE T99
         1 x 2
     DESARMAR SOLO SI manijon>1
         SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
            1 x 2
      FIN DESARME
      DESARMAR SOLO SI manijon=1
         PARTE H50
            1 x 1
      FIN DESARME

      DESARMAR SOLO SI cierra_p=1
         PARTE CIEPTA
            1 x 1
      FIN DESARME

      DESARMAR SOLO SI caja_p=1
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
      PARTE I
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
      PARTE T95
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
      PARTE B68
         /* NO LLEVA TRAVESANIO */
         DESARMAR SOLO SI tra1=0 
            2 x (m_ancho-180)/1000
            2 x (m_alto-180)/1000
         FIN DESARME
         /* LLEVA TRAVESA¥OS */
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
      /* LLEVA TRAVESANIOS */
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
            1 x 8
        PARTE T100
            tra1 x 4
      FIN DESARME


   FIN DESARME
 /* Puertas de una Hoja */

   /* =================================================== */

   /* Puertas de dos hojas */
   DESARMAR SOLO SI n_hojas=2

      CORTES A 45:
      PERFIL C6214
      2 x m_ancho/2-23
      CORTES A 90 Y 45:
      4 x m_alto-24

      CORTES A RECTO:
      PERFIL C6219
         2 x m_ancho/2-175
      PERFIL C6224
         1 x m_alto-24

      CORTES A 45:

      /* NO Lleva travesa¤o intermedio */
      DESARMAR SOLO SI tra1=0 
			SEGUN cv_ext PERFIL C6237,C6220
         4 x m_ancho/2-175-e_cont
         4 x m_alto-224
            SEGUN contravid PERFIL C6212,C6225,C6230,C6231
         4 x m_ancho/2-175-e_cont
         4 x m_alto-224
        DESARMAR SOLO SI cv_ext=1
         PARTE T96
            8 x INT((m_ancho/2-175-40)/300) + 2
            8 x INT((m_alto-217-40)/300) + 2
         FIN DESARME
      FIN DESARME

      /* Lleva un travesa¤o intermedio */
      DESARMAR SOLO SI tra1>0 
         CORTES A RECTO:
         PERFIL C6218
            2*tra1 x m_ancho/2-175
         CORTES A 45:
			SEGUN cv_ext PERFIL C6237,C6220
            4*(tra1+1) x m_ancho/2-175-e_cont
            4*(tra1+1) x (m_alto-(tra1*60)-95)/(tra1+1)
            SEGUN contravid PERFIL C6212,C6225,C6230,C6231
            4*(tra1+1) x m_ancho/2-175-e_cont
            4*(tra1+1) x (m_alto-(tra1*60)-95)/(tra1+1)

         DESARMAR SOLO SI cv_ext=1
         PARTE T96
            16 x INT((m_ancho/2-175-40)/300) + 2
            8 x INT((tra1-123-30-40)/300) + 2
            8 x INT((m_alto-tra1-91-30-40)/300) + 2
         FIN DESARME
      FIN DESARME

      /* NO lleva travesanio */
      DESARMAR SOLO SI tra1=0 
         VIDRIOS
            2 de m_ancho/2-189-2 x m_alto-220-20
      FIN DESARME

      /* LLEVA un TRAVESANIO */
      DESARMAR SOLO SI tra1>0 
         VIDRIOS
            2*(tra1+1) de m_ancho/2-189-2 x (m_alto-(tra1*72)-230)/(tra1+1)
      FIN DESARME


      /* MECANISMO PUERTA DE DOS HOJAS */
      PARTE T98
	 1 x 1
      PARTE H43
         1 x 1 
      PARTE E67
         1 x 4
      PARTE E69
         1 x 2
      PARTE E70
         1 x 4
      PARTE H62
         1 x 6
      SEGUN cierre PARTE H51,P323
         1 x 1
      /* PORTA FELPA */
      PARTE T99
         1 x 4
      DESARMAR SOLO SI manijon>1

         SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
            1 x 4
      FIN DESARME
	DESARMAR SOLO SI manijon=1
      PARTE H50
         1 x 1
	FIN DESARME
      DESARMAR SOLO SI cierra_p=1
         PARTE CIEPTA
            1 x 2
      FIN DESARME

      DESARMAR SOLO SI caja_p=1
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
      PARTE T95
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
      PARTE T88
 	DESARMAR SOLO SI taco_reg=1
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
	FIN DESARME
      PARTE I
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
            4*(tra1*1) x (m_alto-270)/1000
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
         4*(tra1+1) x (m_alto-270)/1000
      FIN DESARME

      DESARMAR SOLO SI tra1=0
         PARTE T20
            1 x 8
        PARTE T100
            1 x 8
      FIN DESARME
      DESARMAR SOLO SI tra1>0
         PARTE T20
            1 x 16
        PARTE T100
            tra1+1 x 8
      FIN DESARME


   FIN DESARME          /* Puertas de DOS Hoja */



PRODUCTO MAPUER




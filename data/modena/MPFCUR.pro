/* Pa¤o fijo BORDE CURVO con PARANTES y TRAVIESAS centrados LINEA MODENA*/
/* travesanio angosto y ancho y marco curvo C6229  */

/* Variables auxiliares
   VARIABLE perfil8_h
   VARIABLE perfil8_v

/* Premarco */

PRODUCTO PMMODE


/* *********************************************************** */
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

      tipo_patr:=ttrav()
   
   m_desc:=0
/*if(marco=1,32,0)
   d_tra:=if (tipo_patr=1,0,5)
   m_em:=25
/*if(marco=1,48,32)
   m_et:=if (tipo_patr=1,12,17)
   m_dto_u:=m_em-m_et
   FIN DESARME
FIN CALCULOS

DESARMAR SOLO SI unificado(1)=0
   CORTES A 45:
      PERFIL C6229

         2 x m_ancho
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






/* Marco */



/* calculo segun el tipo de travesano/parante el descuento del vidrio */
/* si es ancho hay que descontar 10 mm mas que en el angosto */

/* si es angosto 6221 queda como esta, sino le descuento 10 mm por cada lado*/
/* NOTA: como es marco curvo solo va 1 tipo de travesanio... por ahora */
/* es el 6264 y tiene el mismo descuento que el angosto 6221 */
CALCULOS
/*   j_desc:=if(tipo_patr=1,0,10)   */
   j_desc:=0
FIN CALCULOS


CORTES A 45:

/* sin parantes ni traviesas */
DESARMAR SOLO SI par1=0 .AND. tra1=0 

    SEGUN contravid PERFIL C6232,C6233,C6225,C6238

        DESARMAR SOLO SI contravid=1 .OR. contravid=2
	      /* Horizontales */
	         2 x m_ancho-51
	      /* Verticales */
	         2 x m_alto-51

	FIN DESARME

        DESARMAR SOLO SI contravid=3 .OR. contravid=4
	      /* Horizontales */
	         2 x m_ancho-51
	      /* Verticales */
	         2 x m_alto-83

	FIN DESARME

   VIDRIOS

        
         1 de m_ancho-63 x m_alto-63

FIN DESARME

   /* Parantes y ningun travesanio */
   DESARMAR SOLO SI tra1=0 .AND. par1!=0
         CORTES A RECTO:
         PERFIL C6264
         par1 x m_alto-51

      SEGUN contravid PERFIL C6232,C6233,C6225,C6238

DESARMAR SOLO SI contravid=1 .OR. contravid=2
         CALCULOS
            perfil8_h:=(m_ancho-51-25*par1)/(1+par1)
            perfil8_v:=m_alto-51
         FIN CALCULOS

         CORTES A 45:
         /* Horizontales */
         2*(par1+1) x perfil8_h
         /* Verticales */
         2*(par1+1) x perfil8_v

     
   FIN DESARME


DESARMAR SOLO SI contravid=3 .OR. contravid=4
         CALCULOS
            perfil8_h:=(m_ancho-51-25*par1)/(1+par1)
            perfil8_v:=m_alto-51-32
         FIN CALCULOS

         CORTES A RECTO:
         /* Horizontales */
         2*(par1+1) x perfil8_h
         /* Verticales */
         2*(par1+1) x perfil8_v

   FIN DESARME

      VIDRIOS
         
            par1+1 de  (m_ancho-63-37*par1)/(1+par1) x m_alto-63

   FIN DESARME


   /* Travesanios y ningun parante*/
   DESARMAR SOLO SI par1=0 .AND. tra1>0
         CORTES A RECTO:
         PERFIL C6264
         tra1 x m_ancho-51

      SEGUN contravid PERFIL C6232,C6233,C6225,C6238
	
  DESARMAR SOLO SI contravid=1 .OR. contravid=2
         CALCULOS
            perfil8_h:=m_ancho-51
            perfil8_v:=(m_alto-51-25*tra1)/(1+tra1)
         FIN CALCULOS

         CORTES A 45:
         /* Horizontales */
         2*(tra1+1) x perfil8_h
         /* Verticales */
         2*(tra1+1) x perfil8_v

   FIN DESARME

  DESARMAR SOLO SI contravid=3 .OR. contravid=4
         CALCULOS
            perfil8_h:=m_ancho-51
            perfil8_v:=(m_alto-83-57*tra1)/(1+tra1)
         FIN CALCULOS

         CORTES A RECTO:
         /* Horizontales */
         2*(tra1+1) x perfil8_h
         /* Verticales */
         2*(tra1+1) x perfil8_v

   FIN DESARME

      VIDRIOS
         SEPARACION
            tra1+1 de  m_ancho-63 x (m_alto-63-37*tra1)/(1+tra1)

   FIN DESARME



   /* Parantes y Travesanios */
   DESARMAR SOLO SI par1!=0 .AND. tra1!=0
         CORTES A RECTO:
	 PERFIL C6264
	 DESARMAR SOLO SI tipo_tra=1
            tra1 x m_ancho-51
            par1*(tra1+1) x (m_alto-51-tra1*25)/(tra1+1)
	 FIN DESARME

	 DESARMAR SOLO SI tipo_tra=2
	    par1 x m_alto-51
	    tra1*(par1+1) x (m_ancho-51-par1*25)/(par1+1)
	 FIN DESARME

      SEGUN contravid PERFIL C6232,C6233,C6225,C6238
	
DESARMAR SOLO SI contravid=1 .OR. contravid=2
         CALCULOS
            perfil8_h:=(m_ancho-51-25*par1)/(1+par1)
            perfil8_v:=(m_alto-51-25*tra1)/(1+tra1)
         FIN CALCULOS

         CORTES A 45:
         /* Horizontales */
         2*(tra1+1)*(par1+1) x perfil8_h
         /* Verticales */
         2*(tra1+1)*(par1+1) x perfil8_v

   FIN DESARME

DESARMAR SOLO SI contravid=3 .OR. contravid=4
         CALCULOS
            perfil8_h:=(m_ancho-51-25*par1)/(1+par1)
            perfil8_v:=(m_alto-83-57*tra1)/(1+tra1)
         FIN CALCULOS

         CORTES A RECTO:
         /* Horizontales */
         2*(tra1+1)*(par1+1) x perfil8_h
         /* Verticales */
         2*(tra1+1)*(par1+1) x perfil8_v

   FIN DESARME

      VIDRIOS
         SEPARACION
            CALCULOS
               vid_h:=(m_ancho-63-36*par1)/(1+par1)
               vid_v:=(m_alto-63-36*tra1)/(1+tra1)
            FIN CALCULOS
            (par1+1)*(tra1+1) de vid_h x vid_v

      FIN DESARME


/* ACCESORIOS */

      PARTE E69
         1 x 4

      PARTE T95
         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
      PARTE T1
         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
	DESARMAR SOLO SI taco_reg=1
      PARTE T88
         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
	FIN DESARME
      PARTE B68
         2 x m_ancho/1000
         2*(tra1) x m_ancho/1000
         2 x m_alto/1000
         2*(par1) x m_alto/1000
      PARTE B31
         2 x m_ancho/1000
         2*(tra1) x m_ancho/1000
         2 x m_alto/1000
         2*(par1) x m_alto/1000

  DESARMAR SOLO SI contravid=1 .OR. contravid=2
      PARTE T96
         2 x INT(m_ancho/200)+par1
         2*tra1 x INT(m_ancho/200)+par1
         2 x INT(m_alto/200)+tra1
         2*par1 x INT(m_alto/200)+tra1
   FIN DESARME

      PARTE E71
          1 x 2*tra1+2*(tra1+1)*par1


PRODUCTO MAPF








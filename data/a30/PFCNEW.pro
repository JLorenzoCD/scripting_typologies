/* Pa¤o fijo BORDE CURVO con PARANTES y TRAVIESAS centrados LINEA NEW*/
/* travesanio y marco curvo C6055  */

/* Variables auxiliares
   VARIABLE perfil8_h
   VARIABLE perfil8_v

/* Premarco */

PRODUCTO PMA30N








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
   FIN DESARME
   m_desc:=
/* if(marco=1,32,0)
   d_tra:=0
/*if (tipo_patr=1,0,5)
   m_em:=23
/* if(marco=1,48,32)
   m_et:=9
/*if (tipo_patr=1,12,17)
   m_dto_u:=m_em-m_et
   
FIN CALCULOS

DESARMAR SOLO SI unificado(1)=0
   CORTES A 45:
      SEGUN marco PERFIL C6055,C6059
      2 x m_ancho
      2 x m_alto

      PARTE E83
         1 x 4
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















/* *********************************************************** */

SEPARACION

/* Marco */
CORTES A 45:


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

    SEGUN contravid PERFIL C6047,C6048,C6045,C6046

        DESARMAR SOLO SI contravid=1 .OR. contravid=2
	      /* Horizontales */
                 2 x m_ancho-60
	      /* Verticales */
                 2 x m_alto-60

	FIN DESARME
CORTES A RECTO:
        DESARMAR SOLO SI contravid=3 .OR. contravid=4
	      /* Horizontales */
                 2 x m_ancho-60
	      /* Verticales */
                 2 x m_alto-104.5

	FIN DESARME

   VIDRIOS

        
         1 de m_ancho-72 x m_alto-72

FIN DESARME

   /* Parantes y ningun travesanio */
   DESARMAR SOLO SI tra1=0 .AND. par1!=0
         CORTES A RECTO:
         PERFIL C6060
         par1 x m_alto-60

      SEGUN contravid PERFIL C6047,C6048,C6045,C6046

DESARMAR SOLO SI contravid=1 .OR. contravid=2
         CALCULOS
            perfil8_h:=(m_ancho-60-33.5*par1)/(1+par1)
            perfil8_v:=m_alto-60
         FIN CALCULOS

         CORTES A 45:
         /* Horizontales */
         2*(par1+1) x perfil8_h
         /* Verticales */
         2*(par1+1) x perfil8_v

     
   FIN DESARME


DESARMAR SOLO SI contravid=3 .OR. contravid=4
         CALCULOS
            perfil8_h:=(m_ancho-60-33.5*par1)/(1+par1)
            perfil8_v:=m_alto-60-42.4
         FIN CALCULOS

         CORTES A RECTO:
         /* Horizontales */
         2*(par1+1) x perfil8_h
         /* Verticales */
         2*(par1+1) x perfil8_v

   FIN DESARME

      VIDRIOS
         
            par1+1 de  (m_ancho-72-45.5*par1)/(1+par1) x m_alto-72

   FIN DESARME


   /* Travesanios y ningun parante*/
   DESARMAR SOLO SI par1=0 .AND. tra1>0
         CORTES A RECTO:
         PERFIL C6060
         tra1 x m_ancho-60

      SEGUN contravid PERFIL C6047,C6048,C6045,C6046
	
  DESARMAR SOLO SI contravid=1 .OR. contravid=2
         CALCULOS
            perfil8_h:=m_ancho-60
            perfil8_v:=(m_alto-60-33.5*tra1)/(1+tra1)
         FIN CALCULOS

         CORTES A 45:
         /* Horizontales */
         2*(tra1+1) x perfil8_h
         /* Verticales */
         2*(tra1+1) x perfil8_v

   FIN DESARME

  DESARMAR SOLO SI contravid=3 .OR. contravid=4
         CALCULOS
            perfil8_h:=m_ancho-60
            perfil8_v:=(m_alto-102.4-77.5*tra1)/(1+tra1)
         FIN CALCULOS

         CORTES A RECTO:
         /* Horizontales */
         2*(tra1+1) x perfil8_h
         /* Verticales */
         2*(tra1+1) x perfil8_v

   FIN DESARME

      VIDRIOS
         SEPARACION
            tra1+1 de  m_ancho-72 x (m_alto-72-45.5*tra1)/(1+tra1)

   FIN DESARME



   /* Parantes y Travesanios */
   DESARMAR SOLO SI par1!=0 .AND. tra1!=0
         CORTES A RECTO:
         PERFIL C6060
	 DESARMAR SOLO SI tipo_tra=1
            tra1 x m_ancho-60
            par1*(tra1+1) x (m_alto-60-tra1*33.5)/(tra1+1)
	 FIN DESARME

	 DESARMAR SOLO SI tipo_tra=2
            par1 x m_alto-60
            tra1*(par1+1) x (m_ancho-60-par1*33.5)/(par1+1)
	 FIN DESARME

      SEGUN contravid PERFIL C6047,C6048,C6045,C6046
	
DESARMAR SOLO SI contravid=1 .OR. contravid=2
         CALCULOS
            perfil8_h:=(m_ancho-60-33.5*par1)/(1+par1)
            perfil8_v:=(m_alto-60-33.5*tra1)/(1+tra1)
         FIN CALCULOS

         CORTES A 45:
         /* Horizontales */
         2*(tra1+1)*(par1+1) x perfil8_h
         /* Verticales */
         2*(tra1+1)*(par1+1) x perfil8_v

   FIN DESARME

DESARMAR SOLO SI contravid=3 .OR. contravid=4
         CALCULOS
            perfil8_h:=(m_ancho-60-33.5*par1)/(1+par1)
            perfil8_v:=(m_alto-104.5-77.5*tra1)/(1+tra1)
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
               vid_h:=(m_ancho-72-42.5*par1)/(1+par1)
               vid_v:=(m_alto-72-42.5*tra1)/(1+tra1)
            FIN CALCULOS
            (par1+1)*(tra1+1) de vid_h x vid_v

      FIN DESARME


/* ACCESORIOS */


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
         2 x INT((m_ancho-200)/300)+1+par1
         2*tra1 x INT((m_ancho-200)/300)+par1
         2 x INT((m_alto-200)/300)+1+tra1
         2*par1 x INT((m_alto-200)/300)+tra1
   FIN DESARME

      PARTE E84
          1 x 2*tra1+2*(tra1+1)*par1

PRODUCTO MAPF







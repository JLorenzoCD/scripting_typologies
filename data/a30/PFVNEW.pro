/* Pa¤o fijo BORDE CURVO con PARANTES y TRAVIESAS variables LINEA A30NEW*/

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
   m_em:=23
   m_et:=9
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
      DESARMAR SOLO SI tra1>0
         tra1:=tra1+m_dto_u/2
      FIN DESARME
      DESARMAR SOLO SI tra2>0
         tra2:=tra2+m_dto_u/2
      FIN DESARME
      DESARMAR SOLO SI tra3>0
         tra3:=tra3+m_dto_u/2
      FIN DESARME

   FIN DESARME
   DESARMAR SOLO SI unificado(4) != 0
      m_alto:=m_alto+m_dto_u
      DESARMAR SOLO SI tra1>0
         tra1:=tra1+m_dto_u/2
      FIN DESARME
      DESARMAR SOLO SI tra2>0
         tra2:=tra2+m_dto_u/2
      FIN DESARME
      DESARMAR SOLO SI tra3>0
         tra3:=tra3+m_dto_u/2
      FIN DESARME

   FIN DESARME
   DESARMAR SOLO SI unificado(8) != 0
      m_ancho:=m_ancho+m_dto_u
      DESARMAR SOLO SI par1>0
         par1:=par1+m_dto_u/2
      FIN DESARME
      DESARMAR SOLO SI par2>0
         par2:=par2+m_dto_u/2
      FIN DESARME
      DESARMAR SOLO SI par3>0
         par3:=par3+m_dto_u/2
      FIN DESARME
      DESARMAR SOLO SI par4>0
         par4:=par4+m_dto_u/2
      FIN DESARME
      DESARMAR SOLO SI par5>0
         par5:=par5+m_dto_u/2
      FIN DESARME
   FIN DESARME

   DESARMAR SOLO SI unificado(16) != 0
      m_ancho:=m_ancho+m_dto_u
      DESARMAR SOLO SI par1>0
         par1:=par1+m_dto_u/2
      FIN DESARME
      DESARMAR SOLO SI par2>0
         par2:=par2+m_dto_u/2
      FIN DESARME
      DESARMAR SOLO SI par3>0
         par3:=par3+m_dto_u/2
      FIN DESARME
      DESARMAR SOLO SI par4>0
         par4:=par4+m_dto_u/2
      FIN DESARME
      DESARMAR SOLO SI par5>0
         par5:=par5+m_dto_u/2
      FIN DESARME
   FIN DESARME
FIN DESARME

/**************************************************************
/*   DESARMAR SOLO SI unificado(1)!=0
/*      DESARMAR SOLO SI unificado(2) != 0
/*         m_alto:=m_alto+m_dto_u
/*      FIN DESARME
/*      DESARMAR SOLO SI unificado(4) != 0
/*         m_alto:=m_alto+m_dto_u
/*      FIN DESARME
/*      DESARMAR SOLO SI unificado(8) != 0
/*         m_ancho:=m_ancho+m_dto_u
/*      FIN DESARME
/*      DESARMAR SOLO SI unificado(16) != 0
/*         m_ancho:=m_ancho+m_dto_u
/*      FIN DESARME
/*   FIN DESARME

/* *********************************************************** */
/*el calculo e_cont permite descontarle 32 mm. en el alto a los contravidrios rectos*/

CALCULOS
    j_desc:=0
    e_cont:=if(contravid=3 .OR. contravid=4,42.4,0)
FIN CALCULOS

CORTES A 45:

/* sin parantes ni traviesas */
DESARMAR SOLO SI par1=0 .AND. par2=0 .AND. par3=0 .AND. par4=0 .AND. par5=0 .AND. tra1=0 .AND. tra2=0 .AND. tra3=0

DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME
    SEGUN contravid PERFIL C6047,C6048,C6045,C6046
      /* Horizontales */
         2 x m_ancho-60
      /* Verticales */
         2 x m_alto-60-e_cont
   VIDRIOS      
         
         1 de m_ancho-72 x m_alto-72

FIN DESARME

   /* 0 traviesa en posicion variable y 1-5 parantes */
   DESARMAR SOLO SI tra1=0 .AND. tra2=0  .AND. tra3=0

      /* 0 Traviesa x 1 Parante CASO 2 */
      DESARMAR SOLO SI par1!=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND. par5=0 
         CORTES A RECTO:
         PERFIL C6060
         1 x m_alto-60

      SEGUN contravid PERFIL C6047,C6048,C6045,C6046
DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME

         /* Horizontales */
         2 x par1-30-16.75
         2 x m_ancho-par1-30-16.75
         /* Verticales */
         4 x m_alto-60-e_cont
      VIDRIOS
         
            /* izquierda */
            1 de par1-38-22.75-j_desc x m_alto-72
            /* derecha */
            1 de m_ancho-par1-38-22.75-j_desc x m_alto-72

    FIN DESARME

      /* 0 Traviesa x 2 Parante CASO 3 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6060
         2 x m_alto-60

      SEGUN contravid PERFIL C6047,C6048,C6045,C6046
DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME

         /* Horizontales */
         2 x par1-30-16.75
         2 x par2-par1-16.75-16.75
         2 x m_ancho-par2-30-16.75
         /* Verticales */
         6 x m_alto-60-e_cont

      VIDRIOS
         
            /* izquierda */
            1 de par1-38-15-j_desc x m_alto-72
            /* medio */
            1 de par2-par1-22.75-22.75-2*j_desc x m_alto-72
            /* derecha */
            1 de m_ancho-par2-38-22.75-j_desc x m_alto-72

      FIN DESARME

      /* 0 Traviesa x 3 Parante CASO 4 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6060
         3 x m_alto-60

      SEGUN contravid PERFIL C6047,C6048,C6045,C6046
DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME

         /* Horizontales */
         2 x par1-30-16.75
         2 x par2-par1-16.75-16.75
         2 x par3-par2-16.75-16.75
         2 x m_ancho-par3-30-16.75
         /* Verticales */
         8 x m_alto-60-e_cont

      VIDRIOS
         
            /* izquierda */
            1 de par1-38-22.75-j_desc x m_alto-72
            /* medio */
            1 de par2-par1-22.75-22.75-2*j_desc x m_alto-72
            /* medio */
            1 de par3-par2-22.75-22.75-2*j_desc x m_alto-72
            /* derecha */
            1 de m_ancho-par3-38-22.75-j_desc x m_alto-72

     
   FIN DESARME


   /* 0 Traviesa x 4 Parante CASO 4,5 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6060
         4 x m_alto-60

      SEGUN contravid PERFIL C6047,C6048,C6045,C6046
DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME

         /* Horizontales */
         2 x par1-30-16.75
         2 x par2-par1-16.75-16.75
         2 x par3-par2-16.75-16.75
         2 x par4-par3-16.75-16.75
         2 x m_ancho-par4-30-16.75
 
         /* Verticales */
         10 x m_alto-60-e_cont

      VIDRIOS
         
            /* izquierda */
            1 de par1-38-22.75-j_desc x m_alto-72
            /* medio */
            1 de par2-par1-22.75-22.75-2*j_desc x m_alto-72
            /* medio */
            1 de par3-par2-22.75-22.75-2*j_desc x m_alto-72
            /* medio */
            1 de par4-par3-22.75-22.75-2*j_desc x m_alto-72
            /* derecha */
            1 de m_ancho-par4-38-22.75-j_desc x m_alto-72

   FIN DESARME


   /* 0 Traviesa x 5 Parante CASO 5,5 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND. par5!=0
         CORTES A RECTO:
         PERFIL C6060
         5 x m_alto-60

      SEGUN contravid PERFIL C6047,C6048,C6045,C6046

DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME
         /* Horizontales */
         2 x par1-30-16.75
         2 x par2-par1-16.75-16.75
         2 x par3-par2-16.75-16.75
         2 x par4-par3-16.75-16.75
         2 x par5-par4-16.75-16.75
         2 x m_ancho-par5-30-16.75
 
         /* Verticales */
         12 x m_alto-60-e_cont

      VIDRIOS
         
            /* izquierda */
            1 de par1-38-22.75-j_desc x m_alto-72
            /* medio */
            1 de par2-par1-22.75-22.75-2*j_desc x m_alto-72
            /* medio */
            1 de par3-par2-22.75-22.75-2*j_desc x m_alto-72
            /* medio */
            1 de par4-par3-22.75-22.75-2*j_desc x m_alto-72
            /* medio */
            1 de par5-par4-22.75-22.75-2*j_desc x m_alto-72
            /* derecha */
            1 de m_ancho-par5-38-22.75-j_desc x m_alto-72

   FIN DESARME

   FIN DESARME

  

   /* 1 traviesa en posicion variable y 1-5 parantes */
   DESARMAR SOLO SI tra1!=0 .AND. tra2=0  .AND. tra3=0
         /* 1 Traviesa x 0 Parante CASO 5 */
      DESARMAR SOLO SI par1=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND.par5=0
         CORTES A RECTO:
         PERFIL C6060
         1 x m_ancho-60

      SEGUN contravid PERFIL C6047,C6048,C6045,C6046

DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME
         /* Horizontales */
         4 x m_ancho-60
         /* Verticales */
         2 x tra1-30-16.75-e_cont
         2 x m_alto-tra1-30-16.75-e_cont

      VIDRIOS
            /* abajo  */
            1 de m_ancho-72 x tra1-38-22.75-j_desc
      PANELES
            /* arriba  */
            1 de m_ancho-72 x m_alto-tra1-38-22.75-j_desc

      FIN DESARME
                                                                                 
      /* 1 Traviesa x 1 Parante CASO 8 */
      DESARMAR SOLO SI par1!=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6060
         DESARMAR SOLO SI tipo_tra=1
            1 x m_ancho-60
            1 x tra1-16.75-30
            1 x m_alto-tra1-16.75-30
         FIN DESARME

         DESARMAR SOLO SI tipo_tra=2
            1 x m_alto-60
            1 x par1-16.75-30
            1 x m_ancho-par1-16.75-30
         FIN DESARME

      SEGUN contravid PERFIL C6047,C6048,C6045,C6046
    DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME

         /* Horizontales */
         4 x par1-30-16.75
         4 x m_ancho-par1-30-16.75
         /* Verticales */
         4 x tra1-30-16.75-e_cont
         4 x m_alto-tra1-30-16.75-e_cont
         
      VIDRIOS
            1 de par1-38-22.75-j_desc x tra1-38-22.75-j_desc
            1 de m_ancho-par1-38-22.75-j_desc x tra1-38-22.75-j_desc
      PANELES
            1 de par1-38-22.75-j_desc x m_alto-tra1-38-22.75-j_desc
            1 de m_ancho-par1-38-22.75-j_desc x m_alto-tra1-38-22.75-j_desc

      FIN DESARME

      /* 1 Traviesa x 2 Parantes   CASO 11 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6060
         DESARMAR SOLO SI tipo_tra=1
            1 x m_ancho-52
            2 x tra1-16.75-26
            2 x m_alto-tra1-16.75-26
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            2 x m_alto-52
            1 x par1-16.75-26
            1 x par2-par1-16.75-16.75-e_cont
            1 x m_ancho-par2-16.75-26
         FIN DESARME

DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME
         SEGUN contravid PERFIL C6047,C6048,C6045,C6046
         /* Horizontales */
         4 x par1-26-16.75
         4 x par2-par1-16.75-16.75
         4 x m_ancho-par2-26-16.75
         /* Verticales */
         6 x tra1-26-16.75-e_cont
         6 x m_alto-tra1-26-16.75-e_cont
            
            /* Base de la Izquierda  */
        VIDRIOS
            1 de par1-38-22.75-j_desc x tra1-38-22.75-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra1-38-22.75-j_desc
            1 de m_ancho-par2-38-22.75-j_desc x tra1-38-22.75-j_desc
        PANELES
            1 de par1-38-22.75-j_desc x m_alto-tra1-38-22.75-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x m_alto-tra1-38-22.75-j_desc
            1 de m_ancho-par2-38-22.75-j_desc x m_alto-tra1-38-22.75-j_desc
      FIN DESARME

      /* 1 Traviesa x 3 Parantes   CASO 14 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
        PERFIL C6060
	DESARMAR SOLO SI contravid<=2
         		CORTES A 45:
	FIN DESARME
	DESARMAR SOLO SI contravid>=3
         		CORTES A RECTO:
	FIN DESARME

         DESARMAR SOLO SI tipo_tra=1
            1 x m_ancho-60
            3 x tra1-16.75-30
            3 x m_alto-tra1-16.75-30
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            3 x m_alto-60
            1 x par1-16.75-30
            1 x par2-par1-16.75-16.75
            1 x par3-par2-16.75-16.75
            1 x m_ancho-par3-16.75-30
         FIN DESARME

         CORTES A 45:
         SEGUN contravid PERFIL C6047,C6048,C6045,C6046
         /* Horizontales */
         4 x par1-30-16.75
         4 x par2-par1-16.75-16.75
         4 x par3-par2-16.75-16.75
         4 x m_ancho-par3-30-16.75
         /* Verticales */
         8 x tra1-30-16.75-e_cont
         8 x m_alto-tra1-30-16.75-e_cont

            
            /* Base de la Izquierda  */
        VIDRIOS
            1 de par1-38-22.75-j_desc x tra1-38-22.75-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra1-38-22.75-j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x tra1-38-22.75-j_desc
            1 de m_ancho-par3-38-22.75-j_desc x tra1-38-22.75-j_desc

        PANELES
            1 de par1-38-22.75-j_desc x m_alto-tra1-38-22.75-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x m_alto-tra1-38-22.75-j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x m_alto-tra1-38-22.75-j_desc
            1 de m_ancho-par3-38-22.75-j_desc x m_alto-tra1-38-22.75-j_desc
     
   FIN DESARME

     /* 1 Traviesa x 4 Parantes   CASO 14,5 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND.par5=0
         CORTES A RECTO:
         PERFIL C6060
         DESARMAR SOLO SI tipo_tra=1
            1 x m_ancho-60
            4 x tra1-16.75-30
            4 x m_alto-tra1-16.75-30
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            3 x m_alto-60
            1 x par1-16.75-30
            1 x par2-par1-16.75-16.75
            1 x par3-par2-16.75-16.75
            1 x par4-par3-16.75-16.75   
            1 x m_ancho-par4-16.75-30
         FIN DESARME

DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME
         SEGUN contravid PERFIL C6047,C6048,C6045,C6046
         /* Horizontales */
         4 x par1-30-16.75
         4 x par2-par1-16.75-16.75
         4 x par3-par2-16.75-16.75
         4 x par4-par3-16.75-16.75
         4 x m_ancho-par4-30-16.75
         /* Verticales */
         10 x tra1-30-16.75-e_cont
         10 x m_alto-tra1-30-16.75-e_cont

         VIDRIOS
            
            /* Base de la Izquierda  */
        VIDRIOS
            1 de par1-38-22.75-j_desc x tra1-38-22.75-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra1-38-22.75-j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x tra1-38-22.75-j_desc
            1 de par4-par3-22.75-22.75-2*j_desc x tra1-38-22.75-j_desc
            1 de m_ancho-par4-38-22.75-j_desc x tra1-38-22.75-j_desc

        PANELES
            1 de par1-38-22.75-j_desc x m_alto-tra1-38-22.75-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x m_alto-tra1-38-22.75-j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x m_alto-tra1-38-22.75-j_desc
            1 de par4-par3-22.75-22.75-2*j_desc x m_alto-tra1-38-22.75-j_desc
            1 de m_ancho-par4-38-22.75-j_desc x m_alto-tra1-38-22.75-j_desc

      FIN DESARME

     /* 1 Traviesa x 5 Parantes   CASO 15,5 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND.par5!=0
         CORTES A RECTO:
         PERFIL C6060
         DESARMAR SOLO SI tipo_tra=1
            1 x m_ancho-60
            5 x tra1-16.75-30
            5 x m_alto-tra1-16.75-30
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            5 x m_alto-60
            1 x par1-16.75-30
            1 x par2-par1-16.75-16.75
            1 x par3-par2-16.75-16.75
            1 x par4-par3-16.75-16.75   
            1 x par5-par4-16.75-16.75
            1 x m_ancho-par5-16.75-30
         FIN DESARME

DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME

         SEGUN contravid PERFIL C6047,C6048,C6045,C6046
         /* Horizontales */
         4 x par1-30-16.75
         4 x par2-par1-16.75-16.75
         4 x par3-par2-16.75-16.75
         4 x par4-par3-16.75-16.75
         4 x par5-par4-16.75-16.75
         4 x m_ancho-par5-30-16.75
         /* Verticales */
         12 x tra1-30-16.75-e_cont
         12 x m_alto-tra1-30-16.75-e_cont

         VIDRIOS
            
            /* Base de la Izquierda  */
        VIDRIOS
            1 de par1-38-22.75-j_desc x tra1-38-22.75-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra1-38-22.75-j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x tra1-38-22.75-j_desc
            1 de par4-par3-22.75-22.75-2*j_desc x tra1-38-22.75-j_desc
            1 de par5-par4-22.75-22.75-2*j_desc x tra1-38-22.75-j_desc
            1 de m_ancho-par5-38-22.75-j_desc x tra1-38-22.75-j_desc

        PANELES
            1 de par1-38-22.75-j_desc x m_alto-tra1-38-22.75-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x m_alto-tra1-38-22.75-j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x m_alto-tra1-38-22.75-j_desc
            1 de par4-par3-22.75-22.75-2*j_desc x m_alto-tra1-38-22.75-j_desc
            1 de par5-par4-22.75-22.75-2*j_desc x m_alto-tra1-38-22.75-j_desc
            1 de m_ancho-par5-38-22.75-j_desc x m_alto-tra1-38-22.75-j_desc
     
   FIN DESARME

   FIN DESARME             /* 1 TRAVIESA */



   /* 2 traviesas en posicion variable y 0-5 parantes */
   DESARMAR SOLO SI tra1!=0 .AND. tra2!=0  .AND. tra3=0

      /* 2 Traviesa x 0 Parante CASO 6 */
      DESARMAR SOLO SI par1=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6060
         2 x m_ancho-60

      SEGUN contravid PERFIL C6047,C6048,C6045,C6046
DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME
         /* Horizontales */
         6 x m_ancho-60
         /* Verticales */
         2 x tra1-30-16.75-e_cont
         2 x tra2-tra1-16.75-16.75-e_cont
         2 x m_alto-tra2-30-16.75-e_cont

         
      VIDRIOS
            /* abajo  */
            1 de m_ancho-72 x tra1-38-22.75-j_desc
      PANELES
            /* medio  */
            1 de m_ancho-72 x tra2-tra1-22.75-22.75-2*j_desc
      OTROS INTERIORES
            /* arriba  */
            1 de m_ancho-72 x m_alto-tra2-38-22.75-j_desc

      FIN DESARME


      /* 2 Traviesa x 1 Parante  CASO 9 */
      DESARMAR SOLO SI par1!=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6060
         DESARMAR SOLO SI tipo_tra=1
            2 x m_ancho-60
            1 x tra1-16.75-30
            1 x tra2-tra1-16.75-16.75
            1 x m_alto-tra2-16.75-30
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            1 x m_alto-60
            2 x par1-16.75-30
            2 x m_ancho-par1-16.75-30
         FIN DESARME

DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME
         SEGUN contravid PERFIL C6047,C6048,C6045,C6046
         /* Horizontales */
         6 x par1-30-16.75
         6 x m_ancho-par1-30-16.75
         /* Verticales */
         4 x tra1-30-16.75-e_cont
         4 x tra2-tra1-16.75-16.75-e_cont
         4 x m_alto-tra2-30-16.75-e_cont

            
         VIDRIOS
            1 de par1-38-22.75-j_desc x tra1-38-22.75-j_desc
            1 de m_ancho-par1-38-22.75-j_desc x tra1-38-22.75-j_desc
         PANELES
            1 de par1-38-22.75-j_desc x tra2-tra1-22.75-22.75-2*j_desc
            1 de m_ancho-par1-38-22.75-j_desc x tra2-tra1-22.75-22.75-2*j_desc
         OTROS INTERIORES
            1 de par1-38-22.75-j_desc x m_alto-tra2-38-22.75-j_desc
            1 de m_ancho-par1-38-22.75-j_desc x m_alto-tra2-38-22.75-j_desc
      FIN DESARME

      /* 2 Traviesa x 2 Parantes  CASO 12 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6060
         DESARMAR SOLO SI tipo_tra=1
            2 x m_ancho-60
            2 x tra1-30-16.75
            2 x tra2-tra1-16.75-16.75
            2 x m_alto-tra2-16.75-30
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            2 x m_alto-60
            2 x par1-30-16.75
            2 x par2-par1-16.75-16.75
            2 x m_ancho-par2-16.75-30
         FIN DESARME


      SEGUN contravid PERFIL C6047,C6048,C6045,C6046
DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME

         /* Horizontales */
         6 x par1-30-16.75
         6 x par2-par1-16.75-16.75
         6 x m_ancho-par2-30-16.75
         /* Verticales */
         6 x tra1-30-16.75-e_cont
         6 x tra2-tra1-16.75-16.75-e_cont
         6 x m_alto-tra2-30-16.75-e_cont

            
         VIDRIOS
            1 de par1-38-22.75-j_desc x tra1-38-22.75-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra1-38-22.75-j_desc
            1 de m_ancho-par2-38-22.75-j_desc x tra1-38-22.75-j_desc
         PANELES
            1 de par1-38-22.75-j_desc x tra2-tra1-22.75-22.75-2*j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra2-tra1-22.75-22.75-2*j_desc
            1 de m_ancho-par2-38-22.75-j_desc x tra2-tra1-22.75-22.75-2*j_desc
         OTROS INTERIORES
            1 de par1-38-22.75-j_desc x m_alto-tra2-38-22.75-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x m_alto-tra2-38-22.75-j_desc
            1 de m_ancho-par2-38-22.75-j_desc x m_alto-tra2-38-22.75-j_desc
      FIN DESARME

      /* 2 Traviesa x 3 Parantes  CASO 15 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6060
         DESARMAR SOLO SI tipo_tra=1
            2 x m_ancho-60
            3 x tra1-30-16.75
            3 x tra2-tra1-16.75-16.75
            3 x m_alto-tra2-16.75-30
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            3 x m_alto-60
            2 x par1-30-16.75
            2 x par2-par1-16.75-16.75
            2 x par3-par2-16.75-16.75
            2 x m_ancho-par3-16.75-30
         FIN DESARME

      SEGUN contravid PERFIL C6047,C6048,C6045,C6046
DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME
         /* Horizontales */
         6 x par1-30-16.75
         6 x par2-par1-16.75-16.75
         6 x par3-par2-16.75-16.75
         6 x m_ancho-par3-30-16.75
         /* Verticales */
         8 x tra1-30-16.75-e_cont
         8 x tra2-tra1-16.75-16.75-e_cont
         8 x m_alto-tra2-30-16.75-e_cont

            
         VIDRIOS
            1 de par1-38-22.75-j_desc x tra1-38-22.75-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra1-38-22.75-2*j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x tra1-38-22.75-2*j_desc
            1 de m_ancho-par3-38-22.75-j_desc x tra1-38-22.75-2*j_desc
         PANELES
            1 de par1-38-22.75-j_desc x tra2-tra1-22.75-22.75-2*j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra2-tra1-22.75-22.75-j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x tra2-tra1-22.75-22.75-j_desc
            1 de m_ancho-par3-38-22.75-j_desc x tra2-tra1-22.75-22.75-2*j_desc
         OTROS INTERIORES
            1 de par1-38-22.75-j_desc x m_alto-tra2-38-22.75-2*j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x m_alto-tra2-38-22.75-2*j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x m_alto-tra2-38-22.75-j_desc
            1 de m_ancho-par3-38-22.75-j_desc x m_alto-tra2-38-22.75-j_desc
      FIN DESARME


   /* 2 Traviesa x 4 Parantes  CASO 15,5 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6060
         DESARMAR SOLO SI tipo_tra=1
            2 x m_ancho-60
            4 x tra1-30-16.75
            4 x tra2-tra1-16.75-16.75
            4 x m_alto-tra2-16.75-30
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            4 x m_alto-60
            2 x par1-30-16.75
            2 x par2-par1-16.75-16.75
            2 x par3-par2-16.75-16.75
            2 x m_ancho-par3-16.75-30
         FIN DESARME

      SEGUN contravid PERFIL C6047,C6048,C6045,C6046
DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME

         /* Horizontales */
         6 x par1-30-16.75
         6 x par2-par1-16.75-16.75
         6 x par3-par2-16.75-16.75
         6 x par4-par3-16.75-16.75
         6 x m_ancho-par4-30-16.75
         /* Verticales */
         10 x tra1-30-16.75-e_cont
         10 x tra2-tra1-16.75-16.75-e_cont
         10 x m_alto-tra2-30-16.75-e_cont

            
         VIDRIOS
            1 de par1-38-22.75-j_desc x tra1-38-22.75-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra1-38-22.75-2*j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x tra1-38-22.75-2*j_desc
            1 de par4-par3-22.75-22.75-2*j_desc x tra1-38-22.75-2*j_desc
            1 de m_ancho-par4-38-22.75-j_desc x tra1-38-22.75-2*j_desc
         PANELES
            1 de par1-38-22.75-j_desc x tra2-tra1-22.75-22.75-2*j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra2-tra1-22.75-22.75-j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x tra2-tra1-22.75-22.75-j_desc
            1 de par4-par3-22.75-22.75-2*j_desc x tra2-tra1-22.75-22.75-j_desc
            1 de m_ancho-par4-38-22.75-j_desc x tra2-tra1-22.75-22.75-2*j_desc
         OTROS INTERIORES
            1 de par1-38-22.75-j_desc x m_alto-tra2-38-22.75-2*j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x m_alto-tra2-38-22.75-2*j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x m_alto-tra2-38-22.75-j_desc
            1 de par4-par3-22.75-22.75-2*j_desc x m_alto-tra2-38-22.75-j_desc
            1 de m_ancho-par4-38-22.75-j_desc x m_alto-tra2-38-22.75-j_desc

      FIN DESARME

   /* 2 Traviesa x 5 Parantes  CASO 15,5 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND. par5!=0
         CORTES A RECTO:
         PERFIL C6060
         DESARMAR SOLO SI tipo_tra=1
            2 x m_ancho-60
            5 x tra1-30-16.75
            5 x tra2-tra1-16.75-16.75
            5 x m_alto-tra2-16.75-30
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            5 x m_alto-60
            2 x par1-30-16.75
            2 x par2-par1-16.75-16.75
            2 x par3-par2-16.75-16.75
            2 x m_ancho-par3-16.75-30
         FIN DESARME
      SEGUN contravid PERFIL C6047,C6048,C6045,C6046
DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME

         /* Horizontales */
         6 x par1-30-16.75
         6 x par2-par1-16.75-16.75
         6 x par3-par2-16.75-16.75
         6 x par4-par3-16.75-16.75
         6 x par5-par4-16.75-16.75
         6 x m_ancho-par5-30-16.75
         /* Verticales */
         12 x tra1-30-16.75-e_cont
         12 x tra2-tra1-16.75-16.75-e_cont
         12 x m_alto-tra2-30-16.75-e_cont

            
         VIDRIOS
            1 de par1-32-17-j_desc x tra1-32-19-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra1-32-19-2*j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x tra1-32-19-2*j_desc
            1 de par4-par3-22.75-22.75-2*j_desc x tra1-32-19-2*j_desc
            1 de par5-par4-22.75-22.75-2*j_desc x tra1-32-19-2*j_desc
            1 de m_ancho-par5-32-17-j_desc x tra1-32-19-2*j_desc
         PANELES
            1 de par1-32-17-j_desc x tra2-tra1-22.75-22.75-2*j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra2-tra1-22.75-22.75-j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x tra2-tra1-22.75-22.75-j_desc
            1 de par4-par3-22.75-22.75-2*j_desc x tra2-tra1-22.75-22.75-j_desc
            1 de par5-par4-22.75-22.75-2*j_desc x tra2-tra1-22.75-22.75-j_desc
            1 de m_ancho-par5-32-17-j_desc x tra2-tra1-22.75-22.75-2*j_desc
         OTROS INTERIORES
            1 de par1-32-17-j_desc x m_alto-tra2-32-22.75-2*j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x m_alto-tra2-32-22.75-2*j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x m_alto-tra2-32-22.75-j_desc
            1 de par4-par3-22.75-22.75-2*j_desc x m_alto-tra2-32-22.75-j_desc
            1 de par5-par4-22.75-22.75-2*j_desc x m_alto-tra2-32-22.75-j_desc
            1 de m_ancho-par5-32-17-j_desc x m_alto-tra2-32-22.75-j_desc

      FIN DESARME


      FIN DESARME  /* 2 TRAVIESAS */




   /* 3 traviesas en posicion variable y 1-5 parantes */
   DESARMAR SOLO SI tra1!=0 .AND. tra2!=0  .AND. tra3!=0

      /* 3 Traviesa x 0 Parante CASO 7 */
      DESARMAR SOLO SI par1=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6060
         3 x m_ancho-60

      SEGUN contravid PERFIL C6047,C6048,C6045,C6046
DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME

         /* Horizontales */
         8 x m_ancho-60
         /* Verticales */
         2 x tra1-30-16.75-e_cont
         2 x tra2-tra1-16.75-16.75-e_cont
         2 x tra3-tra2-16.75-16.75-e_cont
         2 x m_alto-tra2-30-16.75-e_cont

         
         VIDRIOS
            /* abajo  */
            1 de m_ancho-72 x tra1-38-22.75-j_desc
         PANELES
            /* medio  */
            1 de m_ancho-72 x tra2-tra1-22.75-22.75-2*j_desc
         OTROS INTERIORES
            /* medio  */
            1 de m_ancho-72 x tra3-tra2-22.75-22.75-2*j_desc
            /* arriba  */
            1 de m_ancho-72 x m_alto-tra3-38-22.75-j_desc

      FIN DESARME


      /* 3 Traviesas x 1 Parante   CASO 10*/
      DESARMAR SOLO SI par1!=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
               CORTES A RECTO:
         PERFIL C6060
         DESARMAR SOLO SI tipo_tra=1
            3 x m_ancho-60
            1 x tra1-30-16.75
            1 x tra2-tra1-16.75-16.75
            1 x tra3-tra2-16.75-16.75
            1 x m_alto-tra3-30-16.75
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            1 x m_alto-60
            3 x par1-30-16.75
            3 x m_ancho-par1-30-16.75
         FIN DESARME


      SEGUN contravid PERFIL C6047,C6048,C6045,C6046
DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME
         /* Horizontales */
         8 x par1-30-16.75
         8 x m_ancho-par1-30-16.75
         /* Verticales */
         4 x tra1-30-16.75-e_cont
         4 x tra2-tra1-16.75-16.75-e_cont
         4 x tra3-tra2-16.75-16.75-e_cont
         4 x m_alto-tra3-30-16.75-e_cont

            
         VIDRIOS
            1 de par1-38-22.75-j_desc x tra1-38-22.75-j_desc
            1 de m_ancho-par1-38-22.75-j_desc x tra1-38-22.75-j_desc
         PANELES
            1 de par1-38-22.75-j_desc x tra2-tra1-22.75-22.75-2*j_desc
            1 de m_ancho-par1-38-22.75-j_desc x tra2-tra1-22.75-22.75-2*j_desc
         OTROS INTERIORES
            1 de par1-38-22.75-j_desc x tra3-tra2-22.75-22.75-2*j_desc
            1 de m_ancho-par1-38-22.75-j_desc x tra3-tra2-22.75-22.75-2*j_desc
            1 de par1-38-22.75-j_desc x m_alto-tra3-38-22.75-j_desc
            1 de m_ancho-par1-38-22.75-j_desc x m_alto-tra3-38-22.75-j_desc
      FIN DESARME


      /* 3 Traviesas x 2 Parantes  CASO 13 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6060
         DESARMAR SOLO SI tipo_tra=1
            3 x m_ancho-60
            2 x tra1-30-16.75
            2 x tra2-tra1-16.75-16.75
            2 x tra3-tra2-16.75-16.75
            2 x m_alto-tra3-16.75-30
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            2 x m_alto-60
            3 x par1-30-16.75
            3 x par2-par1-16.75-16.75
            3 x m_ancho-par2-16.75-30
         FIN DESARME

      SEGUN contravid PERFIL C6047,C6048,C6045,C6046
DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME
         /* Horizontales */
         8 x par1-30-16.75
         8 x par2-par1-16.75-16.75
         8 x m_ancho-par2-30-16.75
         /* Verticales */
         6 x tra1-30-16.75-e_cont
         6 x tra2-tra1-16.75-16.75-e_cont
         6 x tra3-tra2-16.75-16.75-e_cont
         6 x m_alto-tra3-30-16.75-e_cont

            
         VIDRIOS
            1 de par1-38-22.75-j_desc x tra1-38-22.75-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra1-38-22.75-j_desc
            1 de m_ancho-par2-38-22.75-j_desc x tra1-38-22.75-j_desc
         PANELES
            1 de par1-38-22.75-j_desc x tra2-tra1-22.75-22.75-2*j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra2-tra1-22.75-22.75-2*j_desc
            1 de m_ancho-par2-38-22.75-j_desc x tra2-tra1-22.75-22.75-2*j_desc
         OTROS INTERIORES
            1 de par1-38-22.75-j_desc x tra3-tra2-22.75-22.75-2*j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra3-tra2-22.75-22.75-2*j_desc
            1 de m_ancho-par2-38-22.75-j_desc x tra3-tra2-22.75-22.75-2*j_desc
            1 de par1-38-22.75-j_desc x m_alto-tra3-38-22.75-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x m_alto-tra3-38-22.75-j_desc
            1 de m_ancho-par2-38-22.75-j_desc x m_alto-tra3-38-22.75-j_desc
      FIN DESARME

      /* 3 Traviesa x 3 Parantes  CASO 16 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4=0
         CORTES A RECTO:
         PERFIL C6060
         DESARMAR SOLO SI tipo_tra=1
            3 x m_ancho-60
            3 x tra1-30-16.75
            3 x tra2-tra1-16.75-16.75
            3 x tra3-tra2-16.75-16.75
            3 x m_alto-tra3-16.75-30
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            3 x m_alto-60
            3 x par1-30-16.75
            3 x par2-par1-16.75-16.75
            3 x par3-par2-16.75-16.75
            3 x m_ancho-par3-16.75-30
         FIN DESARME
      SEGUN contravid PERFIL C6047,C6048,C6045,C6046
DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME
         /* Horizontales */
         8 x par1-30-16.75
         8 x par2-par1-16.75-16.75
         8 x par3-par2-16.75-16.75
         8 x m_ancho-par3-30-16.75
         /* Verticales */
         8 x tra1-30-16.75-e_cont
         8 x tra2-tra1-16.75-16.75-e_cont
         8 x tra3-tra2-16.75-16.75-e_cont
         8 x m_alto-tra3-30-16.75-e_cont

            
        VIDRIOS
            1 de par1-38-22.75-j_desc x tra1-38-22.75-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra1-38-22.75-j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x tra1-38-22.75-j_desc
            1 de m_ancho-par3-38-22.75-j_desc x tra1-38-22.75-j_desc
        PANELES
            1 de par1-38-22.75-j_desc x tra2-tra1-22.75-22.75-2*j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra2-tra1-22.75-22.75-2*j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x tra2-tra1-22.75-22.75-2*j_desc
            1 de m_ancho-par3-38-22.75-j_desc x tra2-tra1-22.75-22.75-2*j_desc
        OTROS INTERIORES
            1 de par1-38-22.75-j_desc x tra3-tra2-22.75-22.75-2*j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra3-tra2-22.75-22.75-2*j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x tra3-tra2-22.75-22.75-2*j_desc
            1 de m_ancho-par3-38-22.75-j_desc x tra3-tra2-22.75-22.75-2*j_desc
            1 de par1-38-22.75-j_desc x m_alto-tra3-38-22.75-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x m_alto-tra3-38-22.75-j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x m_alto-tra3-38-22.75-j_desc
            1 de m_ancho-par3-38-22.75-j_desc x m_alto-tra3-38-22.75-j_desc
      FIN DESARME



      /* 3 Traviesa x 4 Parantes  CASO 16,5 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6060
         DESARMAR SOLO SI tipo_tra=1
            3 x m_ancho-60
            4 x tra1-30-16.75
            4 x tra2-tra1-16.75-16.75
            4 x tra3-tra2-16.75-16.75
            4 x m_alto-tra3-16.75-30
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            4 x m_alto-60
            3 x par1-30-16.75
            3 x par2-par1-16.75-16.75
            3 x par3-par2-16.75-16.75
            3 x m_ancho-par3-16.75-30
         FIN DESARME
      SEGUN contravid PERFIL C6047,C6048,C6045,C6046
DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME
         /* Horizontales */
         8 x par1-30-16.75
         8 x par2-par1-16.75-16.75
         8 x par3-par2-16.75-16.75
         8 x par4-par3-16.75-16.75
         8 x m_ancho-par4-30-16.75
         /* Verticales */
         10 x tra1-30-16.75-e_cont
         10 x tra2-tra1-16.75-16.75-e_cont
         10 x tra3-tra2-16.75-16.75-e_cont
         10 x m_alto-tra3-30-16.75-e_cont

            
        VIDRIOS
            1 de par1-38-22.75-j_desc x tra1-38-22.75-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra1-38-22.75-j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x tra1-38-22.75-j_desc
            1 de par4-par3-22.75-22.75-2*j_desc x tra1-38-22.75-j_desc
            1 de m_ancho-par4-38-22.75-j_desc x tra1-38-22.75-j_desc
        PANELES
            1 de par1-38-22.75-j_desc x tra2-tra1-22.75-22.75-2*j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra2-tra1-22.75-22.75-2*j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x tra2-tra1-22.75-22.75-2*j_desc
            1 de par4-par3-22.75-22.75-2*j_desc x tra1-22.75-22.75-j_desc
            1 de m_ancho-par4-38-22.75-j_desc x tra2-tra1-22.75-22.75-2*j_desc
        OTROS INTERIORES
            1 de par1-38-22.75-j_desc x tra3-tra2-22.75-22.75-2*j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra3-tra2-22.75-22.75-2*j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x tra3-tra2-22.75-22.75-2*j_desc
            1 de par4-par3-22.75-22.75-2*j_desc x tra1-22.75-22.75-j_desc
            1 de m_ancho-par4-38-22.75-j_desc x tra3-tra2-22.75-22.75-2*j_desc
            1 de par1-38-22.75-j_desc x m_alto-tra3-38-22.75-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x m_alto-tra3-38-22.75-j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x m_alto-tra3-38-22.75-j_desc
            1 de par4-par3-22.75-22.75-2*j_desc x tra1-38-22.75-j_desc
            1 de m_ancho-par4-38-22.75-j_desc x m_alto-tra3-38-22.75-j_desc
      FIN DESARME

 /* 3 Traviesa x 5 Parantes  CASO 17,5 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND. par5!=0
         CORTES A RECTO:
         PERFIL C6060
         DESARMAR SOLO SI tipo_tra=1
            3 x m_ancho-60
            5 x tra1-30-16.75
            5 x tra2-tra1-16.75-16.75
            5 x tra3-tra2-16.75-16.75
            5 x m_alto-tra3-16.75-30
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            5 x m_alto-60
            3 x par1-30-16.75
            3 x par2-par1-16.75-16.75
            3 x par3-par2-16.75-16.75
            3 x m_ancho-par3-16.75-30
         FIN DESARME
      SEGUN contravid PERFIL C6047,C6048,C6045,C6046
DESARMAR SOLO SI contravid<=2
         CORTES A 45:
FIN DESARME
DESARMAR SOLO SI contravid>=3
         CORTES A RECTO:
FIN DESARME
         /* Horizontales */
         8 x par1-30-16.75
         8 x par2-par1-16.75-16.75
         8 x par3-par2-16.75-16.75
         8 x par4-par3-16.75-16.75
         8 x par5-par4-16.75-16.75
         8 x par5-30-16.75
         /* Verticales */
         12 x tra1-30-16.75-e_cont
         12 x tra2-tra1-16.75-16.75-e_cont
         12 x tra3-tra2-16.75-16.75-e_cont
         12 x m_alto-tra3-30-16.75-e_cont

            
        VIDRIOS
            1 de par1-32-17-j_desc x tra1-32-17-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra1-32-17-j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x tra1-32-17-j_desc
            1 de par4-par3-22.75-22.75-2*j_desc x tra1-32-17-j_desc
            1 de par5-par4-22.75-22.75-2*j_desc x tra1-32-17-j_desc
            1 de m_ancho-par5-32-17-j_desc x tra1-32-17-j_desc
        PANELES
            1 de par1-32-17-j_desc x tra2-tra1-22.75-22.75-2*j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra2-tra1-22.75-22.75-2*j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x tra2-tra1-22.75-22.75-2*j_desc
            1 de par4-par3-22.75-22.75-2*j_desc x tra2-tra1-22.75-22.75-j_desc
            1 de par5-par4-22.75-22.75-2*j_desc x tra2-tra1-22.75-22.75-j_desc
            1 de m_ancho-par5-32-17-j_desc x tra2-tra1-22.75-22.75-2*j_desc
        OTROS INTERIORES
            1 de par1-32-17-j_desc x tra3-tra2-22.75-22.75-2*j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x tra3-tra2-22.75-22.75-2*j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x tra3-tra2-22.75-22.75-2*j_desc
            1 de par4-par3-22.75-22.75-2*j_desc x tra3-tra2-22.75-22.75-j_desc
            1 de par5-par4-22.75-22.75-2*j_desc x tra3-tra2-22.75-22.75-j_desc
            1 de m_ancho-par5-32-17-j_desc x tra3-tra2-22.75-22.75-2*j_desc
            1 de par1-32-17-j_desc x m_alto-tra3-38-22.75-j_desc
            1 de par2-par1-22.75-22.75-2*j_desc x m_alto-tra3-38-22.75-j_desc
            1 de par3-par2-22.75-22.75-2*j_desc x m_alto-tra3-38-22.75-j_desc
            1 de par4-par3-22.75-22.75-2*j_desc x m_alto-tra3-38-22.75-j_desc
            1 de par5-par4-22.75-22.75-2*j_desc x m_alto-tra3-38-22.75-j_desc
            1 de m_ancho-par5-32-17-j_desc x m_alto-tra3-38-22.75-j_desc

   FIN DESARME


   FIN DESARME                   /* 3 TRAVIESAS */


/* ACCESORIOS */
CALCULOS
   cant_p:=If(par1!=0 .AND. par2=0 .AND. par3=0 .AND. par4=0 .AND. par5=0, 1, 0)
   cant_p:=If(par1!=0 .AND. par2!=0 .AND. par3=0 .AND. par4=0 .AND. par5=0, 2, cant_p)
   cant_p:=If(par1!=0 .AND. par2!=0 .AND. par3!=0 .AND. par4=0 .AND. par5=0, 3, cant_p)
   cant_p:=If(par1!=0 .AND. par2!=0 .AND. par3!=0 .AND. par4!=0 .AND. par5=0, 4, cant_p)
   cant_p:=If(par1!=0 .AND. par2!=0 .AND. par3!=0 .AND. par4!=0 .AND. par5!=0, 5, cant_p)

   cant_t:=If(tra1!=0 .AND. tra2=0 .AND. tra3=0, 1, 0)
   cant_t:=If(tra1!=0 .AND. tra2!=0 .AND. tra3=0, 2, cant_t)
   cant_t:=If(tra1!=0 .AND. tra2!=0 .AND. tra3!=0, 3, cant_t)


FIN CALCULOS

      /* Accesorios */


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
         2*(cant_t) x m_ancho/1000
         2 x m_alto/1000
         2*(cant_p) x m_alto/1000
      PARTE B31
         2 x m_ancho/1000
         2*(cant_t) x m_ancho/1000
         2 x m_alto/1000
         2*(cant_p) x m_alto/1000
  
      DESARMAR SOLO SI contravid=1 .OR. contravid=2
      PARTE T96
         2 x INT((m_ancho-200)/300)+cant_p
         2*cant_t x INT((m_ancho-200)/300)+cant_p
         2 x INT((m_alto-200)/300)+cant_t
         2*cant_p x INT((m_alto-200)/300)+cant_t
      FIN DESARME

      PARTE E84
          1 x 2*cant_t+2*(cant_t+1)*cant_p

PRODUCTO MAPF








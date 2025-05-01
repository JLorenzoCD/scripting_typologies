/* Pa¤o fijo BORDE CURVO con PARANTES y TRAVIESAS variables LINEA MODENA*/
/* travesanio angosto y ancho y marco curvo C6229  */


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

   d_tra:=0
   m_em:=28
   m_et:=12
   m_dto_u:=m_em-m_et
   
FIN CALCULOS

DESARMAR SOLO SI unificado(1)=0
   CORTES A 45:
      PERFIL C7277
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











/* *********************************************************** */
CALCULOS
  
   m_desc:=0
/*   d_tra:=if (tipo_patr=1,0,5)
FIN CALCULOS



/* calculo segun el tipo de travesano/parante el descuento del vidrio */
/* si es ancho hay que descontar 10 mm mas que en el angosto */
/* NOTA: como es marco curvo solo va 1 tipo de travesanio... por ahora */
/* es el 6264 y tiene el mismo descuento que el angosto 6221 */
/*el calculo auxiliar j_desc, esta pensado para darle un formato a la planilla*/
/*que en un futuro permita usar distintos tipos de travesanio*/
/*el calculo e_cont permite descontarle 32 mm. en el alto a los contravidrios rectos*/

CALCULOS
    j_desc:=0
    e_cont:=if(contravid=3 .OR. contravid=4,32,0)
FIN CALCULOS

CORTES A 45:

/* sin parantes ni traviesas */
DESARMAR SOLO SI par1=0 .AND. par2=0 .AND. par3=0 .AND. par4=0 .AND. par5=0 .AND. tra1=0 .AND. tra2=0 .AND. tra3=0

    SEGUN contravid PERFIL C6232,C6233,C6225,C6238
      /* Horizontales */
         2 x m_ancho-57
      /* Verticales */
         2 x m_alto-57-e_cont
   VIDRIOS
         
         1 de m_ancho-69 x m_alto-69

FIN DESARME

   /* 0 traviesa en posicion variable y 1-5 parantes */
   DESARMAR SOLO SI tra1=0 .AND. tra2=0  .AND. tra3=0

      /* 0 Traviesa x 1 Parante CASO 2 */
      DESARMAR SOLO SI par1!=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND. par5=0 
         CORTES A RECTO:
         PERFIL C6264
         1 x m_alto-57

      SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         CORTES A 45:
         /* Horizontales */
         2 x par1-28-12.5
         2 x m_ancho-par1-28-12.5
         /* Verticales */
         4 x m_alto-57-e_cont
      VIDRIOS
         
            /* izquierda */
            1 de par1-31-18-j_desc x m_alto-69
            /* derecha */
            1 de m_ancho-par1-31-18-j_desc x m_alto-69

    FIN DESARME

      /* 0 Traviesa x 2 Parante CASO 3 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6264
         2 x m_alto-57

      SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         CORTES A 45:
         /* Horizontales */
         2 x par1-28-12.5
         2 x par2-par1-12.5-12.5
         2 x m_ancho-par2-28-12.5
         /* Verticales */
         6 x m_alto-57-e_cont

      VIDRIOS
         
            /* izquierda */
            1 de par1-31-15-j_desc x m_alto-69
            /* medio */
            1 de par2-par1-18-18-2*j_desc x m_alto-69
            /* derecha */
            1 de m_ancho-par2-31-18-j_desc x m_alto-69

      FIN DESARME

      /* 0 Traviesa x 3 Parante CASO 4 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6264
         3 x m_alto-57

      SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         CORTES A 45:
         /* Horizontales */
         2 x par1-28-12.5
         2 x par2-par1-12.5-12.5
         2 x par3-par2-12.5-12.5
         2 x m_ancho-par3-28-12.5
         /* Verticales */
         8 x m_alto-57-e_cont

      VIDRIOS
         
            /* izquierda */
            1 de par1-31-18-j_desc x m_alto-69
            /* medio */
            1 de par2-par1-18-18-2*j_desc x m_alto-69
            /* medio */
            1 de par3-par2-18-18-2*j_desc x m_alto-69
            /* derecha */
            1 de m_ancho-par3-31-18-j_desc x m_alto-69

     
   FIN DESARME


   /* 0 Traviesa x 4 Parante CASO 4,5 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6264
         4 x m_alto-57

      SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         CORTES A 45:
         /* Horizontales */
         2 x par1-28-12.5
         2 x par2-par1-12.5-12.5
         2 x par3-par2-12.5-12.5
         2 x par4-par3-12.5-12.5
         2 x m_ancho-par4-28-12.5
 
         /* Verticales */
         10 x m_alto-57-e_cont

      VIDRIOS
         
            /* izquierda */
            1 de par1-31-18-j_desc x m_alto-69
            /* medio */
            1 de par2-par1-18-18-2*j_desc x m_alto-69
            /* medio */
            1 de par3-par2-18-18-2*j_desc x m_alto-69
            /* medio */
            1 de par4-par3-18-18-2*j_desc x m_alto-69
            /* derecha */
            1 de m_ancho-par4-31-18-j_desc x m_alto-69

   FIN DESARME


   /* 0 Traviesa x 5 Parante CASO 5,5 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND. par5!=0
         CORTES A RECTO:
         PERFIL C6264
         5 x m_alto-57

      SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         CORTES A 45:
         /* Horizontales */
         2 x par1-28-12.5
         2 x par2-par1-12.5-12.5
         2 x par3-par2-12.5-12.5
         2 x par4-par3-12.5-12.5
         2 x par5-par4-12.5-12.5
         2 x m_ancho-par5-28-12.5
 
         /* Verticales */
         12 x m_alto-57-e_cont

      VIDRIOS
         
            /* izquierda */
            1 de par1-31-18-j_desc x m_alto-69
            /* medio */
            1 de par2-par1-18-18-2*j_desc x m_alto-69
            /* medio */
            1 de par3-par2-18-18-2*j_desc x m_alto-69
            /* medio */
            1 de par4-par3-18-18-2*j_desc x m_alto-69
            /* medio */
            1 de par5-par4-18-18-2*j_desc x m_alto-69
            /* derecha */
            1 de m_ancho-par5-31-18-j_desc x m_alto-69

   FIN DESARME

   FIN DESARME

  

   /* 1 traviesa en posicion variable y 1-5 parantes */
   DESARMAR SOLO SI tra1!=0 .AND. tra2=0  .AND. tra3=0
         /* 1 Traviesa x 0 Parante CASO 5 */
      DESARMAR SOLO SI par1=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND.par5=0
         CORTES A RECTO:
         PERFIL C6264
         1 x m_ancho-57

      SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         CORTES A 45:
         /* Horizontales */
         4 x m_ancho-57
         /* Verticales */
         2 x tra1-28-12.5-e_cont
         2 x m_alto-tra1-28-12.5-e_cont

      VIDRIOS
            /* abajo  */
            1 de m_ancho-69 x tra1-31-18-j_desc
      PANELES
            /* arriba  */
            1 de m_ancho-69 x m_alto-tra1-31-18-j_desc

      FIN DESARME
                                                                                 
      /* 1 Traviesa x 1 Parante CASO 8 */
      DESARMAR SOLO SI par1!=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6264
         DESARMAR SOLO SI tipo_tra=1
            1 x m_ancho-57
            1 x tra1-12.5-28
            1 x m_alto-tra1-12.5-28
         FIN DESARME

         DESARMAR SOLO SI tipo_tra=2
            1 x m_alto-57
            1 x par1-12.5-28
            1 x m_ancho-par1-12.5-28
         FIN DESARME

      SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         CORTES A 45:
         /* Horizontales */
         4 x par1-28-12.5
         4 x m_ancho-par1-28-12.5
         /* Verticales */
         4 x tra1-28-12.5-e_cont
         4 x m_alto-tra1-28-12.5-e_cont
         
      VIDRIOS
            1 de par1-31-18-j_desc x tra1-31-18-j_desc
            1 de m_ancho-par1-31-18-j_desc x tra1-31-18-j_desc
      PANELES
            1 de par1-31-18-j_desc x m_alto-tra1-31-18-j_desc
            1 de m_ancho-par1-31-18-j_desc x m_alto-tra1-31-18-j_desc

      FIN DESARME

      /* 1 Traviesa x 2 Parantes   CASO 11 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6264
         DESARMAR SOLO SI tipo_tra=1
            1 x m_ancho-52
            2 x tra1-12.5-26
            2 x m_alto-tra1-12.5-26
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            2 x m_alto-52
            1 x par1-12.5-26
            1 x par2-par1-12.5-12.5-e_cont
            1 x m_ancho-par2-12.5-26
         FIN DESARME

         CORTES A 45:
         SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         /* Horizontales */
         4 x par1-26-12.5
         4 x par2-par1-12.5-12.5
         4 x m_ancho-par2-26-12.5
         /* Verticales */
         6 x tra1-26-12.5-e_cont
         6 x m_alto-tra1-26-12.5-e_cont
            
            /* Base de la Izquierda  */
        VIDRIOS
            1 de par1-31-18-j_desc x tra1-31-18-j_desc
            1 de par2-par1-18-18-2*j_desc x tra1-31-18-j_desc
            1 de m_ancho-par2-31-18-j_desc x tra1-31-18-j_desc
        PANELES
            1 de par1-31-18-j_desc x m_alto-tra1-31-18-j_desc
            1 de par2-par1-18-18-2*j_desc x m_alto-tra1-31-18-j_desc
            1 de m_ancho-par2-31-18-j_desc x m_alto-tra1-31-18-j_desc
      FIN DESARME

      /* 1 Traviesa x 3 Parantes   CASO 14 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6264
         DESARMAR SOLO SI tipo_tra=1
            1 x m_ancho-57
            3 x tra1-12.5-28
            3 x m_alto-tra1-12.5-28
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            3 x m_alto-57
            1 x par1-12.5-28
            1 x par2-par1-12.5-12.5
            1 x par3-par2-12.5-12.5
            1 x m_ancho-par3-12.5-28
         FIN DESARME

         CORTES A 45:
         SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         /* Horizontales */
         4 x par1-28-12.5
         4 x par2-par1-12.5-12.5
         4 x par3-par2-12.5-12.5
         4 x m_ancho-par3-28-12.5
         /* Verticales */
         8 x tra1-28-12.5-e_cont
         8 x m_alto-tra1-28-12.5-e_cont

         VIDRIOS
            
            /* Base de la Izquierda  */
        VIDRIOS
            1 de par1-31-18-j_desc x tra1-31-18-j_desc
            1 de par2-par1-18-18-2*j_desc x tra1-31-18-j_desc
            1 de par3-par2-18-18-2*j_desc x tra1-31-18-j_desc
            1 de m_ancho-par3-31-18-j_desc x tra1-31-18-j_desc

        PANELES
            1 de par1-31-18-j_desc x m_alto-tra1-31-18-j_desc
            1 de par2-par1-18-18-2*j_desc x m_alto-tra1-31-18-j_desc
            1 de par3-par2-18-18-2*j_desc x m_alto-tra1-31-18-j_desc
            1 de m_ancho-par3-31-18-j_desc x m_alto-tra1-31-18-j_desc
     
   FIN DESARME    

     /* 1 Traviesa x 4 Parantes   CASO 14,5 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND.par5=0
         CORTES A RECTO:
         PERFIL C6264
         DESARMAR SOLO SI tipo_tra=1
            1 x m_ancho-57
            4 x tra1-12.5-28
            4 x m_alto-tra1-12.5-28
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            3 x m_alto-57
            1 x par1-12.5-28
            1 x par2-par1-12.5-12.5
            1 x par3-par2-12.5-12.5
            1 x par4-par3-12.5-12.5   
            1 x m_ancho-par4-12.5-28
         FIN DESARME

         CORTES A 45:
         SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         /* Horizontales */
         4 x par1-28-12.5
         4 x par2-par1-12.5-12.5
         4 x par3-par2-12.5-12.5
         4 x par4-par3-12.5-12.5
         4 x m_ancho-par4-28-12.5
         /* Verticales */
         10 x tra1-28-12.5-e_cont
         10 x m_alto-tra1-28-12.5-e_cont

         VIDRIOS
            
            /* Base de la Izquierda  */
        VIDRIOS
            1 de par1-31-18-j_desc x tra1-31-18-j_desc
            1 de par2-par1-18-18-2*j_desc x tra1-31-18-j_desc
            1 de par3-par2-18-18-2*j_desc x tra1-31-18-j_desc
            1 de par4-par3-18-18-2*j_desc x tra1-31-18-j_desc
            1 de m_ancho-par4-31-18-j_desc x tra1-31-18-j_desc

        PANELES
            1 de par1-31-18-j_desc x m_alto-tra1-31-18-j_desc
            1 de par2-par1-18-18-2*j_desc x m_alto-tra1-31-18-j_desc
            1 de par3-par2-18-18-2*j_desc x m_alto-tra1-31-18-j_desc
            1 de par4-par3-18-18-2*j_desc x m_alto-tra1-31-18-j_desc
            1 de m_ancho-par4-31-18-j_desc x m_alto-tra1-31-18-j_desc

      FIN DESARME

     /* 1 Traviesa x 5 Parantes   CASO 15,5 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND.par5!=0
         CORTES A RECTO:
         PERFIL C6264
         DESARMAR SOLO SI tipo_tra=1
            1 x m_ancho-57
            5 x tra1-12.5-28
            5 x m_alto-tra1-12.5-28
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            5 x m_alto-57
            1 x par1-12.5-28
            1 x par2-par1-12.5-12.5
            1 x par3-par2-12.5-12.5
            1 x par4-par3-12.5-12.5   
            1 x par5-par4-12.5-12.5
            1 x m_ancho-par5-12.5-28
         FIN DESARME

         CORTES A 45:
         SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         /* Horizontales */
         4 x par1-28-12.5
         4 x par2-par1-12.5-12.5
         4 x par3-par2-12.5-12.5
         4 x par4-par3-12.5-12.5
         4 x par5-par4-12.5-12.5
         4 x m_ancho-par5-28-12.5
         /* Verticales */
         12 x tra1-28-12.5-e_cont
         12 x m_alto-tra1-28-12.5-e_cont

         VIDRIOS
            
            /* Base de la Izquierda  */
        VIDRIOS
            1 de par1-31-18-j_desc x tra1-31-18-j_desc
            1 de par2-par1-18-18-2*j_desc x tra1-31-18-j_desc
            1 de par3-par2-18-18-2*j_desc x tra1-31-18-j_desc
            1 de par4-par3-18-18-2*j_desc x tra1-31-18-j_desc
            1 de par5-par4-18-18-2*j_desc x tra1-31-18-j_desc
            1 de m_ancho-par5-31-18-j_desc x tra1-31-18-j_desc

        PANELES
            1 de par1-31-18-j_desc x m_alto-tra1-31-18-j_desc
            1 de par2-par1-18-18-2*j_desc x m_alto-tra1-31-18-j_desc
            1 de par3-par2-18-18-2*j_desc x m_alto-tra1-31-18-j_desc
            1 de par4-par3-18-18-2*j_desc x m_alto-tra1-31-18-j_desc
            1 de par5-par4-18-18-2*j_desc x m_alto-tra1-31-18-j_desc
            1 de m_ancho-par5-31-18-j_desc x m_alto-tra1-31-18-j_desc
     
   FIN DESARME

   FIN DESARME             /* 1 TRAVIESA */



   /* 2 traviesas en posicion variable y 0-5 parantes */
   DESARMAR SOLO SI tra1!=0 .AND. tra2!=0  .AND. tra3=0

      /* 2 Traviesa x 0 Parante CASO 6 */
      DESARMAR SOLO SI par1=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6264
         2 x m_ancho-57

      SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         CORTES A 45:
         /* Horizontales */
         6 x m_ancho-57
         /* Verticales */
         2 x tra1-28-12.5-e_cont
         2 x tra2-tra1-12.5-12.5-e_cont
         2 x m_alto-tra2-28-12.5-e_cont

         
      VIDRIOS
            /* abajo  */
            1 de m_ancho-69 x tra1-31-18-j_desc
      PANELES
            /* medio  */
            1 de m_ancho-69 x tra2-tra1-18-18-2*j_desc
      OTROS INTERIORES
            /* arriba  */
            1 de m_ancho-69 x m_alto-tra2-31-18-j_desc

      FIN DESARME


      /* 2 Traviesa x 1 Parante  CASO 9 */
      DESARMAR SOLO SI par1!=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6264
         DESARMAR SOLO SI tipo_tra=1
            2 x m_ancho-57
            1 x tra1-12.5-28
            1 x tra2-tra1-12.5-12.5
            1 x m_alto-tra2-12.5-28
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            1 x m_alto-57
            2 x par1-12.5-28
            2 x m_ancho-par1-12.5-28
         FIN DESARME

         CORTES A 45:
         SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         /* Horizontales */
         6 x par1-28-12.5
         6 x m_ancho-par1-28-12.5
         /* Verticales */
         4 x tra1-28-12.5-e_cont
         4 x tra2-tra1-12.5-12.5-e_cont
         4 x m_alto-tra2-28-12.5-e_cont

            
         VIDRIOS
            1 de par1-31-18-j_desc x tra1-31-18-j_desc
            1 de m_ancho-par1-31-18-j_desc x tra1-31-18-j_desc
         PANELES
            1 de par1-31-18-j_desc x tra2-tra1-18-18-2*j_desc
            1 de m_ancho-par1-31-18-j_desc x tra2-tra1-18-18-2*j_desc
         OTROS INTERIORES
            1 de par1-31-18-j_desc x m_alto-tra2-31-18-j_desc
            1 de m_ancho-par1-31-18-j_desc x m_alto-tra2-31-18-j_desc
      FIN DESARME

      /* 2 Traviesa x 2 Parantes  CASO 12 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6264
         DESARMAR SOLO SI tipo_tra=1
            2 x m_ancho-57
            2 x tra1-28-12.5
            2 x tra2-tra1-12.5-12.5
            2 x m_alto-tra2-12.5-28
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            2 x m_alto-57
            2 x par1-28-12.5
            2 x par2-par1-12.5-12.5
            2 x m_ancho-par2-12.5-28
         FIN DESARME


      SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         CORTES A 45:

         /* Horizontales */
         6 x par1-28-12.5
         6 x par2-par1-12.5-12.5
         6 x m_ancho-par2-28-12.5
         /* Verticales */
         6 x tra1-28-12.5-e_cont
         6 x tra2-tra1-12.5-12.5-e_cont
         6 x m_alto-tra2-28-12.5-e_cont

            
         VIDRIOS
            1 de par1-31-18-j_desc x tra1-31-18-j_desc
            1 de par2-par1-18-18-2*j_desc x tra1-31-18-j_desc
            1 de m_ancho-par2-31-18-j_desc x tra1-31-18-j_desc
         PANELES
            1 de par1-31-18-j_desc x tra2-tra1-18-18-2*j_desc
            1 de par2-par1-18-18-2*j_desc x tra2-tra1-18-18-2*j_desc
            1 de m_ancho-par2-31-18-j_desc x tra2-tra1-18-18-2*j_desc
         OTROS INTERIORES
            1 de par1-31-18-j_desc x m_alto-tra2-31-18-j_desc
            1 de par2-par1-18-18-2*j_desc x m_alto-tra2-31-18-j_desc
            1 de m_ancho-par2-31-18-j_desc x m_alto-tra2-31-18-j_desc
      FIN DESARME

      /* 2 Traviesa x 3 Parantes  CASO 15 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6264
         DESARMAR SOLO SI tipo_tra=1
            2 x m_ancho-57
            3 x tra1-28-12.5
            3 x tra2-tra1-12.5-12.5
            3 x m_alto-tra2-12.5-28
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            3 x m_alto-57
            2 x par1-28-12.5
            2 x par2-par1-12.5-12.5
            2 x par3-par2-12.5-12.5
            2 x m_ancho-par3-12.5-28
         FIN DESARME

      SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         CORTES A 45:
         /* Horizontales */
         6 x par1-28-12.5
         6 x par2-par1-12.5-12.5
         6 x par3-par2-12.5-12.5
         6 x m_ancho-par3-28-12.5
         /* Verticales */
         8 x tra1-28-12.5-e_cont
         8 x tra2-tra1-12.5-12.5-e_cont
         8 x m_alto-tra2-28-12.5-e_cont

            
         VIDRIOS
            1 de par1-31-18-j_desc x tra1-31-18-j_desc
            1 de par2-par1-18-18-2*j_desc x tra1-31-18-2*j_desc
            1 de par3-par2-18-18-2*j_desc x tra1-31-18-2*j_desc
            1 de m_ancho-par3-31-18-j_desc x tra1-31-18-2*j_desc
         PANELES
            1 de par1-31-18-j_desc x tra2-tra1-18-18-2*j_desc
            1 de par2-par1-18-18-2*j_desc x tra2-tra1-18-18-j_desc
            1 de par3-par2-18-18-2*j_desc x tra2-tra1-18-18-j_desc
            1 de m_ancho-par3-31-18-j_desc x tra2-tra1-18-18-2*j_desc
         OTROS INTERIORES
            1 de par1-31-18-j_desc x m_alto-tra2-31-18-2*j_desc
            1 de par2-par1-18-18-2*j_desc x m_alto-tra2-31-18-2*j_desc
            1 de par3-par2-18-18-2*j_desc x m_alto-tra2-31-18-j_desc
            1 de m_ancho-par3-31-18-j_desc x m_alto-tra2-31-18-j_desc
      FIN DESARME


   /* 2 Traviesa x 4 Parantes  CASO 15,5 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6264
         DESARMAR SOLO SI tipo_tra=1
            2 x m_ancho-57
            4 x tra1-28-12.5
            4 x tra2-tra1-12.5-12.5
            4 x m_alto-tra2-12.5-28
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            4 x m_alto-57
            2 x par1-28-12.5
            2 x par2-par1-12.5-12.5
            2 x par3-par2-12.5-12.5
            2 x m_ancho-par3-12.5-28
         FIN DESARME

      SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         CORTES A 45:
         /* Horizontales */
         6 x par1-28-12.5
         6 x par2-par1-12.5-12.5
         6 x par3-par2-12.5-12.5
         6 x par4-par3-12.5-12.5
         6 x m_ancho-par4-28-12.5
         /* Verticales */
         10 x tra1-28-12.5-e_cont
         10 x tra2-tra1-12.5-12.5-e_cont
         10 x m_alto-tra2-28-12.5-e_cont

            
         VIDRIOS
            1 de par1-31-18-j_desc x tra1-31-18-j_desc
            1 de par2-par1-18-18-2*j_desc x tra1-31-18-2*j_desc
            1 de par3-par2-18-18-2*j_desc x tra1-31-18-2*j_desc
            1 de par4-par3-18-18-2*j_desc x tra1-31-18-2*j_desc
            1 de m_ancho-par4-31-18-j_desc x tra1-31-18-2*j_desc
         PANELES
            1 de par1-31-18-j_desc x tra2-tra1-18-18-2*j_desc
            1 de par2-par1-18-18-2*j_desc x tra2-tra1-18-18-j_desc
            1 de par3-par2-18-18-2*j_desc x tra2-tra1-18-18-j_desc
            1 de par4-par3-18-18-2*j_desc x tra2-tra1-18-18-j_desc
            1 de m_ancho-par4-31-18-j_desc x tra2-tra1-18-18-2*j_desc
         OTROS INTERIORES
            1 de par1-31-18-j_desc x m_alto-tra2-31-18-2*j_desc
            1 de par2-par1-18-18-2*j_desc x m_alto-tra2-31-18-2*j_desc
            1 de par3-par2-18-18-2*j_desc x m_alto-tra2-31-18-j_desc
            1 de par4-par3-18-18-2*j_desc x m_alto-tra2-31-18-j_desc
            1 de m_ancho-par4-31-18-j_desc x m_alto-tra2-31-18-j_desc

      FIN DESARME

   /* 2 Traviesa x 5 Parantes  CASO 15,5 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND. par5!=0
         CORTES A RECTO:
         PERFIL C6264
         DESARMAR SOLO SI tipo_tra=1
            2 x m_ancho-57
            5 x tra1-28-12.5
            5 x tra2-tra1-12.5-12.5
            5 x m_alto-tra2-12.5-28
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            5 x m_alto-57
            2 x par1-28-12.5
            2 x par2-par1-12.5-12.5
            2 x par3-par2-12.5-12.5
            2 x m_ancho-par3-12.5-28
         FIN DESARME
      SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         CORTES A 45:
         /* Horizontales */
         6 x par1-28-12.5
         6 x par2-par1-12.5-12.5
         6 x par3-par2-12.5-12.5
         6 x par4-par3-12.5-12.5
         6 x par5-par4-12.5-12.5
         6 x m_ancho-par5-28-12.5
         /* Verticales */
         12 x tra1-28-12.5-e_cont
         12 x tra2-tra1-12.5-12.5-e_cont
         12 x m_alto-tra2-28-12.5-e_cont

            
         VIDRIOS
            1 de par1-32-17-j_desc x tra1-32-19-j_desc
            1 de par2-par1-18-18-2*j_desc x tra1-32-19-2*j_desc
            1 de par3-par2-18-18-2*j_desc x tra1-32-19-2*j_desc
            1 de par4-par3-18-18-2*j_desc x tra1-32-19-2*j_desc
            1 de par5-par4-18-18-2*j_desc x tra1-32-19-2*j_desc
            1 de m_ancho-par5-32-17-j_desc x tra1-32-19-2*j_desc
         PANELES
            1 de par1-32-17-j_desc x tra2-tra1-18-18-2*j_desc
            1 de par2-par1-18-18-2*j_desc x tra2-tra1-18-18-j_desc
            1 de par3-par2-18-18-2*j_desc x tra2-tra1-18-18-j_desc
            1 de par4-par3-18-18-2*j_desc x tra2-tra1-18-18-j_desc
            1 de par5-par4-18-18-2*j_desc x tra2-tra1-18-18-j_desc
            1 de m_ancho-par5-32-17-j_desc x tra2-tra1-18-18-2*j_desc
         OTROS INTERIORES
            1 de par1-32-17-j_desc x m_alto-tra2-32-18-2*j_desc
            1 de par2-par1-18-18-2*j_desc x m_alto-tra2-32-18-2*j_desc
            1 de par3-par2-18-18-2*j_desc x m_alto-tra2-32-18-j_desc
            1 de par4-par3-18-18-2*j_desc x m_alto-tra2-32-18-j_desc
            1 de par5-par4-18-18-2*j_desc x m_alto-tra2-32-18-j_desc
            1 de m_ancho-par5-32-17-j_desc x m_alto-tra2-32-18-j_desc

      FIN DESARME


      FIN DESARME  /* 2 TRAVIESAS */




   /* 3 traviesas en posicion variable y 1-5 parantes */
   DESARMAR SOLO SI tra1!=0 .AND. tra2!=0  .AND. tra3!=0

      /* 3 Traviesa x 0 Parante CASO 7 */
      DESARMAR SOLO SI par1=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6264
         3 x m_ancho-57

      SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         CORTES A 45:
         /* Horizontales */
         8 x m_ancho-57
         /* Verticales */
         2 x tra1-28-12.5-e_cont
         2 x tra2-tra1-12.5-12.5-e_cont
         2 x tra3-tra2-12.5-12.5-e_cont
         2 x m_alto-tra2-28-12.5-e_cont

         
         VIDRIOS
            /* abajo  */
            1 de m_ancho-69 x tra1-31-18-j_desc
         PANELES
            /* medio  */
            1 de m_ancho-69 x tra2-tra1-18-18-2*j_desc
         OTROS INTERIORES
            /* medio  */
            1 de m_ancho-69 x tra3-tra2-18-18-2*j_desc
            /* arriba  */
            1 de m_ancho-69 x m_alto-tra3-31-18-j_desc

      FIN DESARME


      /* 3 Traviesas x 1 Parante   CASO 10*/
      DESARMAR SOLO SI par1!=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
               CORTES A RECTO:
         PERFIL C6264
         DESARMAR SOLO SI tipo_tra=1
            3 x m_ancho-57
            1 x tra1-28-12.5
            1 x tra2-tra1-12.5-12.5
            1 x tra3-tra2-12.5-12.5
            1 x m_alto-tra3-28-12.5
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            1 x m_alto-57
            3 x par1-28-12.5
            3 x m_ancho-par1-28-12.5
         FIN DESARME


      SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         CORTES A 45:
         /* Horizontales */
         8 x par1-28-12.5
         8 x m_ancho-par1-28-12.5
         /* Verticales */
         4 x tra1-28-12.5-e_cont
         4 x tra2-tra1-12.5-12.5-e_cont
         4 x tra3-tra2-12.5-12.5-e_cont
         4 x m_alto-tra3-28-12.5-e_cont

            
         VIDRIOS
            1 de par1-31-18-j_desc x tra1-31-18-j_desc
            1 de m_ancho-par1-31-18-j_desc x tra1-31-18-j_desc
         PANELES
            1 de par1-31-18-j_desc x tra2-tra1-18-18-2*j_desc
            1 de m_ancho-par1-31-18-j_desc x tra2-tra1-18-18-2*j_desc
         OTROS INTERIORES
            1 de par1-31-18-j_desc x tra3-tra2-18-18-2*j_desc
            1 de m_ancho-par1-31-18-j_desc x tra3-tra2-18-18-2*j_desc
            1 de par1-31-18-j_desc x m_alto-tra3-31-18-j_desc
            1 de m_ancho-par1-31-18-j_desc x m_alto-tra3-31-18-j_desc
      FIN DESARME


      /* 3 Traviesas x 2 Parantes  CASO 13 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6264
         DESARMAR SOLO SI tipo_tra=1
            3 x m_ancho-57
            2 x tra1-28-12.5
            2 x tra2-tra1-12.5-12.5
            2 x tra3-tra2-12.5-12.5
            2 x m_alto-tra3-12.5-28
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            2 x m_alto-57
            3 x par1-28-12.5
            3 x par2-par1-12.5-12.5
            3 x m_ancho-par2-12.5-28
         FIN DESARME

      SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         CORTES A 45:

         /* Horizontales */
         8 x par1-28-12.5
         8 x par2-par1-12.5-12.5
         8 x m_ancho-par2-28-12.5
         /* Verticales */
         6 x tra1-28-12.5-e_cont
         6 x tra2-tra1-12.5-12.5-e_cont
         6 x tra3-tra2-12.5-12.5-e_cont
         6 x m_alto-tra3-28-12.5-e_cont

            
         VIDRIOS
            1 de par1-31-18-j_desc x tra1-31-18-j_desc
            1 de par2-par1-18-18-2*j_desc x tra1-31-18-j_desc
            1 de m_ancho-par2-31-18-j_desc x tra1-31-18-j_desc
         PANELES
            1 de par1-31-18-j_desc x tra2-tra1-18-18-2*j_desc
            1 de par2-par1-18-18-2*j_desc x tra2-tra1-18-18-2*j_desc
            1 de m_ancho-par2-31-18-j_desc x tra2-tra1-18-18-2*j_desc
         OTROS INTERIORES
            1 de par1-31-18-j_desc x tra3-tra2-18-18-2*j_desc
            1 de par2-par1-18-18-2*j_desc x tra3-tra2-18-18-2*j_desc
            1 de m_ancho-par2-31-18-j_desc x tra3-tra2-18-18-2*j_desc
            1 de par1-31-18-j_desc x m_alto-tra3-31-18-j_desc
            1 de par2-par1-18-18-2*j_desc x m_alto-tra3-31-18-j_desc
            1 de m_ancho-par2-31-18-j_desc x m_alto-tra3-31-18-j_desc
      FIN DESARME

      /* 3 Traviesa x 3 Parantes  CASO 16 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4=0
         CORTES A RECTO:
         PERFIL C6264
         DESARMAR SOLO SI tipo_tra=1
            3 x m_ancho-57
            3 x tra1-28-12.5
            3 x tra2-tra1-12.5-12.5
            3 x tra3-tra2-12.5-12.5
            3 x m_alto-tra3-12.5-28
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            3 x m_alto-57
            3 x par1-28-12.5
            3 x par2-par1-12.5-12.5
            3 x par3-par2-12.5-12.5
            3 x m_ancho-par3-12.5-28
         FIN DESARME
      SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         CORTES A 45:
         /* Horizontales */
         8 x par1-28-12.5
         8 x par2-par1-12.5-12.5
         8 x par3-par2-12.5-12.5
         8 x m_ancho-par3-28-12.5
         /* Verticales */
         8 x tra1-28-12.5-e_cont
         8 x tra2-tra1-12.5-12.5-e_cont
         8 x tra3-tra2-12.5-12.5-e_cont
         8 x m_alto-tra3-28-12.5-e_cont

            
        VIDRIOS
            1 de par1-31-18-j_desc x tra1-31-18-j_desc
            1 de par2-par1-18-18-2*j_desc x tra1-31-18-j_desc
            1 de par3-par2-18-18-2*j_desc x tra1-31-18-j_desc
            1 de m_ancho-par3-31-18-j_desc x tra1-31-18-j_desc
        PANELES
            1 de par1-31-18-j_desc x tra2-tra1-18-18-2*j_desc
            1 de par2-par1-18-18-2*j_desc x tra2-tra1-18-18-2*j_desc
            1 de par3-par2-18-18-2*j_desc x tra2-tra1-18-18-2*j_desc
            1 de m_ancho-par3-31-18-j_desc x tra2-tra1-18-18-2*j_desc
        OTROS INTERIORES
            1 de par1-31-18-j_desc x tra3-tra2-18-18-2*j_desc
            1 de par2-par1-18-18-2*j_desc x tra3-tra2-18-18-2*j_desc
            1 de par3-par2-18-18-2*j_desc x tra3-tra2-18-18-2*j_desc
            1 de m_ancho-par3-31-18-j_desc x tra3-tra2-18-18-2*j_desc
            1 de par1-31-18-j_desc x m_alto-tra3-31-18-j_desc
            1 de par2-par1-18-18-2*j_desc x m_alto-tra3-31-18-j_desc
            1 de par3-par2-18-18-2*j_desc x m_alto-tra3-31-18-j_desc
            1 de m_ancho-par3-31-18-j_desc x m_alto-tra3-31-18-j_desc
      FIN DESARME



      /* 3 Traviesa x 4 Parantes  CASO 16,5 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND. par5=0
         CORTES A RECTO:
         PERFIL C6264
         DESARMAR SOLO SI tipo_tra=1
            3 x m_ancho-57
            4 x tra1-28-12.5
            4 x tra2-tra1-12.5-12.5
            4 x tra3-tra2-12.5-12.5
            4 x m_alto-tra3-12.5-28
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            4 x m_alto-57
            3 x par1-28-12.5
            3 x par2-par1-12.5-12.5
            3 x par3-par2-12.5-12.5
            3 x m_ancho-par3-12.5-28
         FIN DESARME
      SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         CORTES A 45:
         /* Horizontales */
         8 x par1-28-12.5
         8 x par2-par1-12.5-12.5
         8 x par3-par2-12.5-12.5
         8 x par4-par3-12.5-12.5
         8 x m_ancho-par4-28-12.5
         /* Verticales */
         10 x tra1-28-12.5-e_cont
         10 x tra2-tra1-12.5-12.5-e_cont
         10 x tra3-tra2-12.5-12.5-e_cont
         10 x m_alto-tra3-28-12.5-e_cont

            
        VIDRIOS
            1 de par1-31-18-j_desc x tra1-31-18-j_desc
            1 de par2-par1-18-18-2*j_desc x tra1-31-18-j_desc
            1 de par3-par2-18-18-2*j_desc x tra1-31-18-j_desc
            1 de par4-par3-18-18-2*j_desc x tra1-31-18-j_desc
            1 de m_ancho-par4-31-18-j_desc x tra1-31-18-j_desc
        PANELES
            1 de par1-31-18-j_desc x tra2-tra1-18-18-2*j_desc
            1 de par2-par1-18-18-2*j_desc x tra2-tra1-18-18-2*j_desc
            1 de par3-par2-18-18-2*j_desc x tra2-tra1-18-18-2*j_desc
            1 de par4-par3-18-18-2*j_desc x tra1-18-18-j_desc
            1 de m_ancho-par4-31-18-j_desc x tra2-tra1-18-18-2*j_desc
        OTROS INTERIORES
            1 de par1-31-18-j_desc x tra3-tra2-18-18-2*j_desc
            1 de par2-par1-18-18-2*j_desc x tra3-tra2-18-18-2*j_desc
            1 de par3-par2-18-18-2*j_desc x tra3-tra2-18-18-2*j_desc
            1 de par4-par3-18-18-2*j_desc x tra1-18-18-j_desc
            1 de m_ancho-par4-31-18-j_desc x tra3-tra2-18-18-2*j_desc
            1 de par1-31-18-j_desc x m_alto-tra3-31-18-j_desc
            1 de par2-par1-18-18-2*j_desc x m_alto-tra3-31-18-j_desc
            1 de par3-par2-18-18-2*j_desc x m_alto-tra3-31-18-j_desc
            1 de par4-par3-18-18-2*j_desc x tra1-31-18-j_desc
            1 de m_ancho-par4-31-18-j_desc x m_alto-tra3-31-18-j_desc
      FIN DESARME

 /* 3 Traviesa x 5 Parantes  CASO 17,5 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND. par5!=0
         CORTES A RECTO:
         PERFIL C6264
         DESARMAR SOLO SI tipo_tra=1
            3 x m_ancho-57
            5 x tra1-28-12.5
            5 x tra2-tra1-12.5-12.5
            5 x tra3-tra2-12.5-12.5
            5 x m_alto-tra3-12.5-28
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            5 x m_alto-57
            3 x par1-28-12.5
            3 x par2-par1-12.5-12.5
            3 x par3-par2-12.5-12.5
            3 x m_ancho-par3-12.5-28
         FIN DESARME
      SEGUN contravid PERFIL C6232,C6233,C6225,C6238
         CORTES A 45:
         /* Horizontales */
         8 x par1-28-12.5
         8 x par2-par1-12.5-12.5
         8 x par3-par2-12.5-12.5
         8 x par4-par3-12.5-12.5
         8 x par5-par4-12.5-12.5
         8 x par5-28-12.5
         /* Verticales */
         12 x tra1-28-12.5-e_cont
         12 x tra2-tra1-12.5-12.5-e_cont
         12 x tra3-tra2-12.5-12.5-e_cont
         12 x m_alto-tra3-28-12.5-e_cont

            
        VIDRIOS
            1 de par1-32-17-j_desc x tra1-32-17-j_desc
            1 de par2-par1-18-18-2*j_desc x tra1-32-17-j_desc
            1 de par3-par2-18-18-2*j_desc x tra1-32-17-j_desc
            1 de par4-par3-18-18-2*j_desc x tra1-32-17-j_desc
            1 de par5-par4-18-18-2*j_desc x tra1-32-17-j_desc
            1 de m_ancho-par5-32-17-j_desc x tra1-32-17-j_desc
        PANELES
            1 de par1-32-17-j_desc x tra2-tra1-18-18-2*j_desc
            1 de par2-par1-18-18-2*j_desc x tra2-tra1-18-18-2*j_desc
            1 de par3-par2-18-18-2*j_desc x tra2-tra1-18-18-2*j_desc
            1 de par4-par3-18-18-2*j_desc x tra2-tra1-18-18-j_desc
            1 de par5-par4-18-18-2*j_desc x tra2-tra1-18-18-j_desc
            1 de m_ancho-par5-32-17-j_desc x tra2-tra1-18-18-2*j_desc
        OTROS INTERIORES
            1 de par1-32-17-j_desc x tra3-tra2-18-18-2*j_desc
            1 de par2-par1-18-18-2*j_desc x tra3-tra2-18-18-2*j_desc
            1 de par3-par2-18-18-2*j_desc x tra3-tra2-18-18-2*j_desc
            1 de par4-par3-18-18-2*j_desc x tra3-tra2-18-18-j_desc
            1 de par5-par4-18-18-2*j_desc x tra3-tra2-18-18-j_desc
            1 de m_ancho-par5-32-17-j_desc x tra3-tra2-18-18-2*j_desc
            1 de par1-32-17-j_desc x m_alto-tra3-31-18-j_desc
            1 de par2-par1-18-18-2*j_desc x m_alto-tra3-31-18-j_desc
            1 de par3-par2-18-18-2*j_desc x m_alto-tra3-31-18-j_desc
            1 de par4-par3-18-18-2*j_desc x m_alto-tra3-31-18-j_desc
            1 de par5-par4-18-18-2*j_desc x m_alto-tra3-31-18-j_desc
            1 de m_ancho-par5-32-17-j_desc x m_alto-tra3-31-18-j_desc

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


      PARTE A
         1 x 4

      PARTE T1
         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
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
         2 x INT(m_ancho/200)+cant_p
         2*cant_t x INT(m_ancho/200)+cant_p
         2 x INT(m_alto/200)+cant_t
         2*cant_p x INT(m_alto/200)+cant_t
      FIN DESARME

      PARTE E71
          1 x 2*cant_t+2*(cant_t+1)*cant_p

PRODUCTO MAPF








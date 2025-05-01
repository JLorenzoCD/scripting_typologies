/*ESTE ES EL PAÑO FIJO CON TRAVESAÑOS Y PARANTES VARIABLES CON PERFILES 7,8,687,94*/
/*E_PAR ES EL VALOR QUE TOMA EL ESPESOR DEL PARANTE O TRAVIESA SEGUN EL*/
/*PERFIL QUE SE UTILICE*/
/*E_MARCO ES EL ESPESOR QUE TOMA EL MARCO SEGUN EL PERFIL DE TRAVIESA */
/*O PARANTE QUE SE UTILICE*/
/*E_CONT ES EL ESPESOR DE LOS CONTRAVIDRIOS QUE SE LE DESCUENTA A LOS*/
/*CONTRAVIDRIOS VERTICALES POR IR CORTADOS A RECTO EN FORMA ANCHO X ALTO*/
/*J_DESC ES UNA VARIABLE PUESTA EN LOS CONTRAVIDRIOS VERTICALES PREVIENDO*/
/*UNA POSIBLE MODIFICACION DE LOS TRAVESAÑOS O LOS CONTRAVIDRIOS,AHORA NO SE USA.*/
/* *********************************************************** */

/* Marco */
CORTES A 45:
      PERFIL 7
      2 x m_ancho
      2 x m_alto
   

CALCULOS
    e_cont:=25
    e_par:=if(tipo_patr=1,11,12.5)
    e_marco:=if(tipo_ patr=1,22.5,19.5)
    j_desc:=0

FIN CALCULOS

CORTES A RECTO:

/* $ 0X0 sin parantes ni traviesas */
DESARMAR SOLO SI par1=0 .AND. par2=0 .AND. par3=0 .AND. par4=0 .AND. par5=0 .AND. tra1=0 .AND. tra2=0 .AND. tra3=0

    SEGUN contravid PERFIL 8,78,79,80,177,179,206
      /* Horizontales */
         2 x m_ancho-44
      /* Verticales */
         2 x m_alto-69
   VIDRIOS
         
         1 de m_ancho-52 x m_alto-52

FIN DESARME

   /* 0 traviesa en posicion variable y 1-5 parantes */
   DESARMAR SOLO SI tra1=0 .AND. tra2=0  .AND. tra3=0

      /* $0X1 0 Traviesa x 1 Parante CASO 2 */
      DESARMAR SOLO SI par1!=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND. par5=0 
         SEGUN tipo_patr PERFIL 687,94
         CORTES A RECTO:
         1 x m_alto-2*e_marco

      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         CORTES A RECTO:
         /* Horizontales */
         2 x par1-22-e_par
         2 x m_ancho-par1-22-e_par
         /* Verticales */
         4 x m_alto-69
      VIDRIOS

            /* izquierda */
            1 de par1-26-e_par-2.5 x m_alto-52
            /* derecha */
            1 de m_ancho-par1-26-e_par-2.5 x m_alto-52

    FIN DESARME

  /* $0X2 0 Traviesa x 2 Parante CASO 3 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         2 x m_alto-e_marco

      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         CORTES A RECTO:
         /* Horizontales */
         2 x par1-22-e_par
         2 x par2-par1-e_par-e_par
         2 x m_ancho-par2-22-e_par
         /* Verticales */
         6 x m_alto-69

      VIDRIOS
         
            /* izquierda */
            1 de par1-26-e_par-2.5 x m_alto-52
            /* medio */
            1 de par2-par1-2*e_par-5 x m_alto-52
            /* derecha */
            1 de m_ancho-par2-26-e_par-2.5 x m_alto-52

      FIN DESARME

 /* $0X3 0 Traviesa x 3 Parante CASO 4 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
          3 x m_alto-2*e_marco

      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         CORTES A RECTO:
         /* Horizontales */
         2 x par1-22-e_par
         2 x par2-par1-e_par-e_par
         2 x par3-par2-e_par-e_par
         2 x m_ancho-par3-22-e_par
         /* Verticales */
         8 x m_alto-69

      VIDRIOS
         
            /* izquierda */
            1 de par1-26-e_par-2.5 x m_alto-52
            /* medio */
            1 de par2-par1-2*e_par-5 x m_alto-52
            /* medio */
            1 de par3-par2-2*e_par-5 x m_alto-52
            /* derecha */
            1 de m_ancho-par3-26-e_par-2.5 x m_alto-52

     
   FIN DESARME


   /* $0X4 0 Traviesa x 4 Parante CASO 5 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND. par5=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         4 x m_alto-2*e_marco

      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         CORTES A RECTO:
         /* Horizontales */
         2 x par1-22-e_par
         2 x par2-par1-e_par-e_par
         2 x par3-par2-e_par-e_par
         2 x par4-par3-e_par-e_par
         2 x m_ancho-par4-22-e_par
 
         /* Verticales */
         10 x m_alto-69

      VIDRIOS
         
            /* izquierda */
            1 de par1-26-e_par-2.5 x m_alto-52
            /* medio */
            1 de par2-par1-2*e_par-5 x m_alto-52
            /* medio */
            1 de par3-par2-2*e_par-5 x m_alto-52
            /* medio */
            1 de par4-par3-2*e_par-5 x m_alto-52
            /* derecha */
            1 de m_ancho-par4-26-e_par-2.5 x m_alto-52

   FIN DESARME


   /* $0X5 0 Traviesa x 5 Parante CASO 6 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND. par5!=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         5 x m_alto-2*e_marco

      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         CORTES A RECTO:
         /* Horizontales */
         2 x par1-22-e_par
         2 x par2-par1-e_par-e_par
         2 x par3-par2-e_par-e_par
         2 x par4-par3-e_par-e_par
         2 x par5-par4-e_par-e_par
         2 x m_ancho-par5-22-e_par
 
         /* Verticales */
         12 x m_alto-69

      VIDRIOS
         
            /* izquierda */
            1 de par1-26-e_par-2.5 x m_alto-52
            /* medio */
            1 de par2-par1-2*e_par-5 x m_alto-52
            /* medio */
            1 de par3-par2-2*e_par-5 x m_alto-52
            /* medio */
            1 de par4-par3-2*e_par-5 x m_alto-52
            /* medio */
            1 de par5-par4-2*e_par-5 x m_alto-52
            /* derecha */
            1 de m_ancho-par5-26-e_par-2.5 x m_alto-52

   FIN DESARME

   FIN DESARME

  

   /* 1 traviesa en posicion variable y 1-5 parantes */
   DESARMAR SOLO SI tra1!=0 .AND. tra2=0  .AND. tra3=0
         /* $1X0 1 Traviesa x 0 Parante CASO 7 */
      DESARMAR SOLO SI par1=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND.par5=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         1 x m_ancho-2*e_marco

      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         CORTES A RECTO:
         /* Horizontales */
         4 x m_ancho-44
         /* Verticales */
         2 x tra1-22-e_par-e_cont
         2 x m_alto-tra1-22-e_par-e_cont

      VIDRIOS
            /* abajo  */
            1 de m_ancho-52 x tra1-26-e_par-2.5
      PANELES
            /* arriba  */
            1 de m_ancho-52 x m_alto-tra1-26-e_par-2.5

      FIN DESARME
                                                                                 
      /* $1X1 1 Traviesa x 1 Parante CASO 8 */
      DESARMAR SOLO SI par1!=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
        DESARMAR SOLO SI tipo_tra=1
            1 x m_ancho-2*e_marco
            1 x tra1-e_par-e_marco-j_desc
            1 x m_alto-tra1-e_par-e_marco-j_desc
         FIN DESARME

         DESARMAR SOLO SI tipo_tra=2
            1 x m_alto-2*e_marco
            1 x par1-e_par-e_marco-j_desc
            1 x m_ancho-par1-e_par-e_marco-j_desc
         FIN DESARME

      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         CORTES A RECTO:
         /* Horizontales */
         4 x par1-22-e_par
         4 x m_ancho-par1-22-e_par
         /* Verticales */
         4 x tra1-22-e_par-e_cont
         4 x m_alto-tra1-22-e_par-e_cont
         
      VIDRIOS
            1 de par1-26-e_par-2.5 x tra1-26-e_par-2.5
            1 de m_ancho-par1-26-e_par-2.5 x tra1-26-e_par-2.5
      PANELES
            1 de par1-26-e_par-2.5 x m_alto-tra1-26-e_par-2.5
            1 de m_ancho-par1-26-e_par-2.5 x m_alto-tra1-26-e_par-2.5

      FIN DESARME

      /* $1X2 1 Traviesa x 2 Parantes   CASO 9 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         DESARMAR SOLO SI tipo_tra=1
            1 x m_ancho-2*e_marco
            2 x tra1-e_par-e_marco
            2 x m_alto-tra1-e_par-e_marco
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            2 x m_alto-2*e_marco
            1 x par1-e_par-20-e_marco
            1 x par2-par1-e_par-e_par-e_cont
            1 x m_ancho-par2-e_par-20-e_marco
         FIN DESARME

         CORTES A RECTO:
         SEGUN contravid PERFIL 8,78,79,80,177,179,206
         /* Horizontales */
         4 x par1-22-e_par
         4 x par2-par1-e_par-e_par
         4 x m_ancho-par2-22-e_par
         /* Verticales */
         6 x tra1-22-e_par-e_cont
         6 x m_alto-tra1-22-e_par-e_cont
            
            /* Base de la Izquierda  */
        VIDRIOS
            1 de par1-26-e_par-2.5 x tra1-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x tra1-26-e_par-2.5
            1 de m_ancho-par2-26-e_par-2.5 x tra1-26-e_par-2.5
        PANELES
            1 de par1-26-e_par-2.5 x m_alto-tra1-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x m_alto-tra1-26-e_par-2.5
            1 de m_ancho-par2-26-e_par-2.5 x m_alto-tra1-26-e_par-2.5
      FIN DESARME

      /* $1X3 1 Traviesa x 3 Parantes   CASO 10 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         DESARMAR SOLO SI tipo_tra=1
            1 x m_ancho-2*e_marco
            3 x tra1-e_par-e_marco
            3 x m_alto-tra1-e_par-e_marco
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            3 x m_alto-39-e_marco
            1 x par1-e_par-e_marco
            1 x par2-par1-e_par-e_par
            1 x par3-par2-e_par-e_par
            1 x m_ancho-par3-e_par-e_marco
         FIN DESARME

         CORTES A RECTO:
         SEGUN contravid PERFIL 8,78,79,80,177,179,206
         /* Horizontales */
         4 x par1-22-e_par
         4 x par2-par1-e_par-e_par
         4 x par3-par2-e_par-e_par
         4 x m_ancho-par3-22-e_par
         /* Verticales */
         8 x tra1-22-e_par-e_cont
         8 x m_alto-tra1-22-e_par-e_cont

         VIDRIOS
            
            /* Base de la Izquierda  */
        VIDRIOS
            1 de par1-26-e_par-2.5 x tra1-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x tra1-26-e_par-2.5
            1 de par3-par2-2*e_par-5 x tra1-26-e_par-2.5
            1 de m_ancho-par3-26-e_par-2.5 x tra1-26-e_par-2.5

        PANELES
            1 de par1-26-e_par-2.5 x m_alto-tra1-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x m_alto-tra1-26-e_par-2.5
            1 de par3-par2-2*e_par-5 x m_alto-tra1-26-e_par-2.5
            1 de m_ancho-par3-26-e_par-2.5 x m_alto-tra1-26-e_par-2.5
     
   FIN DESARME    

     /* $1X4 1 Traviesa x 4 Parantes   CASO 11 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND.par5=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         DESARMAR SOLO SI tipo_tra=1
            1 x m_ancho-2*e_marco
            4 x tra1-e_par-e_marco
            4 x m_alto-tra1-e_par-e_marco
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            3 x m_alto-2*e_marco
            1 x par1-e_par-e_marco
            1 x par2-par1-e_par-e_par
            1 x par3-par2-e_par-e_par
            1 x par4-par3-e_par-e_par
            1 x m_ancho-par4-e_par-e_marco
         FIN DESARME

         CORTES A RECTO:
         SEGUN contravid PERFIL 8,78,79,80,177,179,206
         /* Horizontales */
         4 x par1-22-e_par
         4 x par2-par1-e_par-e_par
         4 x par3-par2-e_par-e_par
         4 x par4-par3-e_par-e_par
         4 x m_ancho-par4-22-e_par
         /* Verticales */
         10 x tra1-22-e_par-e_cont
         10 x m_alto-tra1-22-e_par-e_cont

         VIDRIOS
            
            /* Base de la Izquierda  */
        VIDRIOS
            1 de par1-26-e_par-2.5 x tra1-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x tra1-26-e_par-2.5
            1 de par3-par2-2*e_par-5 x tra1-26-e_par-2.5
            1 de par4-par3-2*e_par-5 x tra1-26-e_par-2.5
            1 de m_ancho-par4-26-e_par-2.5 x tra1-26-e_par-2.5

        PANELES
            1 de par1-26-e_par-2.5 x m_alto-tra1-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x m_alto-tra1-26-e_par-2.5
            1 de par3-par2-2*e_par-5 x m_alto-tra1-26-e_par-2.5
            1 de par4-par3-2*e_par-5 x m_alto-tra1-26-e_par-2.5
            1 de m_ancho-par4-26-e_par-2.5 x m_alto-tra1-26-e_par-2.5

      FIN DESARME

     /* $1X5 1 Traviesa x 5 Parantes   CASO 12 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND.par5!=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         DESARMAR SOLO SI tipo_tra=1
            1 x m_ancho-2*e_marco
            5 x tra1-e_par-e_marco
            5 x m_alto-tra1-e_par-e_marco
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            5 x m_alto-2*e_marco
            1 x par1-e_par-e_marco
            1 x par2-par1-e_par-e_par
            1 x par3-par2-e_par-e_par
            1 x par4-par3-e_par-e_par
            1 x par5-par4-e_par-e_par
            1 x m_ancho-par5-e_par-e_marco
         FIN DESARME

         CORTES A RECTO:
         SEGUN contravid PERFIL 8,78,79,80,177,179,206
         /* Horizontales */
         4 x par1-22-e_par
         4 x par2-par1-e_par-e_par
         4 x par3-par2-e_par-e_par
         4 x par4-par3-e_par-e_par
         4 x par5-par4-e_par-e_par
         4 x m_ancho-par5-22-e_par
         /* Verticales */
         12 x tra1-22-e_par-e_cont
         12 x m_alto-tra1-22-e_par-e_cont

         VIDRIOS
            
            /* Base de la Izquierda  */
        VIDRIOS
            1 de par1-26-e_par-2.5 x tra1-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x tra1-26-e_par-2.5
            1 de par3-par2-2*e_par-5 x tra1-26-e_par-2.5
            1 de par4-par3-2*e_par-5 x tra1-26-e_par-2.5
            1 de par5-par4-2*e_par-5 x tra1-26-e_par-2.5
            1 de m_ancho-par5-26-e_par-2.5 x tra1-26-e_par-2.5

        PANELES
            1 de par1-26-e_par-2.5 x m_alto-tra1-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x m_alto-tra1-26-e_par-2.5
            1 de par3-par2-2*e_par-5 x m_alto-tra1-26-e_par-2.5
            1 de par4-par3-2*e_par-5 x m_alto-tra1-26-e_par-2.5
            1 de par5-par4-2*e_par-5 x m_alto-tra1-26-e_par-2.5
            1 de m_ancho-par5-26-e_par-2.5 x m_alto-tra1-26-e_par-2.5
     
   FIN DESARME

   FIN DESARME             /* 1 TRAVIESA */



   /* 2 traviesas en posicion variable y 0-5 parantes */
   DESARMAR SOLO SI tra1!=0 .AND. tra2!=0  .AND. tra3=0

      /* $2X0  2 Traviesa x 0 Parante CASO 13 */
      DESARMAR SOLO SI par1=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         2 x m_ancho-2*e_marco

      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         CORTES A RECTO:
         /* Horizontales */
         6 x m_ancho-44
         /* Verticales */
         2 x tra1-22-e_par-e_cont
         2 x tra2-tra1-e_par-e_par-e_cont
         2 x m_alto-tra2-22-e_par-e_cont

         
      VIDRIOS
            /* abajo  */
            1 de m_ancho-52 x tra1-26-e_par-2.5
      PANELES
            /* medio  */
            1 de m_ancho-52 x tra2-tra1-2*e_par-5
      OTROS INTERIORES
            /* arriba  */
            1 de m_ancho-52 x m_alto-tra2-26-e_par-2.5

      FIN DESARME


      /* $2X1 2 Traviesa x 1 Parante  CASO 14 */
      DESARMAR SOLO SI par1!=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         DESARMAR SOLO SI tipo_tra=1
            2 x m_ancho-2*e_marco
            1 x tra1-e_par-e_marco
            1 x tra2-tra1-e_par-e_par
            1 x m_alto-tra2-e_par-e_marco
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            1 x m_alto-2*e_marco
            2 x par1-e_par-e_marco
            2 x m_ancho-par1-e_par-e_marco
         FIN DESARME

         CORTES A RECTO:
         SEGUN contravid PERFIL 8,78,79,80,177,179,206
         /* Horizontales */
         6 x par1-22-e_par
         6 x m_ancho-par1-22-e_par
         /* Verticales */
         4 x tra1-22-e_par-e_cont
         4 x tra2-tra1-e_par-e_par-e_cont
         4 x m_alto-tra2-22-e_par-e_cont

            
         VIDRIOS
            1 de par1-26-e_par-2.5 x tra1-26-e_par-2.5
            1 de m_ancho-par1-26-e_par-2.5 x tra1-26-e_par-2.5
         PANELES
            1 de par1-26-e_par-2.5 x tra2-tra1-2*e_par-5
            1 de m_ancho-par1-26-e_par-2.5 x tra2-tra1-2*e_par-5
         OTROS INTERIORES
            1 de par1-26-e_par-2.5 x m_alto-tra2-26-e_par-2.5
            1 de m_ancho-par1-26-e_par-2.5 x m_alto-tra2-26-e_par-2.5
      FIN DESARME

      /* $2X2 2 Traviesa x 2 Parantes  CASO 15 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         DESARMAR SOLO SI tipo_tra=1
            2 x m_ancho-2*e_marco
            2 x tra1 -e_marco-e_par
            2 x tra2-tra1-e_par-e_par
            2 x m_alto-tra2-e_par -e_marco
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            2 x m_alto-2*e_marco
            2 x par1 -e_marco-e_par
            2 x par2-par1-e_par-e_par
            2 x m_ancho-par2-e_par -e_marco
         FIN DESARME


      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         CORTES A RECTO:

         /* Horizontales */
         6 x par1-22-e_par
         6 x par2-par1-e_par-e_par
         6 x m_ancho-par2-22-e_par
         /* Verticales */
         6 x tra1-22-e_par-e_cont
         6 x tra2-tra1-e_par-e_par-e_cont
         6 x m_alto-tra2-22-e_par-e_cont

            
         VIDRIOS
            1 de par1-26-e_par-2.5 x tra1-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x tra1-26-e_par-2.5
            1 de m_ancho-par2-26-e_par-2.5 x tra1-26-e_par-2.5
         PANELES
            1 de par1-26-e_par-2.5 x tra2-tra1-2*e_par-5
            1 de par2-par1-2*e_par-5 x tra2-tra1-2*e_par-5
            1 de m_ancho-par2-26-e_par-2.5 x tra2-tra1-2*e_par-5
         OTROS INTERIORES
            1 de par1-26-e_par-2.5 x m_alto-tra2-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x m_alto-tra2-26-e_par-2.5
            1 de m_ancho-par2-26-e_par-2.5 x m_alto-tra2-26-e_par-2.5
      FIN DESARME

      /* $2X3 2 Traviesa x 3 Parantes  CASO 16 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         DESARMAR SOLO SI tipo_tra=1
            2 x m_ancho-2*e_marco
            3 x tra1 -e_marco-e_par
            3 x tra2-tra1-e_par-e_par
            3 x m_alto-tra2-e_par -e_marco
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            3 x m_alto-2*e_marco
            2 x par1 -e_marco-e_par
            2 x par2-par1-e_par-e_par
            2 x par3-par2-e_par-e_par
            2 x m_ancho-par3-e_par -e_marco
         FIN DESARME

      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         CORTES A RECTO:
         /* Horizontales */
         6 x par1-22-e_par
         6 x par2-par1-e_par-e_par
         6 x par3-par2-e_par-e_par
         6 x m_ancho-par3-22-e_par
         /* Verticales */
         8 x tra1-22-e_par-e_cont
         8 x tra2-tra1-e_par-e_par-e_cont
         8 x m_alto-tra2-22-e_par-e_cont

            
         VIDRIOS
            1 de par1-26-e_par-2.5 x tra1-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x tra1-26-e_par-2.5
            1 de par3-par2-2*e_par-5 x tra1-26-e_par-2.5
            1 de m_ancho-par3-26-e_par-2.5 x tra1-26-e_par-2.5
         PANELES
            1 de par1-26-e_par-2.5 x tra2-tra1-2*e_par-5
            1 de par2-par1-2*e_par-5 x tra2-tra1-2*e_par-5
            1 de par3-par2-2*e_par-5 x tra2-tra1-2*e_par-5
            1 de m_ancho-par3-26-e_par-2.5 x tra2-tra1-2*e_par-5
         OTROS INTERIORES
            1 de par1-26-e_par-2.5 x m_alto-tra2-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x m_alto-tra2-26-e_par-2.5
            1 de par3-par2-2*e_par-5 x m_alto-tra2-26-e_par-2.5
            1 de m_ancho-par3-26-e_par-2.5 x m_alto-tra2-26-e_par-2.5
      FIN DESARME


   /* $2X4 2 Traviesa x 4 Parantes  CASO 17 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND. par5=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         DESARMAR SOLO SI tipo_tra=1
            2 x m_ancho-2*e_marco
            4 x tra1 -e_marco-e_par
            4 x tra2-tra1-e_par-e_par
            4 x m_alto-tra2-e_par -e_marco
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            4 x m_alto-2*e_marco
            2 x par1 -e_marco-e_par
            2 x par2-par1-e_par-e_par
            2 x par3-par2-e_par-e_par
            2 x m_ancho-par3-e_par -e_marco
         FIN DESARME

      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         CORTES A RECTO:
         /* Horizontales */
         6 x par1-22-e_par
         6 x par2-par1-e_par-e_par
         6 x par3-par2-e_par-e_par
         6 x par4-par3-e_par-e_par
         6 x m_ancho-par4-22-e_par
         /* Verticales */
         10 x tra1-22-e_par-e_cont
         10 x tra2-tra1-e_par-e_par-e_cont
         10 x m_alto-tra2-22-e_par-e_cont

            
         VIDRIOS
            1 de par1-26-e_par-2.5 x tra1-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x tra1-26-e_par-2.5
            1 de par3-par2-2*e_par-5 x tra1-26-e_par-2.5
            1 de par4-par3-2*e_par-5 x tra1-26-e_par-2.5
            1 de m_ancho-par4-26-e_par-2.5 x tra1-26-e_par-2.5
         PANELES
            1 de par1-26-e_par-2.5 x tra2-tra1-2*e_par-5
            1 de par2-par1-2*e_par-5 x tra2-tra1-2*e_par-5
            1 de par3-par2-2*e_par-5 x tra2-tra1-2*e_par-5
            1 de par4-par3-2*e_par-5 x tra2-tra1-2*e_par-5
            1 de m_ancho-par4-26-e_par-2.5 x tra2-tra1-2*e_par-5
         OTROS INTERIORES
            1 de par1-26-e_par-2.5 x m_alto-tra2-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x m_alto-tra2-26-e_par-2.5
            1 de par3-par2-2*e_par-5 x m_alto-tra2-26-e_par-2.5
            1 de par4-par3-2*e_par-5 x m_alto-tra2-26-e_par-2.5
            1 de m_ancho-par4-26-e_par-2.5 x m_alto-tra2-26-e_par-2.5

      FIN DESARME

   /* $2X5 Traviesa x 5 Parantes  CASO 18 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND. par5!=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         DESARMAR SOLO SI tipo_tra=1
            2 x m_ancho-2*e_marco
            5 x tra1 -e_marco-e_par
            5 x tra2-tra1-e_par-e_par
            5 x m_alto-tra2-e_par -e_marco
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            5 x m_alto-2*e_marco
            2 x par1 -e_marco-e_par
            2 x par2-par1-e_par-e_par
            2 x par3-par2-e_par-e_par
            2 x m_ancho-par3-e_par -e_marco
         FIN DESARME
      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         CORTES A RECTO:
         /* Horizontales */
         6 x par1-22-e_par
         6 x par2-par1-e_par-e_par
         6 x par3-par2-e_par-e_par
         6 x par4-par3-e_par-e_par
         6 x par5-par4-e_par-e_par
         6 x m_ancho-par5-22-e_par
         /* Verticales */
         12 x tra1-22-e_par-e_cont
         12 x tra2-tra1-e_par-e_par-e_cont
         12 x m_alto-tra2-22-e_par-e_cont

            
         VIDRIOS
            1 de par1-26-18-j_desc x tra1-26-18-j_desc
            1 de par2-par1-2*e_par-5 x tra1-26-18-j_desc
            1 de par3-par2-2*e_par-5 x tra1-26-18-j_desc
            1 de par4-par3-2*e_par-5 x tra1-26-18-j_desc
            1 de par5-par4-2*e_par-5 x tra1-26-18-j_desc
            1 de m_ancho-par5-26-18-j_desc x tra1-26-18-j_desc
         PANELES
            1 de par1-26-18-j_desc x tra2-tra1-2*e_par-5
            1 de par2-par1-2*e_par-5 x tra2-tra1-2*e_par-5
            1 de par3-par2-2*e_par-5 x tra2-tra1-2*e_par-5
            1 de par4-par3-2*e_par-5 x tra2-tra1-2*e_par-5
            1 de par5-par4-2*e_par-5 x tra2-tra1-2*e_par-5
            1 de m_ancho-par5-26-18-j_desc x tra2-tra1-2*e_par-5
         OTROS INTERIORES
            1 de par1-26-18-j_desc x m_alto-tra2-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x m_alto-tra2-26-e_par-2.5
            1 de par3-par2-2*e_par-5 x m_alto-tra2-26-e_par-2.5
            1 de par4-par3-2*e_par-5 x m_alto-tra2-26-e_par-2.5
            1 de par5-par4-2*e_par-5 x m_alto-tra2-26-e_par-2.5
            1 de m_ancho-par5-26-18-j_desc x m_alto-tra2-26-e_par-2.5

      FIN DESARME


      FIN DESARME  /* 2 TRAVIESAS */




   /* 3 traviesas en posicion variable y 1-5 parantes */
   DESARMAR SOLO SI tra1!=0 .AND. tra2!=0  .AND. tra3!=0

      /* $3X0 3 Traviesa x 0 Parante CASO 19 */
      DESARMAR SOLO SI par1=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         3 x m_ancho-2*e_marco

      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         CORTES A RECTO:
         /* Horizontales */
         8 x m_ancho-39
         /* Verticales */
         2 x tra1-22-e_par-e_cont
         2 x tra2-tra1-e_par-e_par-e_cont
         2 x tra3-tra2-e_par-e_par-e_cont
         2 x m_alto-tra2-22-e_par-e_cont

         
         VIDRIOS
            /* abajo  */
            1 de m_ancho-52 x tra1-26-e_par-2.5
         PANELES
            /* medio  */
            1 de m_ancho-52 x tra2-tra1-2*e_par-5
         OTROS INTERIORES
            /* medio  */
            1 de m_ancho-52 x tra3-tra2-2*e_par-5
            /* arriba  */
            1 de m_ancho-52 x m_alto-tra3-26-e_par-2.5

      FIN DESARME


      /* $3X1 Traviesas x 1 Parante   CASO 20*/
      DESARMAR SOLO SI par1!=0 .AND. par2=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         DESARMAR SOLO SI tipo_tra=1
            3 x m_ancho-2*e_marco
            1 x tra1 -e_marco-e_par
            1 x tra2-tra1-e_par-e_par
            1 x tra3-tra2-e_par-e_par
            1 x m_alto-tra3 -e_marco-e_par
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            1 x m_alto-2*e_marco
            3 x par1 -e_marco-e_par
            3 x m_ancho-par1 -e_marco-e_par
         FIN DESARME


      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         CORTES A RECTO:
         /* Horizontales */
         8 x par1-22-e_par
         8 x m_ancho-par1-22-e_par
         /* Verticales */
         4 x tra1-22-e_par-e_cont
         4 x tra2-tra1-e_par-e_par-e_cont
         4 x tra3-tra2-e_par-e_par-e_cont
         4 x m_alto-tra3-22-e_par-e_cont

            
         VIDRIOS
            1 de par1-26-e_par-2.5 x tra1-26-e_par-2.5
            1 de m_ancho-par1-26-e_par-2.5 x tra1-26-e_par-2.5
         PANELES
            1 de par1-26-e_par-2.5 x tra2-tra1-2*e_par-5
            1 de m_ancho-par1-26-e_par-2.5 x tra2-tra1-2*e_par-5
         OTROS INTERIORES
            1 de par1-26-e_par-2.5 x tra3-tra2-2*e_par-5
            1 de m_ancho-par1-26-e_par-2.5 x tra3-tra2-2*e_par-5
            1 de par1-26-e_par-2.5 x m_alto-tra3-26-e_par-2.5
            1 de m_ancho-par1-26-e_par-2.5 x m_alto-tra3-26-e_par-2.5
      FIN DESARME


      /* $3X2 3 Traviesas x 2 Parantes  CASO 21 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3=0 .AND. par4=0 .AND. par5=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         DESARMAR SOLO SI tipo_tra=1
            3 x m_ancho-2*e_marco
            2 x tra1 -e_marco-e_par
            2 x tra2-tra1-e_par-e_par
            2 x tra3-tra2-e_par-e_par
            2 x m_alto-tra3-e_par -e_marco
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            2 x m_alto-2*e_marco
            3 x par1 -e_marco-e_par
            3 x par2-par1-e_par-e_par
            3 x m_ancho-par2-e_par -e_marco
         FIN DESARME

      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         CORTES A RECTO:

         /* Horizontales */
         8 x par1-22-e_par
         8 x par2-par1-e_par-e_par
         8 x m_ancho-par2-22-e_par
         /* Verticales */
         6 x tra1-22-e_par-e_cont
         6 x tra2-tra1-e_par-e_par-e_cont
         6 x tra3-tra2-e_par-e_par-e_cont
         6 x m_alto-tra3-22-e_par-e_cont

            
         VIDRIOS
            1 de par1-26-e_par-2.5 x tra1-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x tra1-26-e_par-2.5
            1 de m_ancho-par2-26-e_par-2.5 x tra1-26-e_par-2.5
         PANELES
            1 de par1-26-e_par-2.5 x tra2-tra1-2*e_par-5
            1 de par2-par1-2*e_par-5 x tra2-tra1-2*e_par-5
            1 de m_ancho-par2-26-e_par-2.5 x tra2-tra1-2*e_par-5
         OTROS INTERIORES
            1 de par1-26-e_par-2.5 x tra3-tra2-2*e_par-5
            1 de par2-par1-2*e_par-5 x tra3-tra2-2*e_par-5
            1 de m_ancho-par2-26-e_par-2.5 x tra3-tra2-2*e_par-5
            1 de par1-26-e_par-2.5 x m_alto-tra3-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x m_alto-tra3-26-e_par-2.5
            1 de m_ancho-par2-26-e_par-2.5 x m_alto-tra3-26-e_par-2.5
      FIN DESARME

      /* $3x3   3 Traviesa x 3 Parantes  CASO 22 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         DESARMAR SOLO SI tipo_tra=1
            3 x m_ancho -e_marco
            3 x tra1 -e_marco-e_par
            3 x tra2-tra1-e_par-e_par
            3 x tra3-tra2-e_par-e_par
            3 x m_alto-tra3-e_par -e_marco
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            3 x m_alto-2*e_marco
            3 x par1 -e_marco-e_par
            3 x par2-par1-e_par-e_par
            3 x par3-par2-e_par-e_par
            3 x m_ancho-par3-e_par -e_marco
         FIN DESARME
      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         CORTES A RECTO:
         /* Horizontales */
         8 x par1-22-e_par
         8 x par2-par1-e_par-e_par
         8 x par3-par2-e_par-e_par
         8 x m_ancho-par3-22-e_par
         /* Verticales */
         8 x tra1-22-e_par-e_cont
         8 x tra2-tra1-e_par-e_par-e_cont
         8 x tra3-tra2-e_par-e_par-e_cont
         8 x m_alto-tra3-22-e_par-e_cont

            
        VIDRIOS
            1 de par1-26-e_par-2.5 x tra1-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x tra1-26-e_par-2.5
            1 de par3-par2-2*e_par-5 x tra1-26-e_par-2.5
            1 de m_ancho-par3-26-e_par-2.5 x tra1-26-e_par-2.5
        PANELES
            1 de par1-26-e_par-2.5 x tra2-tra1-2*e_par-5
            1 de par2-par1-2*e_par-5 x tra2-tra1-2*e_par-5
            1 de par3-par2-2*e_par-5 x tra2-tra1-2*e_par-5
            1 de m_ancho-par3-26-e_par-2.5 x tra2-tra1-2*e_par-5
        OTROS INTERIORES
            1 de par1-26-e_par-2.5 x tra3-tra2-2*e_par-5
            1 de par2-par1-2*e_par-5 x tra3-tra2-2*e_par-5
            1 de par3-par2-2*e_par-5 x tra3-tra2-2*e_par-5
            1 de m_ancho-par3-26-e_par-2.5 x tra3-tra2-2*e_par-5
            1 de par1-26-e_par-2.5 x m_alto-tra3-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x m_alto-tra3-26-e_par-2.5
            1 de par3-par2-2*e_par-5 x m_alto-tra3-26-e_par-2.5
            1 de m_ancho-par3-26-e_par-2.5 x m_alto-tra3-26-e_par-2.5
      FIN DESARME



      /* $3X4 3 Traviesa x 4 Parantes  CASO 23 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND. par5=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         DESARMAR SOLO SI tipo_tra=1
            3 x m_ancho-2*e_marco
            4 x tra1 -e_marco-e_par
            4 x tra2-tra1-e_par-e_par
            4 x tra3-tra2-e_par-e_par
            4 x m_alto-tra3-e_par -e_marco
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            4 x m_alto-2*e_marco
            3 x par1 -e_marco-e_par
            3 x par2-par1-e_par-e_par
            3 x par3-par2-e_par-e_par
            3 x m_ancho-par3-e_par -e_marco
         FIN DESARME
      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         CORTES A RECTO:
         /* Horizontales */
         8 x par1-22-e_par
         8 x par2-par1-e_par-e_par
         8 x par3-par2-e_par-e_par
         8 x par4-par3-e_par-e_par
         8 x m_ancho-par4-22-e_par
         /* Verticales */
         10 x tra1-22-e_par-e_cont
         10 x tra2-tra1-e_par-e_par-e_cont
         10 x tra3-tra2-e_par-e_par-e_cont
         10 x m_alto-tra3-22-e_par-e_cont

            
        VIDRIOS
            1 de par1-26-e_par-2.5 x tra1-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x tra1-26-e_par-2.5
            1 de par3-par2-2*e_par-5 x tra1-26-e_par-2.5
            1 de par4-par3-2*e_par-5 x tra1-26-e_par-2.5
            1 de m_ancho-par4-26-e_par-2.5 x tra1-26-e_par-2.5
        PANELES
            1 de par1-26-e_par-2.5 x tra2-tra1-14-14-2*j_desc
            1 de par2-par1-14-14-2*j_desc x tra2-tra1-14-14-2*j_desc
            1 de par3-par2-14-14-2*j_desc x tra2-tra1-14-14-2*j_desc
            1 de par4-par3-14-14-2*j_desc x tra2-tra1-14-14-2*j_desc
            1 de m_ancho-par4-26-e_par-2.5 x tra2-tra1-14-14-2*j_desc
        OTROS INTERIORES
            1 de par1-26-e_par-2.5 x tra3-tra2-14-14-2*j_desc
            1 de par2-par1-14-14-2*j_desc x tra3-tra2-14-14-2*j_desc
            1 de par3-par2-14-14-2*j_desc x tra3-tra2-14-14-2*j_desc
            1 de par4-par3-14-14-2*j_desc x tra3-tra2-14-14-2*j_desc
            1 de m_ancho-par4-26-e_par-2.5 x tra3-tra2-14-14-2*j_desc
            1 de par1-26-e_par-2.5 x m_alto-tra3-26-e_par-2.5
            1 de par2-par1-2*e_par-5 x m_alto-tra3-26-e_par-2.5
            1 de par3-par2-2*e_par-5 x m_alto-tra3-26-e_par-2.5
            1 de par4-par3-2*e_par-5 x m_alto-tra3-26-e_par-2.5
            1 de m_ancho-par4-26-e_par-2.5 x m_alto-tra3-26-e_par-2.5
      FIN DESARME

 /* 3x5 3 Traviesa x 5 Parantes  CASO 24 */
      DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND. par5!=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         DESARMAR SOLO SI tipo_tra=1
            3 x m_ancho-2*e_marco
            5 x tra1 -e_par-e_marco
            5 x tra2-tra1-e_par-e_par
            5 x tra3-tra2-e_par-e_par
            5 x m_alto-tra3-e_par -e_marco
         FIN DESARME
         DESARMAR SOLO SI tipo_tra=2
            5 x m_alto-2*e_marco
            3 x par1 -e_marco-e_par
            3 x par2-par1-e_par-e_par
            3 x par3-par2-e_par-e_par
            3 x m_ancho-par3-e_par -e_marco
         FIN DESARME
      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         CORTES A RECTO:
         /* Horizontales */
         8 x par1-22-e_par
         8 x par2-par1-e_par-e_par
         8 x par3-par2-e_par-e_par
         8 x par4-par3-e_par-e_par
         8 x par5-par4-e_par-e_par
         8 x m_ancho-par5-22-e_par
         /* Verticales */
         12 x tra1-22-e_par-e_cont
         12 x tra2-tra1-e_par-e_par-e_cont
         12 x tra3-tra2-e_par-e_par-e_cont
         12 x m_alto-tra3-22-e_par-e_cont

            
        VIDRIOS
            1 de par1-26-e_par-2.5 x tra1-26-e_par-2.5
            1 de par2-par1-14-14-2*j_desc x tra1-26-e_par-2.5
            1 de par3-par2-14-14-2*j_desc x tra1-26-e_par-2.5
            1 de par4-par3-14-14-2*j_desc x tra1-26-e_par-2.5
            1 de par5-par4-14-14-2*j_desc x tra1-26-e_par-2.5
            1 de m_ancho-par5-26-e_par-2.5 x tra1-26-e_par-2.5
        PANELES
            1 de par1-26-e_par-2.5 x tra2-tra1-14-14-2*j_desc
            1 de par2-par1-14-14-2*j_desc x tra2-tra1-14-14-2*j_desc
            1 de par3-par2-14-14-2*j_desc x tra2-tra1-14-14-2*j_desc
            1 de par4-par3-14-14-2*j_desc x tra2-tra1-14-14-2*j_desc
            1 de par5-par4-14-14-2*j_desc x tra2-tra1-14-14-2*j_desc
            1 de m_ancho-par5-26-e_par-2.5 x tra2-tra1-14-14-2*j_desc
        OTROS INTERIORES
            1 de par1-26-e_par-2.5 x tra3-tra2-14-14-2*j_desc
            1 de par2-par1-14-14-2*j_desc x tra3-tra2-14-14-2*j_desc
            1 de par3-par2-14-14-2*j_desc x tra3-tra2-14-14-2*j_desc
            1 de par4-par3-14-14-2*j_desc x tra3-tra2-14-14-2*j_desc
            1 de par5-par4-14-14-2*j_desc x tra3-tra2-14-14-2*j_desc
            1 de m_ancho-par5-26-e_par-2.5 x tra3-tra2-14-14-2*j_desc
            1 de par1-26-e_par-2.5 x m_alto-tra3-26-e_par-2.5
            1 de par2-par1-14-14-2*j_desc x m_alto-tra3-26-e_par-2.5
            1 de par3-par2-14-14-2*j_desc x m_alto-tra3-26-e_par-2.5
            1 de par4-par3-14-14-2*j_desc x m_alto-tra3-26-e_par-2.5
            1 de par5-par4-14-14-2*j_desc x m_alto-tra3-26-e_par-2.5
            1 de m_ancho-par5-26-e_par-2.5 x m_alto-tra3-26-e_par-2.5

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
      PARTE D
         1 x 32
      PARTE I
         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
      PARTE T
         2 x m_ancho/1000
         2*(cant_t) x m_ancho/1000
         2 x m_alto/1000
         2*(cant_p) x m_alto/1000
      PARTE UVW
         2 x m_ancho/1000
         2*(cant_t) x m_ancho/1000
         2 x m_alto/1000
         2*(cant_p) x m_alto/1000
      DESARMAR SOLO SI tipo_patr=2
      PARTE ABA
          1 x 2*cant_t+2*(cant_t+1)*cant_p
      PARTE D
          2 x 2*cant_t+2*(cant_t+1)*cant_p

      FIN DESARME

     PARTE I
          1 x 2*cant_t+2*(cant_t+1)*cant_p



PRODUCTO MOPF




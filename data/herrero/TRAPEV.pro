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

CALCULOS
   a := (m_alto-m_alto_d)*(m_alto-m_alto_d)
   b := m_ancho*m_ancho
   c := sqrt (a+b)
   e_cont:=25
   e_par:=if(tipo_patr=1,11,15)
   e_marco:=if(tipo_ patr=1,22.5,19.5)
   j_desc:=0
   tra1:=0
   tra2:=0
   tra3:=0
FIN CALCULOS

/* Marco */
CORTES A 45:
      PERFIL 7
      1 x c
      1 x m_ancho
      1 x m_alto
      1 x m_alto_d

CALCULOS
    j_desc:=if(tipo_patr=1,22,30)
    dtopt:=if(tipo_patr=1,22,30)
    e_desc:=if(tipo_patr=1,44,39)
FIN CALCULOS
   CALCULOS
      x := m_ancho
      y := m_alto
      b := m_alto-m_alto_d
      a1 := b*par1/x
      h1 := par1*c/m_ancho
      a2 := b*par2/x
      h2 := par2*c/m_ancho
      a3 := b*par3/x
      h3 := par3*c/m_ancho
      a4 := b*par4/x
      h4 := par4*c/m_ancho
      a5 := b*par5/x
      h5 := par5*c/m_ancho
   FIN CALCULOS

DESARMAR SOLO SI par1=0 .AND. par2=0 .AND. par3=0 .AND. par4=0 .AND. par5=0
   CORTES A RECTO:

   SEGUN contravid PERFIL 8,78,79,80,177,179,206
    /* Horizontales */
      1 x sqrt (a+b)-44
      1 x m_ancho-44
    /* Verticales */
      1 x m_alto-69
   DESARMAR SOLO SI m_alto_d>69
      1 x m_alto_d-69
   FIN DESARME

   VIDRIOS
      1 de m_ancho-52 x m_alto-52

FIN DESARME


   DESARMAR SOLO SI par1!=0 .AND. par2=0 .AND. par3=0 .AND. par4=0 .AND. par5=0

      CORTES A RECTO:

        SEGUN tipo_patr PERFIL 687,94
            1 x m_alto-a1

         SEGUN contravid PERFIL 8,78,79,80,177,179,206
            /* horizontales */

            1 x par1-e_marco-e_par
            1 x m_ancho-par1-e_marco-e_par
            1 x h1-e_marco-e_par
            1 x c-h1-e_marco-e_par
            1 x m_alto-44
            2 x m_alto-a1-44
   DESARMAR SOLO SI m_alto_d>69
      1 x m_alto_d-69
   FIN DESARME
         VIDRIOS
            1 de par1-e_marco-e_par x m_alto-52
            1 de m_ancho-par1-e_marco-e_par x a1-52
            
   FIN DESARME

  /* $0X2 0 Traviesa x 2 Parante CASO 3 */
   DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3=0 .AND. par4=0 .AND. par5=0

      CORTES A RECTO:

         SEGUN tipo_patr PERFIL 687,94
            1 x m_alto-a1
            1 x m_alto-a2
         SEGUN contravid PERFIL 8,78,79,80,177,179,206
            /* horizontales */

            1 x par1-e_marco-e_par
            1 x par2-par1-2*e_par
            1 x m_ancho-par2-e_marco-e_par
            1 x h1-e_marco-e_par
            1 x h2-h1-2*e_par
            1 x c-h2-e_marco-e_par
            1 x m_alto-44
            2 x m_alto-a1-44
            2 x m_alto-a2-44
   DESARMAR SOLO SI m_alto_d>69
      1 x m_alto_d-69
   FIN DESARME

         VIDRIOS
         /* izquierda */
            1 de par1-e_marco-e_par x m_alto-52
         /* medio */
            1 de par2-par1-2*e_par x m_alto-a1-52
         /* derecha */
            1 de m_ancho-par2-e_marco-e_par x m_alto-a2-52

   FIN DESARME

 /* $0X3 0 Traviesa x 3 Parante CASO 4 */
   DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4=0 .AND. par5=0
   CORTES A RECTO:

      SEGUN tipo_patr PERFIL 687,94
         1 x m_alto-a1
         1 x m_alto-a2
         1 x m_alto-a3

      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         /* horizontales */

         1 x par1-e_marco-e_par
         1 x par2-par1-2*e_par
         1 x par3-par2-2*e_par
         1 x m_ancho-par3-e_marco-e_par
         1 x h1-e_marco-e_par
         1 x h2-h1-2*e_par
         1 x h3-h2-2*e_par
         1 x c-h3-e_marco-e_par
         1 x m_alto
         2 x m-alto-a1-44
         2 x m_alto-a2-44
         2 x m_alto-a3-44
   DESARMAR SOLO SI m_alto_d>69
      1 x m_alto_d-69
   FIN DESARME

      VIDRIOS
      /* izquierda */
         1 de par1-e_marco-e_par x m_alto-52
      /* medio */
         1 de par2-par1-2*e_par x m_alto-a1-52
         1 de par3-par2-2*e_par x m_alto-a2-52

      /* derecha */
         1 de m_ancho-par3-e_marco-e_par x m_alto-a3-52
  
   FIN DESARME


   /* $0X4 0 Traviesa x 4 Parante CASO 5 */
   DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND. par5=0
   CORTES A RECTO:

      SEGUN tipo_patr PERFIL 687,94
         1 x m_alto-a1
         1 x m_alto-a2
         1 x m_alto-a3
         1 x m_alto-a4
      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         /* horizontales */

         1 x par1-e_marco-e_par
         1 x par2-par1-2*e_par
         1 x par3-par2-2*e_par
         1 x par4-par3-2*e_par
         1 x m_ancho-par4-e_marco-e_par
         1 x h1-e_marco-e_par
         1 x h2-h1-2*e_par
         1 x h3-h2-2*e_par
         1 x h4-h3-2*e_par
         1 x c-h4-e_marco-e_par
         1 x m_alto
         2 x m_alto-a1-44
         2 x m_alto-a2-44
         2 x m_alto-a3-44
         2 x m_alto-a4-44
   DESARMAR SOLO SI m_alto_d>69
      1 x m_alto_d-69
   FIN DESARME

      VIDRIOS
      /* izquierda */
         1 de par1-e_marco-e_par x m_alto-52
      /* medio */
         1 de par2-par1-2*e_par x m_alto-a1-52
         1 de par3-par2-2*e_par x m_alto-a2-52
         1 de par4-par3-2*e_par x m_alto-a3-52
      /* derecha */
         1 de m_ancho-par4-e_marco-e_par x m_alto-a4-52

   FIN DESARME


   /* $0X5 0 Traviesa x 5 Parante CASO 6 */
   DESARMAR SOLO SI par1!=0 .AND. par2!=0  .AND. par3!=0 .AND. par4!=0 .AND. par5!=0

   CORTES A RECTO:

      SEGUN tipo_patr PERFIL 687,94
         1 x m_alto-a1
         1 x m_alto-a2
         1 x m_alto-a3
         1 x m_alto-a4
         1 x m_alto-a5
      SEGUN contravid PERFIL 8,78,79,80,177,179,206
         /* horizontales */

         1 x par1-e_marco-e_par
         1 x par2-par1-2*e_par
         1 x par3-par2-2*e_par
         1 x par4-par3-2*e_par
         1 x par5-par4-2*e_par
         1 x m_ancho-par5-e_marco-e_par
         1 x h1-e_marco-e_par
         1 x h2-h1-2*e_par
         1 x h3-h2-2*e_par
         1 x h4-h3-2*e_par
         1 x h5-h4-2*e_par
         1 x c-h5-e_marco-e_par
         1 x m_alto
         2 x m_alto-a1-44
         2 x m_alto-a2-44
         2 x m_alto-a3-44
         2 x m_alto-a4-44
         2 x m_alto-a5-44
   DESARMAR SOLO SI m_alto_d>69
      1 x m_alto_d-69
   FIN DESARME

      VIDRIOS
      /* izquierda */
         1 de par1-e_marco-e_par x m_alto-52
      /* medio */
         1 de par2-par1-2*e_par x m_alto-a1-52
         1 de par3-par2-2*e_par x m_alto-a2-52
         1 de par4-par3-2*e_par x m_alto-a3-52
         1 de par5-par4-2*e_par x m_alto-a4-52
      /* derecha */
         1 de m_ancho-par5-e_marco-e_par x m_alto-a5-52

   FIN DESARME

CALCULOS
   cant_p:=If(par1!=0 .AND. par2=0 .AND. par3=0 .AND. par4=0 .AND. par5=0, 1, 0)
   cant_p:=If(par1!=0 .AND. par2!=0 .AND. par3=0 .AND. par4=0 .AND. par5=0, 2, cant_p)
   cant_p:=If(par1!=0 .AND. par2!=0 .AND. par3!=0 .AND. par4=0 .AND. par5=0, 3, cant_p)
   cant_p:=If(par1!=0 .AND. par2!=0 .AND. par3!=0 .AND. par4!=0 .AND. par5=0, 4, cant_p)
   cant_p:=If(par1!=0 .AND. par2!=0 .AND. par3!=0 .AND. par4!=0 .AND. par5!=0, 5, cant_p)


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
         1 x (sqrt (a+b)-44)/1000
         2 x m_ancho/1000
         2 x m_alto/1000
         2*(cant_p) x m_alto/1000
      PARTE UVW
         1 x (sqrt (a+b)-44)/1000
         2 x m_ancho/1000
         2 x m_alto/1000
         2*(cant_p) x m_alto/1000

      DESARMAR SOLO SI tipo_patr=2
      PARTE ABA
          2 x cant_p
      PARTE D
          4 x cant_p

      FIN DESARME

     PARTE I
          1 x 4*cant_p



PRODUCTO MOPF

  


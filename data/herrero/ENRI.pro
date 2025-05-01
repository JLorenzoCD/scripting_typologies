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
   flag:=0
   DESARMAR SOLO SI m_alto_d>m_alto
      flag:=1
   FIN DESARME

   DESARMAR SOLO SI flag=1
      aux:=m_alto
      m_alto:=m_alto_d
      m_alto_d:=aux

      DESARMAR SOLO SI par1>0 .AND. par2=0
         par1:=m_ancho-par1
      FIN DESARME
      DESARMAR SOLO SI par1>0 .AND. par2>0 .AND. par3=0
         par1:=m_ancho-par2
         par2:=m_ancho-par1
      FIN DESARME
      DESARMAR SOLO SI par1>0 .AND. par2>0 .AND. par3>0 .AND. par4=0
         par1:=m_ancho-par3
         par2:=m_ancho-par2
         par3:=m_ancho-par1
      FIN DESARME
      DESARMAR SOLO SI par1>0 .AND. par2>0 .AND. par3>0 .AND. par4>0 .AND. par5=0
         par1:=m_ancho-par4
         par2:=m_ancho-par3
         par3:=m_ancho-par2
         par4:=m_ancho-par1
      FIN DESARME
      DESARMAR SOLO SI par1>0 .AND. par2>0 .AND. par3>0 .AND. par4>0 .AND. par5>0
         par1:=m_ancho-par5
         par2:=m_ancho-par4
         par3:=m_ancho-par3
         par4:=m_ancho-par2
         par5:=m_ancho-par1
      FIN DESARME
   FIN DESARME

   a := (m_alto-m_alto_d)*(m_alto-m_alto_d)
   b := m_ancho*m_ancho
   c := sqrt (a+b)
   e_cont:=25
   e_par:=11
   e_marco:=22
   j_desc:=0
   ult_tra:=0
FIN CALCULOS


/* Marco */
CORTES A 45:
   PERFIL 7
      1 x c
      1 x m_ancho
      1 x m_alto
      1 x m_alto_d

   CALCULOS
      j_desc:=22
      dtopt:=22
      e_desc:=22
   FIN CALCULOS

DESARMAR SOLO SI tra1>0
   CALCULOS
      Y1:=tra1
      Y0:=0
      ult_tra:=tra1
   FIN CALCULOS
      PRODUCTO FRANJA
FIN DESARME

DESARMAR SOLO SI tra2>0

   CALCULOS
      Y1:=tra2
      Y0:=tra1
      ult_tra:=tra2
   FIN CALCULOS

      PRODUCTO FRANJA
FIN DESARME

DESARMAR SOLO SI tra3>0
   CALCULOS
      Y1:=tra3
      Y0:=tra2
      ult_tra:=tra3
   FIN CALCULOS

      PRODUCTO FRANJA
FIN DESARME
  
DESARMAR SOLO SI ult_tra>0
   CALCULOS
      Y1:=m_alto
      Y0:=ult_tra
   FIN CALCULOS
      PRODUCTO FRANJA
FIN DESARME
   
DESARMAR SOLO SI tra1=0 .AND. tra2=0 .AND. tra3=0

 CALCULOS
   s1:=((m_alto-m_alto_d)*par1)/m_ancho
   h1:=m_alto-s1
   o1:=(sqrt((par1*par1)+(s1*s1)))
   s2:=((m_alto-m_alto_d)*par2)/m_ancho
   h2:=m_alto-s2
   o2:=(sqrt((par2*par2)+(s2*s2)))
   s3:=((m_alto-m_alto_d)*par3)/m_ancho
   h3:=m_alto-s3
   o3:=(sqrt((par3*par3)+(s3*s3)))
   s4:=((m_alto-m_alto_d)*par4)/m_ancho
   h4:=m_alto-s4
   o4:=(sqrt((par4*par4)+(s4*s4)))
   s5:=((m_alto-m_alto_d)*par5)/m_ancho
   h5:=m_alto-s5
   o5:=(sqrt((par5*par5)+(s5*s5)))
 FIN CALCULOS

   DESARMAR SOLO SI par1=0 .AND. par2=0 .AND. par3=0 .AND. par4=0 .AND. par5=0
   PERFIL 8
      1 x m_ancho-44
      1 x m_alto-44
      1 x c

   VIDRIOS
      1 de m_ancho-52 x m_alto-52

   FIN DESARME
   DESARMAR SOLO SI par1!=0 .AND. par2=0 .AND. par3=0 .AND. par4=0 .AND. par5=0
   PERFIL 687
      1 x h1
   PERFIL 8
      1 x par1-22-11
      1 x m_ancho-par1-22
      1 x m_alto-44
      2 x h1
      1 x m_alto_d
      1 x o1
      1 x c-o1

   VIDRIOS
      1 de par1-52 x m_alto-52
      1 de m_ancho-par1-52 x h1-52

   FIN DESARME
   DESARMAR SOLO SI par1!=0 .AND. par2!=0 .AND. par3=0 .AND. par4=0 .AND. par5=0
   PERFIL 687
      1 x h1
      1 x h2
   PERFIL 8
      1 x par1-22-11
      1 x par2-par1-22
      1 x m_ancho-par2-22
      1 x m_alto-44
      2 x h1
      2 x h2
      1 x m_alto_d
      1 x o1
      1 x o2-o1
      1 x c-o2

   VIDRIOS
      1 de par1-52 x m_alto-52
      1 de par2-par1-52 x h1-52
      1 de m_ancho-par2-52 x h2-52

   FIN DESARME
   DESARMAR SOLO SI par1!=0 .AND. par2!=0 .AND. par3!=0 .AND. par4=0 .AND. par5=0
   PERFIL 687
      1 x h1
      1 x h2
      1 x h3
   PERFIL 8
      1 x par1-22-11
      1 x par2-par1-22
      1 x par3-par2-22
      1 x m_ancho-par3-22
      1 x m_alto-44
      2 x h1
      2 x h2
      2 x h3
      1 x m_alto_d
      1 x o1
      1 x o2-o1
      1 x o3-o2
      1 x c-o3

   VIDRIOS
      1 de par1-52 x m_alto-52
      1 de par2-par1-52 x h1-52
      1 de par3-par2-52 x h2-52
      1 de m_ancho-par3-52 x h3-52

   FIN DESARME

   DESARMAR SOLO SI par1!=0 .AND. par2!=0 .AND. par3!=0 .AND. par4!=0 .AND. par5=0
   PERFIL 687
      1 x h1
      1 x h2
      1 x h3
      1 x h4
   PERFIL 8
      1 x par1-22-11
      1 x par2-par1-22
      1 x par3-par2-22
      1 x par4-par3-22
      1 x m_ancho-par4-22
      1 x m_alto-44
      2 x h1
      2 x h2
      2 x h3
      2 x h4
      1 x m_alto_d
      1 x o1
      1 x o2-o1
      1 x o3-o2
      1 x o4-o3
      1 x c-o4

   VIDRIOS
      1 de par1-52 x m_alto-52
      1 de par2-par1-52 x h1-52
      1 de par3-par2-52 x h2-52
      1 de par4-par3-52 x h3-52
      1 de m_ancho-par4-52 x h4-52

   FIN DESARME
   DESARMAR SOLO SI par1!=0 .AND. par2!=0 .AND. par3!=0 .AND. par4!=0 .AND. par5!=0
   PERFIL 687
      1 x h1
      1 x h2
      1 x h3
      1 x h4
      1 x h5
   PERFIL 8
      1 x par1-22-11
      1 x par2-par1-22
      1 x par3-par2-22
      1 x par4-par3-22
      1 x par5-par4-22
      1 x m_ancho-par5-22
      1 x m_alto-44
      2 x h1
      2 x h2
      2 x h3
      2 x h4
      2 x h5
      1 x m_alto_d
      1 x o1
      1 x o2-o1
      1 x o3-o2
      1 x o4-o3
      1 x o5-o4
      1 x c-o5

   VIDRIOS
      1 de par1-52 x m_alto-52
      1 de par2-par1-52 x h1-52
      1 de par3-par2-52 x h2-52
      1 de par4-par3-52 x h3-52
      1 de par5-par4-52 x h4-52
      1 de m_ancho-par5-52 x h5-52

   FIN DESARME
FIN DESARME


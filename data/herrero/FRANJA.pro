/* producto auxiliar para pa¤os fijos */

CALCULOS
   ult_par:=0
   d_tra:=22

/*   DESARMAR SOLO SI par1>0
/*      ult_par:=par1
/*   FIN DESARME

   DESARMAR SOLO SI tra1>0
      ult_tra:=tra1
   FIN DESARME
   DESARMAR SOLO SI tra2>0
      ult_tra:=tra2
   FIN DESARME
   DESARMAR SOLO SI tra3>0
      ult_tra:=tra3
   FIN DESARME

FIN CALCULOS


DESARMAR SOLO SI Y1<=m_alto_d
	/* Esta en la parte rectangular
   DESARMAR SOLO SI Y1<m_alto

   PERFIL 687
      1 x m_ancho-44
   FIN DESARME
   PERFIL 687
   CALCULOS
		cant_par := IF(par1>0,1,0)
		cant_par := IF(par2>0,cant_par+1,cant_par)
		cant_par := IF(par3>0,cant_par+1,cant_par)
		cant_par := IF(par4>0,cant_par+1,cant_par)
		cant_par := IF(par5>0,cant_par+1,cant_par)
   FIN CALCULOS

      cant_par x Y1-Y0-d_tra

      PERFIL 8
      2*cant_par x Y1-Y0-d_tra-25
    DESARMAR SOLO SI par1>0
      2 x par1-d_tra/2-22
      DESARMAR SOLO SI par2>0
         2 x par2-par1-d_tra
         DESARMAR SOLO SI par3>0
            2 x par3-par2-d_tra
            DESARMAR SOLO SI par4>0
               2 x par4-par3-d_tra
               DESARMAR SOLO SI par5>0
                  2 x par5-par4-d_tra
               FIN DESARME
            FIN DESARME
         FIN DESARME
      FIN DESARME
   FIN DESARME
FIN DESARME


DESARMAR SOLO SI Y1>m_alto_d
   /* Esta  en la parte triangular
   CALCULOS
      X := m_ancho * (m_alto-Y1)/(m_alto-m_alto_d)
   FIN CALCULOS

   DESARMAR SOLO SI Y1<m_alto
   PERFIL 687
      1 x X-22
   FIN DESARME

    /* LOS QUE ESTAN A LA IZQUIERDA DE X, TOCAN CONTRA EL TRAVESAÑO
	/* Y TIENEN LA MISMA MEDIDA (Y1-Y0)
   DESARMAR SOLO SI par1>0 .AND. par1<X
      PERFIL 687
         1 x Y1-Y0-d_tra
      PERFIL 8
         3 x Y1-Y0-d_tra-25
         2 x par1-d_tra/2-22
      VIDRIOS
         1 de par1-30 x Y1-Y0-30
   FIN DESARME
   DESARMAR SOLO SI par2>0 .AND. par2<X
      PERFIL 687
         1 x Y1-Y0-d_tra
      PERFIL 8
         2 x Y1-Y0-d_tra-25
         2 x par2-par1-d_tra/2-22
      VIDRIOS
         1 de par2-par1-30 x Y1-Y0-30
   FIN DESARME
   DESARMAR SOLO SI par3>0 .AND. par3<X
      PERFIL 687
         1 x Y1-Y0-d_tra
      PERFIL 8
         2 x Y1-Y0-d_tra-25
         2 x par3-par2-d_tra/2-22
      VIDRIOS
         1 de par3-par2-30 x Y1-Y0-30

   FIN DESARME
   DESARMAR SOLO SI par4>0 .AND. par4<X
      PERFIL 687
         1 x Y1-Y0-d_tra
      PERFIL 8
         2 x Y1-Y0-d_tra-25
         2 x par4-par3-d_tra/2-22
      VIDRIOS
         1 de par4-par3-30 x Y1-Y0-30
   FIN DESARME
   DESARMAR SOLO SI par5>0 .AND. par5<X
      PERFIL 687
         1 x Y1-Y0-d_tra
      PERFIL 8
         2 x Y1-Y0-d_tra-25
         2 x par5-par4-d_tra/2-22
      VIDRIOS
         1 de par5-par4-30 x Y1-Y0-30
   FIN DESARME

	/* LOS QUE ESTAN A LA DERECHA DE X, TOCAN CONTRA EL MARCO
    /* Y TIENEN LA MISMA MEDIDA VARIABLE (Z)
   DESARMAR SOLO SI par1>0 .AND. par1>=X
      CALCULOS
         Z := (m_alto-m_alto_d)*(m_ancho-par1)/m_ancho - Y0 + m_alto_d
      FIN CALCULOS
      DESARMAR SOLO SI Z>45
         CALCULOS
         ult_par:=par1
         FIN CALCULOS
         PERFIL 687
            1 x Z-22
         PERFIL 8
            2 x Z-25
            1 x Y1-Y0-d_tra-25
            1 x par1-25
         DESARMAR SOLO SI X>25
            1 x X-25
         FIN DESARME
            1 x sqrt((Y1-Y0-Z)*(Y1-Y0-Z)+(par1-X)*(par1-X))
         VIDRIOS
            1 de par1-30 x Y1-Y0-30
      FIN DESARME
   FIN DESARME

   DESARMAR SOLO SI par2>0 .AND. par2>=X
      CALCULOS
         Z := (m_alto-m_alto_d)*(m_ancho-par2)/m_ancho - Y0 + m_alto_d
      FIN CALCULOS
      DESARMAR SOLO SI Z>30
         CALCULOS
         ult_par:=par2
         FIN CALCULOS
         PERFIL 687
            1 x Z-22
         PERFIL 8
            2 x Z-25
            1 x par2-par1-d_tra-25
         DESARMAR SOLO SI par1<X
            1 x X-par1-25
            1 x sqrt((Y1-Y0-Z)*(Y1-Y0-Z)+(par2-X)*(par2-X))
            VIDRIOS
               1 de par2-par1-30 x Y1-Y0-30
         FIN DESARME
         DESARMAR SOLO SI par1>=X
            /* Hipotenusa
            1 x sqrt((Y1-Y0-Z)*(Y1-Y0-Z)+(par2-par1)*(par2-par1))
            CALCULOS
               W := (m_alto-m_alto_d)*(m_ancho-par1)/m_ancho - Y0 + m_alto_d
            FIN CALCULOS
            VIDRIOS
               1 de par2-par1-30 x W-30
         FIN DESARME
      FIN DESARME
   FIN DESARME

   DESARMAR SOLO SI par3>0 .AND. par3>=X
      CALCULOS
         Z := (m_alto-m_alto_d)*(m_ancho-par3)/m_ancho - Y0 + m_alto_d
      FIN CALCULOS
      DESARMAR SOLO SI Z>30
         CALCULOS
         ult_par:=par3
         FIN CALCULOS
         PERFIL 687
            1 x Z-25
         PERFIL 8
            2 x Z-25
            1 x par3-par2-d_tra-25
         DESARMAR SOLO SI par2<X
            1 x X-par2-25
            1 x sqrt((Y1-Z-Y0)*(Y1-Z-Y0)+(par3-X)*(par3-X))
            VIDRIOS
               1 de par3-par2-30 x Y1-Y0-30
         FIN DESARME
         DESARMAR SOLO SI par2>=X
            1 x sqrt((Y1-Z-Y0)*(Y1-Z-Y0)+(par3-par2)*(par3-par2))
            CALCULOS
               W := (m_alto-m_alto_d)*(m_ancho-par2)/m_ancho - Y0 + m_alto_d
            FIN CALCULOS
            VIDRIOS
               1 de par3-par2-30 x W-30
         FIN DESARME
      FIN DESARME
   FIN DESARME

   DESARMAR SOLO SI par4>0 .AND. par4>=X
      CALCULOS
         Z := (m_alto-m_alto_d)*(m_ancho-par4)/m_ancho - Y0 + m_alto_d
      FIN CALCULOS
      DESARMAR SOLO SI Z>30
         CALCULOS
         ult_par:=par4
         FIN CALCULOS
         PERFIL 687
            1 x Z
         PERFIL 8
            2 x Z-25
            1 x par4-par3-d_tra-25
         DESARMAR SOLO SI par3<X
            1 x X-par3-25
            1 x sqrt((Y1-Z-Y0)*(Y1-Z-Y0)+(par4-X)*(par4-X))
            VIDRIOS
               1 de par4-par3-30 x Y1-Y0-30
         FIN DESARME
         DESARMAR SOLO SI par3>=X
            1 x sqrt((Y1-Z-Y0)*(Y1-Z-Y0)+(par4-par3)*(par4-par3))
            CALCULOS
               W := (m_alto-m_alto_d)*(m_ancho-par3)/m_ancho - Y0 + m_alto_d
            FIN CALCULOS
            VIDRIOS
               1 de par4-par3-30 x W-30
         FIN DESARME
      FIN DESARME
   FIN DESARME

   DESARMAR SOLO SI par5>0 .AND. par5>=X
      CALCULOS
         Z := (m_alto-m_alto_d)*(m_ancho-par5)/m_ancho - Y0 + m_alto_d
      FIN CALCULOS
      DESARMAR SOLO SI Z>30
         CALCULOS
         ult_par:=par5
         FIN CALCULOS
         PERFIL 687
            1 x Z-25
         PERFIL 8
            2 x Z-25
            1 x par5-par4-d_tra-25
         DESARMAR SOLO SI par4<X
            1 x X-par4-25
            1 x sqrt((Y1-Z-Y0)*(Y1-Z-Y0)+(par4-X)*(par4-X))
            VIDRIOS
               1 de par5-par4-30 x Y1-Y0-30
         FIN DESARME
         DESARMAR SOLO SI par4>=X
             1 x sqrt((Y1-Z-Y0)*(Y1-Z-Y0)+(par5-par4)*(par5-par4))
            CALCULOS
               W := (m_alto-m_alto_d)*(m_ancho-par4)/m_ancho - Y0 + m_alto_d
            FIN CALCULOS
            VIDRIOS
               1 de par5-par4-30 x W-30
         FIN DESARME
      FIN DESARME
   FIN DESARME

   /* el ultimo pedazito
   DESARMAR SOLO SI ult_par=0 
      PERFIL 8
         1 x Y1-Y0-25
   FIN DESARME

   DESARMAR SOLO SI Y0<m_alto_d
   PERFIL 8
      DESARMAR SOLO SI m_alto_d-Y0>25
         1 x m_alto_d-Y0-25
      FIN DESARME
         1 x m_ancho-ult_par-25
      DESARMAR SOLO SI ult_par<X
         1 x X-ult_par-25
         1 x sqrt((Y1-Y0)*(Y1-Y0)+(m_ancho-X)*(m_ancho-X))
      VIDRIOS
         1 de m_ancho-ult_par-30 x Y1-Y0-30
      FIN DESARME
      DESARMAR SOLO SI ult_par>=X
         1 x sqrt((Y1-Y0)*(Y1-Y0)+(X*X))
            CALCULOS
               W := (m_alto-m_alto_d)*(m_ancho-ult_par)/m_ancho - Y0 + m_alto_d
            FIN CALCULOS
          VIDRIOS
             1 de m_ancho-ult_par-30 x m_alto-ult_tra-30
      FIN DESARME
   FIN DESARME

   DESARMAR SOLO SI Y0>=m_alto_d
      PERFIL 8
      DESARMAR SOLO SI ult_par>=X
         CALCULOS
            Y := m_ancho * (m_alto-Y0)/(m_alto-m_alto_d)
            W := (m_alto-m_alto_d)*(m_ancho-ult_par)/m_ancho - Y0 + m_alto_d
            Z := sqrt(W*W+(Y-ult_par)*(Y-ult_par))
         FIN CALCULOS
         1 x Y-ult_par-25
         1 x Z-25

/*       DESARMAR SOLO SI ult_tra=Y0
/*          1 x Y1-Y0-25
/*       FIN DESARME

         VIDRIOS
            1 de Y-ult_par-30 x Z-30
      FIN DESARME
      DESARMAR SOLO SI ult_par<X
         CALCULOS
            Y := m_ancho * (m_alto-Y0)/(m_alto-m_alto_d)
            W := (m_alto-m_alto_d)*(m_ancho-ult_par)/m_ancho - Y0 + m_alto_d
            Z := sqrt((Y-X)*(Y-X) + (Y1-Y0)*(Y1-Y0))
         FIN CALCULOS
         1 x Y-ult_par-25
         1 x X-ult_par-25
         1 x Z-25
         VIDRIOS

         /*   1 de Y-ult_par-30 x Z-30
            1 de Y-ult_par-30 x Y1-Y0-30
      FIN DESARME
   FIN DESARME
FIN DESARME
                                       







/* VIDRIO REPARTIDO */
CALCULOS
	m_ancho:=m_ancho-10
	m_alto:=m_alto-10
FIN CALCULOS

   /* MARCO */
   CORTES A 45:
   PERFIL 6572
      2 x m_ancho
      2 x m_alto
   CORTES A RECTO:
   SEPARACION

   /* SIN PARANTES NI TRAVIESAS */
   DESARMAR SOLO SI vr2_tra1=0 .AND. vr2_par1=0
      PANELES
         SEPARACION
            1 de m_ancho-15 x m_alto-15
   FIN DESARME

   /* Parantes y ningun travesanio */
   DESARMAR SOLO SI vr2_tra1=0 .AND. vr2_par1!=0
      PERFIL 6571
         vr2_par1 x m_alto-20
		PANELES
         SEPARACION
         vr2_par1+1 de  (m_ancho-15-13*vr2_par1)/(1+vr2_par1) x m_alto-15
   FIN DESARME

   /* Travesanios y ningun parante*/
   DESARMAR SOLO SI vr2_tra1!=0 .AND. vr2_par1=0
      PERFIL 6571
         vr2_tra1 x m_ancho-24
		PANELES
         SEPARACION
         vr2_tra1+1 de  m_ancho-15 x (m_alto-15-13*vr2_tra1)/(1+vr2_tra1)
   FIN DESARME

   /* Parantes y Travesanios */
   DESARMAR SOLO SI vr2_par1!=0 .AND. vr2_tra1!=0
      PERFIL 6571
         vr2_tra1 x m_ancho-24
         vr2_par1*(vr2_tra1+1) x (m_alto-20-vr2_tra1*6)/(vr2_tra1+1)
		PANELES	
         SEPARACION
            CALCULOS
               vid_h:=(m_ancho-24-13*vr2_par1)/(1+vr2_par1)-3
               vid_v:=(m_alto-24-13*vr2_tra1)/(1+vr2_tra1)+3
            FIN CALCULOS
            (vr2_par1+1)*(vr2_tra1+1) de vid_h x vid_v

   FIN DESARME



   /* CONJUNTO DE ACCESORIOS PARA EL VIDRIO REPARTIDO */
   /*       VER CANTIDADES*/
   /*    BURLETE BVR*/

M.OBRA movr2*vr2_tra1*vr2_par1+movr1*(vr2_tra1+1)*(vr2_par1+1)




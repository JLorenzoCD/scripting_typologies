/* VIDRIO REPARTIDO MARCO 6572 TRAVESAÑOS 6571 */
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
   DESARMAR SOLO SI vr3_tra1=0 .AND. vr3_par1=0
      VIDRIOS
         SEPARACION
            1 de m_ancho-15 x m_alto-15
   FIN DESARME

   /* Parantes y ningun travesanio */
   DESARMAR SOLO SI vr3_tra1=0 .AND. vr3_par1!=0
      PERFIL 6571
         vr3_par1 x m_alto-20
      OTROS INTERIORES
         SEPARACION
         vr3_par1+1 de  (m_ancho-15-13*vr3_par1)/(1+vr3_par1) x m_alto-15
   FIN DESARME

   /* Travesanios y ningun parante*/
   DESARMAR SOLO SI vr3_tra1!=0 .AND. vr3_par1=0
      PERFIL 6571
         vr3_tra1 x m_ancho-24
      OTROS INTERIORES
         SEPARACION
         vr3_tra1+1 de  m_ancho-24 x (m_alto-15-13*vr3_tra1)/(1+vr3_tra1)
   FIN DESARME

   /* Parantes y Travesanios */
   DESARMAR SOLO SI vr3_par1!=0 .AND. vr3_tra1!=0
      PERFIL 6571
         vr3_tra1 x m_ancho-24
         vr3_par1*(vr3_tra1+1) x (m_alto-20-vr3_tra1*6)/(vr3_tra1+1)
      OTROS INTERIORES
         SEPARACION
            CALCULOS
               vid_h:=(m_ancho-24-13*vr3_par1)/(1+vr3_par1)-3
               vid_v:=(m_alto-24-13*vr3_tra1)/(1+vr3_tra1)+3
            FIN CALCULOS
            (vr3_par1+1)*(vr3_tra1+1) de vid_h x vid_v
 
   FIN DESARME



   /* CONJUNTO DE ACCESORIOS PARA EL VIDRIO REPARTIDO */
   /* CONJUNTO 90000   VER CANTIDADES
   /*    BURLETE BVR       VER CANTIDADES

M.OBRA movr2*vr3_tra1*vr3_par1+movr1*(vr3_tra1+1)*(vr3_par1+1)



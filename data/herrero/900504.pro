/* VIDRIO REPARTIDO  MODENA C6266 */

CALCULOS
   m_ancho:=m_ancho-6
   m_alto:=m_alto-6
FIN CALCULOS


   /* MARCO */
   CORTES A 45:
   PERFIL C6266
      2 x m_ancho
      2 x m_alto

   CORTES A RECTO:
   SEPARACION

   /* SIN PARANTES NI TRAVIESAS */
   DESARMAR SOLO SI vr2_tra1=0 .AND. vr2_par1=0
      PARTE B30
      4 x (m_ancho+m_alto)/1000

      PANELES
         SEPARACION
            1 de m_ancho-40 x m_alto-40
   FIN DESARME

   /* Parantes y ningun travesanio */
   DESARMAR SOLO SI vr2_tra1=0 .AND. vr2_par1!=0
      PARTE B30
      4+vr2_par1*4 x m_alto/1000

      PERFIL C6268
         vr2_par1 x m_alto-28
      PANELES
         SEPARACION
         vr2_par1+1 de  (m_ancho-40-17*vr2_par1)/(1+vr2_par1) x m_alto-40
   FIN DESARME

   /* Travesanios y ningun parante*/
   DESARMAR SOLO SI vr2_tra1!=0 .AND. vr2_par1=0
      PARTE B30
      4+vr2_tra1*4 x m_ancho/1000

      PERFIL C6268
         vr2_tra1 x m_ancho-28
      PANELES
         SEPARACION
         vr2_tra1+1 de  m_ancho-40 x (m_alto-40-17*vr2_tra1)/(1+vr2_tra1)
   FIN DESARME

   /* Parantes y Travesanios */
   DESARMAR SOLO SI vr2_par1!=0 .AND. vr2_tra1!=0
      PARTE B30
      4+vr2_tra1*4 x m_ancho/1000
      4+vr2_par1*4 x m_alto/1000

      PERFIL C6268
         vr2_tra1 x m_ancho-28
         vr2_par1*(vr2_tra1+1) x (m_alto-28-vr2_tra1*6)/(vr2_tra1+1)
      PANELES
         SEPARACION
            CALCULOS
               vid_h:=(m_ancho-40-17*vr2_par1)/(1+vr2_par1)
               vid_v:=(m_alto-40-17*vr2_tra1)/(1+vr2_tra1)
            FIN CALCULOS
            (vr2_par1+1)*(vr2_tra1+1) de vid_h x vid_v

   FIN DESARME

M.OBRA movr2*vr2_tra1*vr2_par1+movr1*(vr2_tra1+1)*(vr2_par1+1)






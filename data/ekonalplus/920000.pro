/* VIDRIO REPARTIDO CON MARCO Y TRAVESANIOS 6571*/

   /* MARCO */
   CORTES A 45:
   PERFIL 6571
      2 x m_ancho
      2 x m_alto
   CORTES A RECTO:

   /* SIN PARANTES NI TRAVIESAS */
   DESARMAR SOLO SI vr_tra1=0 .AND. vr_par1=0
      VIDRIOS
            1 de m_ancho-41 x m_alto-41
      M.OBRA 0.35
   FIN DESARME

   /* Parantes y ningun travesanio */
   DESARMAR SOLO SI vr_tra1=0 .AND. vr_par1!=0
      PERFIL 6571
         vr_par1 x m_alto-37
      VIDRIOS
         vr_par1+1 de  (m_ancho-41-15*vr_par1)/(1+vr_par1) x m_alto-41
   FIN DESARME

   /* Travesanios y ningun parante*/
   DESARMAR SOLO SI vr_tra1!=0 .AND. vr_par1=0
      PERFIL 6571
         vr_tra1 x m_ancho-37
      VIDRIOS
         vr_tra1+1 de  m_ancho-41 x (m_alto-41-15*vr_tra1)/(1+vr_tra1)
   FIN DESARME

   /* Parantes y Travesanios */
   DESARMAR SOLO SI vr_par1!=0 .AND. vr_tra1!=0
      PERFIL 6571
         vr_tra1 x m_ancho-37
         vr_par1*(vr_tra1+1) x (m_alto-37-vr_tra1*10.5)/(vr_tra1+1)
      VIDRIOS
            CALCULOS
               vid_h:=(m_ancho-41-15*vr_par1)/(1+vr_par1)
               vid_v:=(m_alto-41-15*vr_tra1)/(1+vr_tra1)
            FIN CALCULOS
            (vr_par1+1)*(vr_tra1+1) de vid_h x vid_v
   FIN DESARME



   /* CONJUNTO DE ACCESORIOS PARA EL VIDRIO REPARTIDO */
   /* CONJUNTO 911001 */


M.OBRA movr2*vr_tra1*vr_par1+movr1*(vr_tra1+1)*(vr_par1+1)



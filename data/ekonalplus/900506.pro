


/* VIDRIO REPARTIDO CON MARCO Y TRAVESANIOS 6571*/

   /* MARCO */
   CORTES A 45:
   PERFIL 6571
      2 x m_ancho
      2 x m_alto
   CORTES A RECTO:

   /* SIN PARANTES NI TRAVIESAS */
   DESARMAR SOLO SI vr3_tra1=0 .AND. vr3_par1=0
      VIDRIOS
            1 de m_ancho-41 x m_alto-41
   FIN DESARME

   /* Parantes y ningun travesanio */
   DESARMAR SOLO SI vr3_tra1=0 .AND. vr3_par1!=0
      PERFIL 6571
         vr3_par1 x m_alto-37
      VIDRIOS
         vr3_par1+1 de  (m_ancho-41-15*vr3_par1)/(1+vr3_par1) x m_alto-41
   FIN DESARME

   /* Travesanios y ningun parante*/
   DESARMAR SOLO SI vr3_tra1!=0 .AND. vr3_par1=0
      PERFIL 6571
         vr3_tra1 x m_ancho-37
      VIDRIOS
         vr3_tra1+1 de  m_ancho-41 x (m_alto-41-15*vr3_tra1)/(1+vr3_tra1)
   FIN DESARME

   /* Parantes y Travesanios */
   DESARMAR SOLO SI vr3_par1!=0 .AND. vr3_tra1!=0
      PERFIL 6571
         vr3_tra1 x m_ancho-37
         vr3_par1*(vr3_tra1+1) x (m_alto-37-vr3_tra1*10.5)/(vr3_tra1+1)
      VIDRIOS
            CALCULOS
               vid_h:=(m_ancho-41-15*vr3_par1)/(1+vr3_par1)
               vid_v:=(m_alto-41-15*vr3_tra1)/(1+vr3_tra1)
            FIN CALCULOS
            (vr3_par1+1)*(vr3_tra1+1) de vid_h x vid_v
   FIN DESARME


   /* CONJUNTO DE ACCESORIOS PARA EL VIDRIO REPARTIDO */
   /* CONJUNTO 911001 */


M.OBRA movr2*vr3_tra1*vr3_par1+movr1*(vr3_tra1+1)*(vr3_par1+1)



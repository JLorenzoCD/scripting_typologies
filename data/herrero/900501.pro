/* VIDRIO REPARTIDO CON MARCO Y TRAVESANIOS BSE008*/

CALCULOS
   m_ancho:=m_ancho-10
   m_alto:=m_alto-10
FIN CALCULOS

   /* MARCO */
   CORTES A 45:
   PERFIL 801

      2 x m_ancho
      2 x m_alto
   CORTES A RECTO:
   SEPARACION

   /* SIN PARANTES NI TRAVIESAS */
   DESARMAR SOLO SI vr2_tra1=0 .AND. vr2_par1=0
      PANELES
         SEPARACION
            1 de m_ancho-36 x m_alto-36
   FIN DESARME

   /* Parantes y ningun travesanio */
   DESARMAR SOLO SI vr2_tra1=0 .AND. vr2_par1!=0
      PERFIL 801
               vr2_par1 x m_alto-32
       PANELES
         SEPARACION
         vr2_par1+1 de  (m_ancho-36-10.5*vr2_par1)/(1+vr2_par1) x m_alto-36
   FIN DESARME

   /* Travesanios y ningun parante*/
   DESARMAR SOLO SI vr2_tra1!=0 .AND. vr2_par1=0
      PERFIL 801
                         vr2_tra1 x m_ancho-32
       PANELES
         SEPARACION
         vr2_tra1+1 de  m_ancho-36 x (m_alto-36-10.5*vr2_tra1)/(1+vr2_tra1)
   FIN DESARME

   /* Parantes y Travesanios */
   DESARMAR SOLO SI vr2_par1!=0 .AND. vr2_tra1!=0
      PERFIL 801
               vr2_tra1 x m_ancho-31
         vr2_par1*(vr2_tra1+1) x (m_alto-31-vr2_tra1*5.5)/(vr2_tra1+1)
      PANELES
         SEPARACION
            CALCULOS
               vid_h:=(m_ancho-36-10.5*vr2_par1)/(1+vr2_par1)
               vid_v:=(m_alto-36-10.5*vr2_tra1)/(1+vr2_tra1)
            FIN CALCULOS
            (vr2_par1+1)*(vr2_tra1+1) de vid_h x vid_v
   FIN DESARME



   /* CONJUNTO DE ACCESORIOS PARA EL VIDRIO REPARTIDO */
   /* CONJUNTO 911001 */

M.OBRA movr2*vr2_tra1*vr2_par1+movr1*(vr2_tra1+1)*(vr2_par1+1)






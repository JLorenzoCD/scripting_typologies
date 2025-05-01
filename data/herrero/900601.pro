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
   DESARMAR SOLO SI vr3_tra1=0 .AND. vr3_par1=0
      OTROS INTERIORES
         SEPARACION
            1 de m_ancho-36 x m_alto-36
   FIN DESARME

   /* Parantes y ningun travesanio */
   DESARMAR SOLO SI vr3_tra1=0 .AND. vr3_par1!=0
      PERFIL 801
               vr3_par1 x m_alto-32
       OTROS INTERIORES
         SEPARACION
         vr3_par1+1 de  (m_ancho-36-10.5*vr3_par1)/(1+vr3_par1) x m_alto-36
   FIN DESARME

   /* Travesanios y ningun parante*/
   DESARMAR SOLO SI vr3_tra1!=0 .AND. vr3_par1=0
      PERFIL 801
                         vr3_tra1 x m_ancho-32
       OTROS INTERIORES
         SEPARACION
         vr3_tra1+1 de  m_ancho-36 x (m_alto-36-10.5*vr3_tra1)/(1+vr3_tra1)
   FIN DESARME

   /* Parantes y Travesanios */
   DESARMAR SOLO SI vr3_par1!=0 .AND. vr3_tra1!=0
      PERFIL 801
               vr3_tra1 x m_ancho-31
         vr3_par1*(vr3_tra1+1) x (m_alto-31-vr3_tra1*5.5)/(vr3_tra1+1)
      OTROS INTERIORES
         SEPARACION
            CALCULOS
               vid_h:=(m_ancho-36-10.5*vr3_par1)/(1+vr3_par1)
               vid_v:=(m_alto-36-10.5*vr3_tra1)/(1+vr3_tra1)
            FIN CALCULOS
            (vr3_par1+1)*(vr3_tra1+1) de vid_h x vid_v
   FIN DESARME



   /* CONJUNTO DE ACCESORIOS PARA EL VIDRIO REPARTIDO */
   /* CONJUNTO 911001 */

M.OBRA movr2*vr3_tra1*vr3_par1+movr1*(vr3_tra1+1)*(vr3_par1+1)




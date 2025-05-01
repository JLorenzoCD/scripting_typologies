/* VIDRIO REPARTIDO */

CALCULOS
   m_ancho:=m_ancho-8
   m_alto:=m_alto-8
   vrx:=INT((vr_par1+1)/2)
   vry:=INT((vr_par1+1)-vrx)
FIN CALCULOS

         /* MARCO */
   CORTES A 45:
   PERFIL 800
      2 x m_ancho
      2 x m_alto
   CORTES A RECTO:

   /* SIN PARANTES NI TRAVIESAS */
   DESARMAR SOLO SI vr_tra1=0 .AND. vr_par1=0
      VIDRIOS

          1 de m_ancho-26 x m_alto-26

      M.OBRA 0.35
   FIN DESARME
         /* Parantes y Travesanios */
   DESARMAR SOLO SI vr_par1!=0 .AND. vr_tra1!=0

      PERFIL 801
          vry*vr_tra1 + vry*(vr_tra1+1) x (m_ancho-12-vr_par1*5.5)/(vr_par1+1)
          vr_par1 x m_alto-12
      VIDRIOS
       
            CALCULOS
               vid_h:=(m_ancho-26-11*vr_par1)/(1+vr_par1)
               vid_v:=(m_alto-26-11*vr_tra1)/(1+vr_tra1)
            FIN CALCULOS

            (vr_tra1+1)*vrx de vid_h x vid_v
            (vr_tra1)*(vr_par1+1-vrx) de vid_h x vid_v
            2*(vr_par1+1-vrx) de vid_h x vid_v/2

      M.OBRA 0.35+vr_tra1*0.1+vr_par1*0.1

   FIN DESARME







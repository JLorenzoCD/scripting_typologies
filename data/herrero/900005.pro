/* VIDRIO REPARTIDO */

CALCULOS
   m_ancho:=m_ancho-8
   m_alto:=m_alto-8
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
      /*accesorios*/
  /*    PARTE UVW
     /*    2 x m_ancho/1000
     /*    2 x m_alto/1000
   FIN DESARME

   /* Parantes y ningun travesanio */
   DESARMAR SOLO SI vr_tra1=0 .AND. vr_par1!=0
      PERFIL 801
         vr_par1 x m_alto-22
      VIDRIOS
         
         vr_par1+1 de  (m_ancho-26-11*vr_par1)/(1+vr_par1) x m_alto-26
   /*   PARTE UVW
   /*  (2*(vr_tra1+1) x m_ancho)/1000
   /*   (2 x m_alto)/1000
   FIN DESARME

   /* Travesanios y ningun parante*/
   DESARMAR SOLO SI vr_tra1!=0 .AND. vr_par1=0
      PERFIL 801
         vr_tra1 x m_ancho-22
      VIDRIOS
         
         vr_tra1+1 de  m_ancho-26 x (m_alto-26-11*vr_tra1)/(1+vr_tra1)
   /*   PARTE UVW
   /*   2 x m_ancho/1000
   /*  (2*(vr_par1+1) x m_alto)/1000
   FIN DESARME

   /* Parantes y Travesanios */
   DESARMAR SOLO SI vr_par1!=0 .AND. vr_tra1!=0
      PERFIL 801
         vr_tra1 x m_ancho-12
         vr_par1*(vr_tra1+1) x (m_alto-22-vr_tra1*5.5)/(vr_tra1+1)
      VIDRIOS
       
            CALCULOS
               vid_h:=(m_ancho-26-11*vr_par1)/(1+vr_par1)
               vid_v:=(m_alto-26-11*vr_tra1)/(1+vr_tra1)
            FIN CALCULOS
            (vr_par1+1)*(vr_tra1+1) de vid_h x vid_v
     /*   PARTE UVW
     /*  (vr_tra1+1)*2 x m_ancho/1000
     /*  (vr_par1+1)*2 x m_alto/1000

   FIN DESARME


M.OBRA movr2*vr_tra1*vr_par1+movr1*(vr_tra1+1)*(vr_par1+1)





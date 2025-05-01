/* Puerta de Rebatir */
     CALCULOS
    e_desc:=50
    d_vid:=32
    j_desc:=25
    tra2:=0
	FIN CALCULOS

/* Marco */
SEGUN marco PERFIL 6579,6768,6577
    CORTES A 45:
       1 x m_ancho
    CORTES A 90 Y 45:        
       2 x m_alto
      
   CORTES A RECTO:

   /* Puertas de una hoja */

DESARMAR SOLO SI n_hojas=1

   /* NO Lleva travesanio intermedio */
      
         PERFIL 902
            1 x m_ancho-187
         PERFIL 44
            1 x m_ancho-187
     
      /* Batientes y Tapajuntas */
      PERFIL 6313
         2 x m_alto-33
   DESARMAR SOLO SI xtra=0
      DESARMAR SOLO SI tra1=0 .AND. par1=0
            VIDRIOS
            DESARMAR SOLO SI tipo_rev=1 
            1 de m_ancho-168 x m_alto-140
            FIN DESARME
            DESARMAR SOLO SI tipo_rev=2 
            PRODUCTO REVET , 1 de m_ancho-168 x m_alto-140
            FIN DESARME
            DESARMAR SOLO SI tipo_rev=3 
            PRODUCTO REV688, 1 de m_ancho-168 x m_alto-140
            FIN DESARME

      FIN DESARME
         /* LLEVA TRAVESANIO */

      DESARMAR SOLO SI tra1!=0 .AND. par1=0
         PERFIL 902
            tra1 x m_ancho-187

              VIDRIOS
            DESARMAR SOLO SI tipo_rev=1 
            tra1+1 de m_ancho-168 x (m_alto-140-tra1*32)/(tra1+1)
            FIN DESARME
            DESARMAR SOLO SI tipo_rev=2 
            PRODUCTO REVET , tra1+1 de m_ancho-168 x (m_alto-140-tra1*32)/(tra1+1)
            FIN DESARME
            DESARMAR SOLO SI tipo_rev=3 
            PRODUCTO REV688, tra1+1 de m_ancho-168 x (m_alto-140-tra1*32)/(tra1+1)
            FIN DESARME
      FIN DESARME



      DESARMAR SOLO SI tra1=0 .AND. par1!=0
         PERFIL 902
            par1 x m_alto-140
                VIDRIOS
            DESARMAR SOLO SI tipo_rev=1 
                      par1+1 de (m_ancho-168-32*par1)/(par1+1) x m_alto-140
            FIN DESARME
            DESARMAR SOLO SI tipo_rev=2 
            PRODUCTO REVET , par1+1 de (m_ancho-168-32*par1)/(par1+1) x m_alto-140
            FIN DESARME
            DESARMAR SOLO SI tipo_rev=3 
            PRODUCTO REV688, par1+1 de (m_ancho-168-32*par1)/(par1+1) x m_alto-140
            FIN DESARME




      FIN DESARME

      DESARMAR SOLO SI tra1>0 .AND. par1>0
         PERFIL 902
              tra1 x m_ancho-187
     par1*(tra1+1) x (m_alto-50*tra1-140)/(tra1+1)
        CALCULOS
        vid_h:=(m_ancho-168-32*par1)/(par1+1)
        vid_v:=(m_alto-140-tra1*32)/(tra1+1)
        FIN CALCULOS
         PANELES
            DESARMAR SOLO SI tipo_rev=1 
                            (tra1+1)*(par1+1) de vid_h x vid_v
            FIN DESARME
            DESARMAR SOLO SI tipo_rev=2 
            PRODUCTO REVET ,(tra1+1)*(par1+1) de vid_h x vid_v 
            FIN DESARME
            DESARMAR SOLO SI tipo_rev=3 
            PRODUCTO REV688,(tra1+1)*(par1+1) de vid_h x vid_v 
            FIN DESARME


      FIN DESARME
   FIN DESARME

      /* Lleva travesanio principal */

   DESARMAR SOLO SI xtra>0
	
         PERFIL 902
            1 x m_ancho-187
      DESARMAR SOLO SI tipo_rev=1
     	VIDRIOS
        1 de m_ancho-168 x xtra-87
      FIN DESARME
      DESARMAR SOLO SI tipo_rev=2 .OR. tipo_rev=3
         DESARMAR SOLO SI tipo_rev = 2
            PRODUCTO REVET , 1 de m_ancho-168 x xtra-87
         FIN DESARME
         DESARMAR SOLO SI tipo_rev = 3
            PRODUCTO REV688, 1 de m_ancho-168 x xtra-87
         FIN DESARME
      FIN DESARME

      DESARMAR SOLO SI tra1=0 .AND. par1=0
         PANELES
         1 de m_ancho-168 x m_alto-xtra-16-69
      FIN DESARME
      
         /* LLEVA TRAVESANIO */

      DESARMAR SOLO SI tra1>0 .AND. par1=0
         PERFIL 902
           tra1 x m_ancho-187
         PANELES
           tra1+1 de m_ancho-168 x (m_alto-xtra-16-69-tra1*32)/(tra1+1)
      FIN DESARME
      DESARMAR SOLO SI tra1=0 .AND. par1>=0
         PERFIL 902
         par1 x m_alto-xtra-16-78
		PANELES
       par1+1 de (m_ancho-168-32*par1)/(par1+1)
      FIN DESARME

      DESARMAR SOLO SI tra1>0 .AND. par1>0
         PERFIL 902
              tra1 x m_ancho-187
     par1*(tra1+1) x (m_alto-xtra-16-50*tra1-78)/(tra1+1)
         PANELES
     (tra1+1)*(par1+1) de (m_ancho-168-32*par1)/(par1+1) x (m_alto-xtra-16-69-tra1*32)/(tra1+1)
      FIN DESARME
   FIN DESARME
   

     /* MECANISMO PUERTA DE UNA HOJA */
   DESARMAR SOLO SI marco=1 .OR. marco=2
      PARTE A
         1 x 2
   FIN DESARME
   DESARMAR SOLO SI marco=3
      PARTE C
         1 x 2
   FIN DESARME
   PARTE B44
        4 x m_alto/1000
      PARTE D
         1 x 30
      PARTE H33
         1 x 3
      PARTE 1101
          1 x 1
      
        PARTE MANIJA
         1 x 1

      DESARMAR SOLO SI cierra_p=1
         PARTE CIEPTA        
            1 x 1
      FIN DESARME


      PARTE H 
         1 x m_ancho/1000
         4 x m_alto/1000

      PARTE C5
         1 x 8+4*tra1+4*par1
        


	FIN DESARME


/* Puertas de una Hoja */

   /* =================================================== */


   /* Puertas de dos hoja */
DESARMAR SOLO SI n_hojas=2
   /* Batientes y Tapajuntas */
              PERFIL 6313
         4 x m_alto-33
              PERFIL 5820
         2 x m_alto-33
  /* NO Lleva travesanio intermedio */
              PERFIL 44
            2 x m_ancho/2-138
              PERFIL 902
            2 x m_ancho/2-138
        DESARMAR SOLO SI xtra=0        
                DESARMAR SOLO SI tra1=0 .AND. par1=0
                      VIDRIOS
            2 de m_ancho/2-120 x m_alto-140
                FIN DESARME
                DESARMAR SOLO SI tra1>0 .AND. par1=0
                      PERFIL 902
            2*tra1 x m_ancho/2-138

                      VIDRIOS
           DESARMAR SOLO SI tipo_rev=1
            2*(tra1+1) de m_ancho/2-120 x (m_alto-140-32*tra1)/(tra1+1)
           FIN DESARME
           DESARMAR SOLO SI tipo_rev=2
            PRODUCTO REVET , 2*(tra1+1) de m_ancho/2-120 x (m_alto-140-32*tra1)/(tra1+1)
           FIN DESARME
           DESARMAR SOLO SI tipo_rev=3
            PRODUCTO REV688, 2*(tra1+1) de m_ancho/2-120 x (m_alto-140-32*tra1)/(tra1+1)
           FIN DESARME


                FIN DESARME

                DESARMAR SOLO SI par1>0 .AND. tra1=0
                      PERFIL 902
        2*par1 x m_alto-140
                      VIDRIOS

           DESARMAR SOLO SI tipo_rev=1
        2*(par1+1) de (m_ancho/2-120-32*par1)/(par1+1) x m_alto-140
           FIN DESARME
           DESARMAR SOLO SI tipo_rev=2
            PRODUCTO REVET , 2*(par1+1) de (m_ancho/2-120-32*par1)/(par1+1) x m_alto-140
           FIN DESARME
           DESARMAR SOLO SI tipo_rev=3
            PRODUCTO REV688, 2*(par1+1) de (m_ancho/2-120-32*par1)/(par1+1) x m_alto-140
           FIN DESARME


                FIN DESARME
                DESARMAR SOLO SI tra1!=0 .AND. par1!=0
                      PERFIL 902
        2*tra1 x m_ancho/2-138
        2*par1*(tra1+1) x (m_alto-140-50*tra1)/(tra1+1)
                      VIDRIOS
          CALCULOS
          vid_h:=(m_ancho/2-120-32*par1)/(par1+1)
          vid_v:=(m_alto-140-32*tra1)/(tra1+1)

        2*(par1+1)*(tra1+1) de vid_h x vid_v 
                FIN DESARME
        FIN DESARME
            
     /* Lleva travesanio intermedio */
        DESARMAR SOLO SI xtra>0
                      PERFIL 902
            2 x m_ancho/2-138
                DESARMAR SOLO SI tra1=0 .AND. par1=0
                        DESARMAR SOLO SI tipo_rev=1
                      VIDRIOS
           2 de m_ancho/2-120 x xtra-16-69
                        FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 2
                                        PRODUCTO REVET , 2 de m_ancho/2-120 x xtra-16-69
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                                        PRODUCTO REV688, 2 de m_ancho/2-120 x xtra-16-69
                                FIN DESARME
                        PANELES    
                        2 de m_ancho/2-120 x m_alto-xtra-69-16
                        FIN DESARME
 
         /* LLEVA TRAVESANIO */
                DESARMAR SOLO SI tra1!=0 .AND. par1=0
                        PERFIL 902
                        2*tra1 x m_ancho/2-189
                        DESARMAR SOLO SI tipo_rev=1
                                VIDRIOS
                                2 de m_ancho/2-120 x xtra-16-69
                        FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 2
                                PRODUCTO REVET , 2 de m_ancho/2-120 x xtra-16-69
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                                PRODUCTO REV688, 2 de m_ancho/2-120 x xtra-16-69
                                FIN DESARME
                        PANELES
                        2*(tra1+1) de m_ancho/2-120 x (m_alto-xtra-tra1*32-69-16)/(tra1+1)
                FIN DESARME
                DESARMAR SOLO SI par1!=0 .AND. tra1=0
                        PERFIL 902
                        2*par1 x m_alto-xtra-16-78
                        DESARMAR SOLO SI tipo_rev=1
                        VIDRIOS
                        2 de m_ancho/2-120 x xtra-16-69
                        FIN DESARME 
                                DESARMAR SOLO SI tipo_rev = 2
                                        PRODUCTO REVET , 2 de m_ancho/2-120 x xtra-16-69
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                                        PRODUCTO REV688, 2 de m_ancho/2-120 x xtra-16-69
                                FIN DESARME
                        PANELES    
                        2*(par1+1) de (m_ancho/2-120-32*par1)/(par1+1) x m_alto-xtra-69-16-32*tra1
                FIN DESARME
                DESARMAR SOLO SI par1!=0 .AND. tra1!=0
                        PERFIL 902
                        2*tra1 x m_ancho/2-138
                        2*par1*(tra1+1) x (m_alto-xtra-25-78-50*tra1)/(tra1+1)
                        DESARMAR SOLO SI tipo_rev=1
                        VIDRIOS
                        2 de m_ancho/2-120 x xtra-16-69
                        FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 2
                                        PRODUCTO REVET , 2 de m_ancho/2-120 x xtra-16-69
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                                        PRODUCTO REV688, 2 de m_ancho/2-120 x xtra-16-69
                                FIN DESARME
                                PANELES    
                                2*(par1+1)*(tra1+1) de (m_ancho/2-120-32*par1)/(par1+1) x (m_alto-xtra-69-16-32*tra1)/(tra1+1)
                FIN DESARME
        FIN DESARME

      /* MECANISMO PUERTA DE DOS HOJAS */
   DESARMAR SOLO SI marco=1 .OR. marco=2
      PARTE A
         1 x 2
   FIN DESARME
   DESARMAR SOLO SI marco=3
      PARTE C
         1 x 2
   FIN DESARME
   PARTE B44
        4 x m_alto/1000
      PARTE D
         1 x 16
      PARTE H33
         1 x 6
      PARTE 1101
         1 x 1
      PARTE PASADO  
         1 x 2
      PARTE MANIJA
         1 x 1

      DESARMAR SOLO SI cierra_p=1
         PARTE CIEPTA        
            1 x cierra_p
      FIN DESARME

      PARTE H
         1 x m_ancho/1000
         5 x m_alto/1000

      PARTE AA
         2 x m_alto/1000

      PARTE C5
         DESARMAR SOLO SI tra1!=0
            1 x 24
         FIN DESARME
         DESARMAR SOLO SI tra1=0
            1 x 16
         FIN DESARME    
FIN DESARME
   
 /* Puertas de Dos Hojas */

 



PRODUCTO MOPUER







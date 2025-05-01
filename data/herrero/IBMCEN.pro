/* frente con perfiles ibm con travesa¤os y parantes centrados */

/* Marco */


        CALCULOS
                desc_par:=if(parante=3,110,60)
                desc_tra:=if(tipo_tra=3,110,60)                
        FIN CALCULOS

CORTES A RECTO:

DESARMAR SOLO SI corte=1
        SEGUN tipo_tra PERFIL 5374,6929,5373
                2 x m_ancho
        SEGUN parante PERFIL 5374,6929,5373
                2 x m_alto-2*desc_tra        
        SEGUN tipo_tra PERFIL 5379,5379,5376
                2 x m_ancho
        SEGUN parante PERFIL 5379,5379,5376
                2 x m_alto-2*desc_tra
        SEGUN tapa PERFIL 5378,5375,7010
                2 x m_ancho
                2 x m_alto-2*desc_tra
FIN DESARME

DESARMAR SOLO SI corte=2
        SEGUN tipo_tra PERFIL 5374,6929,5373
                2 x m_ancho-2*desc_par
        SEGUN parante PERFIL 5374,6929,5373
                2 x m_alto        
        SEGUN tipo_tra PERFIL 5379,5379,5376
                2 x m_ancho-2*desc_par
        SEGUN parante PERFIL 5379,5379,5376
                2 x m_alto
        SEGUN tapa PERFIL 5378,5375,7010
                2 x m_ancho-2*desc_par
                2 x m_alto
FIN DESARME

CORTES A RECTO: 


DESARMAR SOLO SI tra1=0
        DESARMAR SOLO SI par1=0
                
                VIDRIOS
                1 de m_ancho-desc_par-30 x m_alto-desc_tra-30

        FIN DESARME
        DESARMAR SOLO SI par1>0
        SEGUN parante PERFIL 5374,6929,5373
                        par1 x m_alto
        SEGUN parante PERFIL 5379,5379,5376
                        par1 x m_alto
        SEGUN tapa PERFIL 5378,5375,7010
                        par1 x m_alto

                VIDRIOS
                par1+1 de (m_ancho-120)/(par1+1) x m_alto-90

        FIN DESARME
FIN DESARME
DESARMAR SOLO SI tra1>0
        DESARMAR SOLO SI par1=0

        SEGUN tipo_tra PERFIL 5374,6929,5373
                        tra1 x m_ancho-desc_tra
        SEGUN tipo_tra PERFIL 5379,5379,5376
                        tra1 x m_ancho-desc_tra
        SEGUN tapa PERFIL 5378,5375,7010
                        tra1 x m_ancho-desc_tra

                VIDRIOS
                tra1+1 de m_ancho-90 x (m_alto-120)/(tra1+1)

        FIN DESARME
        DESARMAR SOLO SI par1>0
                DESARMAR SOLO SI tipo_patr=1

        SEGUN tipo_tra PERFIL 5374,6929,5373
                                tra1 x m_ancho
        SEGUN parante PERFIL 5374,6929,5373
                                par1*(tra1+1) x (m_alto-desc_tra-desc_tra*tra1)/(tra1+1)                        
        SEGUN tipo_tra PERFIL 5379,5379,5376
                                tra1 x m_ancho
        SEGUN parante PERFIL 5379,5379,5376
                                par1*(tra1+1) x (m_alto-desc_tra-desc_tra*tra1)/(tra1+1)                        
        SEGUN tapa PERFIL 5378,5375,7010
                                tra1 x m_ancho
                                par1*(tra1+1) x (m_alto-desc_tra-desc_tra*tra1)/(tra1+1)                        
                FIN DESARME

                DESARMAR SOLO SI tipo_patr=2

        SEGUN tipo_tra PERFIL 5374,6929,5373
                                tra1*(par1+1) x (m_ancho-desc_par-desc_par*par1)/(par1+1)
        SEGUN parante PERFIL 5374,6929,5373
                                par1 x m_alto
        SEGUN tipo_tra PERFIL 5379,5379,5376
                                tra1*(par1+1) x (m_ancho-desc_par-desc_par*par1)/(par1+1)
        SEGUN parante PERFIL 5379,5379,5376
                                par1 x m_alto
        SEGUN tapa PERFIL 5378,5375,7010
                                tra1*(par1+1) x (m_ancho-desc_par-desc_par*par1)/(par1+1)
                                par1 x m_alto

                FIN DESARME

                        VIDRIOS

                        (tra1+1)*(par1+1) de (m_ancho-desc_par+30-(desc_par-30)*par1)/(par1+1) x (m_alto-desc_tra+30-(desc_tra-30)*tra1)/(tra1+1)
        FIN DESARME
FIN DESARME

    /* Accesorios */

       PARTE U9040
          2 x 4
       PARTE D   
          1 x 24
          2 x par1
          2 x tra1
       DESARMAR SOLO SI tra1>0 .AND. par1>0
       2 x par1*tra1
       FIN DESARME

       PARTE ABA
          2 x par1
          2 x tra1
       DESARMAR SOLO SI tra1>0 .AND. par1>0
       2 x par1*tra1
       FIN DESARME

       PARTE I
          4 x par1
          4 x tra1

       DESARMAR SOLO SI tra1>0 .AND. par1>0
       4 x par1*tra1
       FIN DESARME

       PARTE B37
          8 x m_ancho/1000
          8 x m_alto/1000
          (4*par1) x m_alto/1000
          (4*tra1) x m_ancho/1000

       PARTE B58
       par1+2 x INT((m_alto-200)/500)
       tra1+2 x INT((m_ancho-200)/500)

PRODUCTO MOPF





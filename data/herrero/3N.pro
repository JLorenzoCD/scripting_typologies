


/* Variables auxiliares
   VARIABLE perfil8_h
   VARIABLE perfil8_v

/* *********************************************************** */

/* Marco */
CORTES A 45:
      PERFIL 7
      2 x m_ancho
      2 x m_alto


CALCULOS
    j_desc:=if(tipo_patr=1,22,30)
    dtopt:=if(tipo_patr=1,22,30)
    e_desc:=if(tipo_patr=1,44,39)
   
FIN CALCULOS


CORTES A RECTO:

/* sin parantes ni traviesas */
DESARMAR SOLO SI par1=0 .AND. tra1=0 

    SEGUN contravid PERFIL 8,78,79,80,177,179,206

      /* Horizontales */
         2 x m_ancho-44
      /* Verticales */
         2 x m_alto-69

        DESARMAR SOLO SI tipo_rev=1
        VIDRIOS
                1 de m_ancho-52 x m_alto-52
        FIN DESARME
        DESARMAR SOLO SI tipo_rev=2
                PRODUCTO REVET , 1 de m_ancho-52 x m_alto-52
        FIN DESARME
        DESARMAR SOLO SI tipo_rev=3
                PRODUCTO REV688, 1 de m_ancho-52 x m_alto-52
        FIN DESARME

FIN DESARME

   /* Parantes y ningun travesanio */
   DESARMAR SOLO SI tra1=0 .AND. par1!=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         par1 x m_alto-e_desc

      SEGUN contravid PERFIL 8,78,79,80,177,179,206


  
         CALCULOS
            perfil8_h:=(m_ancho-44-dtopt*par1)/(1+par1)
            perfil8_v:=m_alto-44-25
         FIN CALCULOS

         CORTES A RECTO:
         /* Horizontales */
         2*(par1+1) x perfil8_h
         /* Verticales */
         2*(par1+1) x perfil8_v

     

      VIDRIOS
			CALCULOS
                auxd:=j_desc+9
			FIN CALCULOS
        DESARMAR SOLO SI tipo_rev=1

                par1+1 de  (m_ancho-52-auxd*par1)/(1+par1) x m_alto-52

         FIN DESARME
        DESARMAR SOLO SI tipo_rev=2 
          PRODUCTO REVET , par1+1 de (m_ancho-52-auxd*par1)/(1+par1) x m_alto-52
        FIN DESARME
        DESARMAR SOLO SI tipo_rev=3
          PRODUCTO REV688, par1+1 de (m_ancho-52-auxd*par1)/(1+par1) x m_alto-52
        FIN DESARME       
        FIN DESARME       

   /* Travesanios y ningun parante*/
   DESARMAR SOLO SI par1=0 .AND. tra1>0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94
         tra1 x m_ancho-e_desc

      SEGUN contravid PERFIL 8,78,79,80,177,179,206


         CALCULOS
            perfil8_h:=m_ancho-44
            perfil8_v:=(m_alto-44-25-dtopt*tra1-25*tra1)/(1+tra1)
         FIN CALCULOS

         CORTES A RECTO:
         /* Horizontales */
         2*(tra1+1) x perfil8_h
         /* Verticales */
         2*(tra1+1) x perfil8_v

      VIDRIOS
        
	CALCULOS
        auxd :=e_desc
   FIN CALCULOS
    DESARMAR SOLO SI tipo_rev=1
        tra1+1 de  m_ancho-52 x (m_alto-52-auxd*tra1)/(1+tra1)
    FIN DESARME
    DESARMAR SOLO SI tipo_rev=2
        PRODUCTO REVET , tra1+1 de  m_ancho-52 x (m_alto-52-auxd*tra1)/(1+tra1)
    FIN DESARME
    DESARMAR SOLO SI tipo_rev=3
        PRODUCTO REV688, tra1+1 de  m_ancho-52 x (m_alto-52-auxd*tra1)/(1+tra1)
    FIN DESARME

   FIN DESARME

   /* Parantes y Travesanios */
   DESARMAR SOLO SI par1!=0 .AND. tra1!=0
         CORTES A RECTO:
	 DESARMAR SOLO SI tipo_tra=1
        SEGUN tipo_patr PERFIL 687,94
            tra1 x m_ancho-e_desc
            par1*(tra1+1) x (m_alto-e_desc-tra1*j_desc)/(tra1+1)
	 FIN DESARME

	 DESARMAR SOLO SI tipo_tra=2
        SEGUN tipo_patr PERFIL 687,94
        par1 x m_alto-e_desc
        tra1*(par1+1) x (m_ancho-e_desc-par1*j_desc)/(par1+1)
	 FIN DESARME

      SEGUN contravid PERFIL 8,78,79,80,177,179,206


         CALCULOS 
           auxd := 25+dtopt
		   FIN CALCULOS	
         CALCULOS
            perfil8_h:=(m_ancho-39-dtopt*par1)/(1+par1)
            perfil8_v:=(m_alto-39-25-auxd*tra1)/(1+tra1)
         FIN CALCULOS

         CORTES A RECTO:
         /* Horizontales */
         2*(tra1+1)*(par1+1) x perfil8_h
         /* Verticales */
         2*(tra1+1)*(par1+1) x perfil8_v

               CALCULOS
                     auxd:=j_desc+4
                    vid_h:=(m_ancho-52-auxd*par1)/(1+par1)
                    vid_v:=(m_alto-52-auxd*tra1)/(1+tra1)
               FIN CALCULOS


        DESARMAR SOLO SI tipo_rev=1

        VIDRIOS
                  (par1+1)*(tra1+1) de vid_h x vid_v
        FIN DESARME
        DESARMAR SOLO SI tipo_rev=2
                PRODUCTO REVET ,(par1+1)*(tra1+1) de vid_h x vid_v
        FIN DESARME
        DESARMAR SOLO SI tipo_rev=3
                PRODUCTO REV688,(par1+1)*(tra1+1) de vid_h x vid_v
        FIN DESARME




      FIN DESARME

/* ACCESORIOS */

      PARTE A
	 1 x 4
      PARTE D
     1 x 16
      PARTE I
	 2 x 2+INT((m_ancho-200)/500)
	 2 x 2+INT((m_alto-200)/500)
      PARTE T
         2 x m_ancho/1000
         2*(tra1) x m_ancho/1000
         2 x m_alto/1000
         2*(par1) x m_alto/1000
      PARTE UVW
         2 x m_ancho/1000
         2*(tra1) x m_ancho/1000
         2 x m_alto/1000
         2*(par1) x m_alto/1000
      PARTE I
         4 x par1
         4 x tra1
      DESARMAR SOLO SI tipo_patr=2
         PARTE ABA
            1 x 2*tra1+2*par1*(tra1+1)
      FIN DESARME

   PRODUCTO MOPF






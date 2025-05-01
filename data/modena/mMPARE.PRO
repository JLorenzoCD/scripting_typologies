/* Pa¤o fijo RECTO con zocalo alto PARANTES y TRAVIESAS centrados LINEA MODENA*/
/* travesanio angosto y ancho y marco recto C6216 */

/* Variables auxiliares
   VARIABLE perfil8_h
   VARIABLE perfil8_v

/* Premarco */

PRODUCTO PMMODE


/* *********************************************************** */
                    
/* Marco */
CORTES A 45:
      PERFIL C6216
      1 x m_ancho
CORTES A 90 Y 45:
      2 x m_alto
CORTES A RECTO
      PERFIL C6263
      1 x m_ancho - 51


/* calculo segun el tipo de travesano/parante el descuento del vidrio */
/* si es ancho hay que descontar 10 mm mas que en el angosto */

/* si es angosto 6221 queda como esta, sino le descuento 10 mm por cada lado*/
/* modificado el 9-3-98 con Claudio Naccarelli , tema trav. ancho y angosto */

CALCULOS
	j_desc:=if(tipo_patr=1,25,35)
	dtopt:=if(tipo_patr=1,25,35)
FIN CALCULOS


CORTES A 45:

/* sin parantes ni traviesas */
DESARMAR SOLO SI par1=0 .AND. tra1=0 

    SEGUN contravid PERFIL C6230,C6231,C6217,C6226
  DESARMAR SOLO SI contravid=1 .OR. contravid=2
      /* Horizontales */
         2 x m_ancho-51
      /* Verticales */
         2 x m_alto-51-100

         PERFIL C6237
         1 x m_ancho-51

   FIN DESARME
CORTES A RECTO
  DESARMAR SOLO SI contravid=3 .OR. contravid=4
      /* Horizontales */
         2 x m_ancho-51
      /* Verticales */
         2 x m_alto-51-32-100

         PERFIL C6220
         1 x m_ancho-51

   FIN DESARME


   VIDRIOS
         
         1 de m_ancho-63 x m_alto-63-100

FIN DESARME

   /* Parantes y ningun travesanio */
   DESARMAR SOLO SI tra1=0 .AND. par1!=0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL C6221,C6222
         par1 x m_alto-51-100

      SEGUN contravid PERFIL C6230,C6231,C6217,C6226

	  DESARMAR SOLO SI contravid=1 .OR. contravid=2
			CALCULOS
				perfil8_h:=(m_ancho-51-j_desc*par1)/(1+par1)
                                perfil8_v:=m_alto-51
			FIN CALCULOS

         CORTES A 45:
         /* Horizontales */
            2*(par1+1) x perfil8_h
         /* Verticales */
            2*(par1+1) x perfil8_v-100

         PERFIL C6237
            par1+1 x perfil8_h


      FIN DESARME

   DESARMAR SOLO SI contravid=3 .OR. contravid=4
         CALCULOS
            perfil8_h:=(m_ancho-51-j_desc*par1)/(1+par1)
            perfil8_v:=m_alto-51-32
         FIN CALCULOS

         CORTES A RECTO:
         /* Horizontales */
         2*(par1+1) x perfil8_h
         /* Verticales */
         2*(par1+1) x perfil8_v-100

         PERFIL C6220
            par1+1 x perfil8_h

      FIN DESARME

      VIDRIOS
                CALCULOS
                        auxd:=j_desc+12
                FIN CALCULOS
                        par1+1 de  (m_ancho-63-auxd*par1)/(1+par1) x m_alto-63-100

   FIN DESARME

   /* Travesanios y ningun parante*/
   DESARMAR SOLO SI par1=0 .AND. tra1>0
         CORTES A RECTO:
         SEGUN tipo_patr PERFIL C6221,C6222
         tra1 x m_ancho-51

      SEGUN contravid PERFIL C6230,C6231,C6217,C6226

   DESARMAR SOLO SI contravid=1 .OR. contravid=2
         CALCULOS
            perfil8_h:=m_ancho-51
            perfil8_v:=(m_alto-51-j_desc*tra1)/(1+tra1)
         FIN CALCULOS

         CORTES A 45:
         /* Horizontales */
         2*(tra1+1) x perfil8_h
         /* Verticales */
         2*tra1 x perfil8_v
             2 x perfil8_v-100

         PERFIL C6237
           1 x perfil8_h

   FIN DESARME

 DESARMAR SOLO SI contravid=3 .OR. contravid=4
         CALCULOS
            perfil8_h:=m_ancho-51
            perfil8_v:=(m_alto-51-32-j_desc*tra1-32*tra1)/(1+tra1)
         FIN CALCULOS

         CORTES A RECTO:
         /* Horizontales */
         2*(tra1+1) x perfil8_h
         /* Verticales */
         2*tra1 x perfil8_v
         2 x perfil8_v-100

         PERFIL C6220
           1 x perfil8_h
        
        FIN DESARME

      VIDRIOS
        
	CALCULOS
		auxd := j_desc+12
   FIN CALCULOS
                tra1 de  m_ancho-63 x (m_alto-63-auxd*tra1)/(1+tra1)
                1 de  m_ancho-63 x ((m_alto-63-auxd*tra1)/(1+tra1))-100

   FIN DESARME

   /* Parantes y Travesanios */
   DESARMAR SOLO SI par1!=0 .AND. tra1!=0
         CORTES A RECTO:
	 DESARMAR SOLO SI tipo_tra=1
	    SEGUN tipo_patr PERFIL C6221,C6222
            tra1 x m_ancho-51
            par1 x ((m_alto-51-tra1*j_desc)/(tra1+1))-100
            par1*(tra1) x (m_alto-51-tra1*j_desc)/(tra1+1)
	 FIN DESARME

	 DESARMAR SOLO SI tipo_tra=2
	    SEGUN tipo_patr PERFIL C6221,C6222
        par1 x m_alto-52-100
	tra1*(par1+1) x (m_ancho-51-par1*j_desc)/(par1+1)
	 FIN DESARME

      SEGUN contravid PERFIL C6230,C6231,C6217,C6226

    DESARMAR SOLO SI contravid=1 .OR. contravid=2
         CALCULOS
            perfil8_h:=(m_ancho-51-dtopt*par1)/(1+par1)
            perfil8_v:=(m_alto-51-dtopt*tra1)/(1+tra1)
         FIN CALCULOS

         CORTES A 45:
         /* Horizontales */
         2*(tra1+1)*(par1+1) x perfil8_h
         /* Verticales */
         2*(tra1+1)*(par1) x perfil8_v
         2*(par1+1) x perfil8_v-100

         PERFIL C6237
        par1+1 x perfil8_h

     FIN DESARME

 DESARMAR SOLO SI contravid=3 .OR. contravid=4
         CALCULOS 
           auxd := 32+dtopt
		   FIN CALCULOS	
         CALCULOS
            perfil8_h:=(m_ancho-51-dtopt*par1)/(1+par1)
            perfil8_v:=(m_alto-51-32-auxd*tra1)/(1+tra1)
         FIN CALCULOS

         CORTES A RECTO:
         /* Horizontales */
         2*(tra1+1)*(par1+1) x perfil8_h
         /* Verticales */
         2*(tra1+1)*(par1) x perfil8_v
         2*(par1+1) x perfil8_v-100

         PERFIL C6220
        par1+1 x perfil8_h


    FIN DESARME


      VIDRIOS
	
            CALCULOS
            	auxd:=j_desc+12
               vid_h:=(m_ancho-63-auxd*par1)/(1+par1)
               vid_v:=(m_alto-63-auxd*tra1)/(1+tra1)
            FIN CALCULOS

              (par1+1)*(tra1) de vid_h x vid_v
              par1+1 de vid_h x vid_v-100

            FIN DESARME

/* ACCESORIOS */
      PARTE T20
         1 x 4
      PARTE E69
         1 x 2
      PARTE T1
	 2 x 2+INT((m_ancho-200)/500)
	 2 x 2+INT((m_alto-200)/500)
	DESARMAR SOLO SI taco_reg=1
      PARTE T88
	 2 x 2+INT((m_ancho-200)/500)
	 2 x 2+INT((m_alto-200)/500)
	FIN DESARME
      PARTE B68
	 2 x m_ancho/1000
         2*(tra1) x m_ancho/1000
	 2 x m_alto/1000
         2*(par1) x m_alto/1000
      PARTE B31
	 2 x m_ancho/1000
         2*(tra1) x m_ancho/1000
	 2 x m_alto/1000
         2*(par1) x m_alto/1000

  DESARMAR SOLO SI contravid=1 .OR. contravid=2
      PARTE T96
         2 x INT((m_ancho-200)/300)+par1
         2*tra1 x INT((m_ancho-200)/300)+par1
         2 x INT((m_alto-200)/300)+tra1
         2*par1 x INT((m_alto-200)/300)+tra1
 FIN DESARME
 
      DESARMAR SOLO SI tipo_patr=1      
	      PARTE E71
          1 x 2*tra1+2*(tra1+1)*par1
      FIN DESARME       

      DESARMAR SOLO SI tipo_patr=2
	      PARTE E72
          1 x 2*tra1+2*(tra1+1)*par1
      FIN DESARME       



      M.OBRA 0.5+tra1*0.25+par1*0.25









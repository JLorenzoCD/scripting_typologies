/* PA¥O FIJO LINEA MODENA CON 1/2 PUNTO,1/4 PUNTO ETC. */                                                                                                                                             

PRODUCTO MODE12

CALCULOS
    j_desc:=if(tipo_patr=1,25,35)
    dtopt:=if(tipo_patr=1,25,35)
    e_desc:=25
    d_tra:=if(tipo_patr=1,25,35)
FIN CALCULOS

PARTE CURVA
   1 x precio
	
DESARMAR SOLO SI tipo_arc=1 .OR. tipo_arc=2
/* Marco */
   CORTES A 45:
   PERFIL C6216
      1 x m_ancho
      1 x m_alto
      1 x m_ancho*3.1416/4+500

   CORTES A RECTO:

/* sin parantes ni traviesas */
   DESARMAR SOLO SI par1=0 .AND. tra1=0 

      SEGUN contravid PERFIL C6230,C6231,C6217,C6226

/* Horizontales */
         1 x m_ancho-51
         1 x m_alto-51

/* Verticales */
         1 x m_ancho*3.1416/4+500

         VIDRIOS
            1 de m_ancho-69 x m_alto-69
   FIN DESARME

/* Parantes y ningun travesanio */
   DESARMAR SOLO SI tra1=0 .AND. par1!=0

      CORTES A RECTO:
      SEGUN tipo_patr PERFIL C6221,C6222
         par1 x m_alto-e_desc

   CORTES A 45:
      SEGUN contravid PERFIL C6230,C6231,C6217,C6226

   CALCULOS
      perfil8_h:=((m_ancho*3.1416/4+500)-dtopt*par1)/(1+par1)
     DESARMAR SOLO SI contravid = 3 .OR. contravid = 4
      perfil8_v:=m_alto-51-25
     FIN DESARME
     DESARMAR SOLO SI contravid = 1 .OR. contravid = 2
      perfil8_v:=m_alto-51
     FIN DESARME
   FIN CALCULOS

     DESARMAR SOLO SI contravid = 3 .OR. contravid = 4
      CORTES A RECTO:
     FIN DESARME

/* Horizontales */
         par1+1 x perfil8_h

/* Verticales */
         2*(par1+1) x perfil8_v

      VIDRIOS
   CALCULOS
      auxd:=j_desc+18
   FIN CALCULOS

         par1+1 de  (m_ancho-51-auxd*par1)/(1+par1) x m_alto-69

   FIN DESARME       

/* Travesanios y ningun parante*/
   DESARMAR SOLO SI par1=0 .AND. tra1>0
      CORTES A RECTO:
      SEGUN tipo_patr PERFIL C6221,C6222
         1 x ((m_ancho-e_desc)/2)*3.1416/4+500

      SEGUN contravid PERFIL C6230,C6231,C6217,C6226

   CALCULOS
      perfil8_h:=((m_ancho-e_desc)/2)*3.1416/4+500
      DESARMAR SOLO SI contravid=1 .OR. contravid=2
         perfil8_v:=(m_alto-51-d_tra)/2
      FIN DESARME
      DESARMAR SOLO SI contravid=3 .OR. contravid=4
         perfil8_v:=((m_alto-51-d_tra)/2)-25
      FIN DESARME
   FIN CALCULOS

   DESARMAR SOLO SI contravid=1 .OR. contravid=2
      CORTES A 45:
   FIN DESARME

/* Horizontales */
      2 x perfil8_h
      1 x (m_ancho-e_desc)*3.1416/4+500
/* Verticales */
      2*(tra1+1) x perfil8_v

      VIDRIOS

   CALCULOS
      auxd :=e_desc
   FIN CALCULOS

         1 de  m_ancho-69 x m_alto-69
   FIN DESARME

/* Parantes y Travesanios */
   DESARMAR SOLO SI par1!=0 .AND. tra1!=0
      CORTES A RECTO:
         SEGUN tipo_patr PERFIL C6221,C6222
            1 x ((m_ancho-e_desc)/2)*3.1416/4+500
            par1*(tra1+1) x (m_alto-e_desc-tra1*j_desc)/(tra1+1)

      SEGUN contravid PERFIL C6230,C6231,C6217,C6226
      
   CALCULOS 
      auxd := 25+dtopt
      perfil8_h:=(((m_ancho-e_desc)/2)*3.1416/4+500)/(1+par1)
      DESARMAR SOLO SI contravid=1 .OR. contravid=2
         perfil8_v:=(m_alto-51-auxd*tra1)/2
      FIN DESARME
      DESARMAR SOLO SI contravid=3 .OR. contravid=4
         perfil8_v:=((m_alto-51-auxd*tra1)/2)-25
      FIN DESARME

   FIN CALCULOS

   CORTES A RECTO:
/* Horizontales */
      2*(par1+1) x perfil8_h
      par1+1 x ((m_ancho-e_desc)*3.1416/4+500)/(1+par1)

/* Verticales */
      4*(par1+1) x perfil8_v

   CALCULOS
      auxd:=j_desc+4
      vid_h:=(m_ancho-51-auxd*par1)/(1+par1)
      vid_v:=(m_alto-51-auxd*tra1)/2
   FIN CALCULOS

         VIDRIOS
            1 de m_ancho-51 x m_alto-51
   FIN DESARME
FIN DESARME

DESARMAR SOLO SI tipo_arc=3
   DESARMAR SOLO SI m_alto <= m_ancho/2
/* Marco */
/* MEDIO PUNTO */

	CALCULOS
      pi:=3.1415
      b := m_ancho/2
      r := (b*b + m_alto*m_alto) / (2*m_alto)
      alfa := atan((r-m_alto)/b)
      beta := pi-2*alfa
      e := b/2
      t := m_alto/2
      s := (e*e + t*t) / (2*t)
      gama := atan((s-t)/e)
      delta := pi-2*gama
	FIN CALCULOS

   CORTES A 45:
      PERFIL C6216
         1 x m_ancho
         1 x r*beta+500

      DESARMAR SOLO SI tra1=0 .AND. par1=0
         SEGUN contravid PERFIL C6230,C6231,C6217,C6226
            1 x m_ancho-51
            1 x r*beta+500

         VIDRIOS
            1 de m_ancho-69 x m_alto-69
   
      FIN DESARME

      DESARMAR SOLO SI tra1>0 .AND. par1=0 
         SEGUN tipo_patr PERFIL C6221,C6222
            1 x s*delta+500
   
      SEGUN contravid PERFIL C6230,C6231,C6217,C6226
            1 x r*beta+500
            2 x s*delta+500
            1 x (m_ancho-44)/2
            2 x (m_ancho-44)/4
   
         VIDRIOS
            1 de m_ancho-69 x m_alto-69
   
      FIN DESARME
   
      DESARMAR SOLO SI tra1=0 .AND. par1>0 
         SEGUN tipo_patr PERFIL C6221,C6222
            par1 x m_alto-69
   
      SEGUN contravid PERFIL C6230,C6231,C6217,C6226
            2 x b
            2*par1 x m_alto-70
            par1+1 x (r*beta+500)/(par1+1)
   
         VIDRIOS
            1 de m_ancho-69 x m_alto-69
      FIN DESARME

      DESARMAR SOLO SI tra1>0 .AND. par1>0
         SEGUN tipo_patr PERFIL C6221,C6222
            1 x s*delta+500
            2*par1 x (m_alto-dtopt-e_desc)/2

         SEGUN contravid PERFIL C6230,C6231,C6217,C6226
            2*(tra1+1) x (b-dtopt-e_desc)/tra1+1
            4*par1 x (m_alto-dtopt-e_desc)/tra1+1
            par1+1 x ((r*beta-dtopt-e_desc)/2+500)/par1+1
            2*(par1+1) x ((s*delta-dtopt-e_desc)/2+500)/tra1+1

         VIDRIOS
            1 de m_ancho-69 x m_alto-69

      FIN DESARME
   FIN DESARME
FIN DESARME


DESARMAR SOLO SI flecha>20
/* Marco */
	CALCULOS
      f:=flecha
      pi:=3.1415
      b := m_ancho/2
      r := (b*b + f*f) / (2*f)
      alfa := atan((r-f)/b)
      beta := pi-2*alfa
      e := b/2
      t := f/2
      s := (e*e + t*t) / (2*t)
      gama := atan((s-t)/e)
      delta := pi-2*gama
	FIN CALCULOS

/* MEDIO PUNTO */
DESARMAR SOLO SI flecha!=m_ancho/2
   CORTES A 45:
      PERFIL C6216
         1 x m_ancho
         2 x m_alto-flecha
         1 x r*beta+500
FIN DESARME
DESARMAR SOLO SI flecha=m_ancho/2
   CORTES A 45:
      PERFIL C6216
         1 x m_ancho
         1 x r*beta+2*(m_alto-flecha)+500
FIN DESARME

      DESARMAR SOLO SI tra1=0 .AND. par1=0
         DESARMAR SOLO SI flecha!=m_ancho/2
	   SEGUN contravid PERFIL C6230,C6231,C6217,C6226
            1 x m_ancho-51
            2 x m_alto-flecha
            1 x r*beta
	 FIN DESARME
         DESARMAR SOLO SI flecha=m_ancho/2
	   SEGUN contravid PERFIL C6230,C6231,C6217,C6226
            1 x m_ancho-51
            1 x r*beta+2*(m_alto-flecha)+500
 
	 FIN DESARME

         VIDRIOS
            1 de m_ancho-69 x m_alto-69
   
      FIN DESARME

      DESARMAR SOLO SI tra1>0 .AND. par1=0 
         SEGUN tipo_patr PERFIL C6221,C6222
            1 x m_ancho-51
   
         SEGUN contravid PERFIL C6230,C6231,C6217,C6226
            1 x r*beta+500
            4 x (m_alto-flecha-26)/2
            3 x m_ancho-51
   
         VIDRIOS
            1 de m_ancho-69 x m_alto/2-25-d_tra/2
            1 de m_ancho-69 x m_alto/2-25-d_tra/2
   
      FIN DESARME
   
      DESARMAR SOLO SI tra1=0 .AND. par1>0 
         SEGUN tipo_patr PERFIL C6221,C6222
            par1 x m_alto+flecha-51
   
         SEGUN contravid PERFIL C6230,C6231,C6217,C6226
            par1+1 x (m_ancho-51)/(par1+1)-(dtopt*(par1-1))
            2*par1 x m_alto+flecha
            2 x m_alto-flecha-51
            par1+1 x (r*beta+500)/(par1+1)
   
         VIDRIOS
            par1+1 de (m_ancho-69-d_tra/2)/2 x m_alto-69
      FIN DESARME

      DESARMAR SOLO SI tra1>0 .AND. par1>0
         SEGUN tipo_patr PERFIL C6221,C6222
            1 x m_ancho-51
            (tra1+1)*par1 x ((m_alto+flecha)/2)-dtopt-e_desc

         SEGUN contravid PERFIL C6230,C6231,C6217,C6226
            3*(par1+1) x (m_ancho-51)/par1+1
            2*(tra1+1)*(par1+1) x ((m_alto+flecha)/2)-dtopt-e_desc
            par1+1 x (r*beta-dtopt-e_desc+500)/(par1+1)

         VIDRIOS
            1 de m_ancho-69 x m_alto-69

      FIN DESARME
FIN DESARME


/* ACCESORIOS */

   PARTE E69
      1 x 2
   DESARMAR SOLO SI contravid=1 .OR. contravid=2
   PARTE T96
      2 x 2+INT((m_ancho-200)/500)
      1 x 2+INT((m_alto-200)/500)
      par1 x 2+INT((m_alto-200)/500)
      tra1 x 2+INT((m_ancho-200)/500)
   FIN DESARME

   PARTE I
      2 x 2+INT((m_ancho-200)/500)
      1 x 2+INT((m_alto-200)/500)

   PARTE B68
      2 x m_ancho/1000
      2*(tra1) x m_ancho/1000
      2 x m_alto/1000
      2*(par1) x m_alto/1000

   PARTE UVW
      2 x m_ancho/1000
      2*(tra1) x m_ancho/1000
      2 x m_alto/1000
      2*(par1) x m_alto/1000

   DESARMAR SOLO SI tipo_patr=1
      PARTE E71
   FIN DESARME
   DESARMAR SOLO SI tipo_patr=2
      PARTE E72
   FIN DESARME
      2 x par1
      2 x tra1

   PRODUCTO MOPF




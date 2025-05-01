/* PA¥O FIJO LINEA EKONAL CON 1/2 PUNTO,1/4 PUNTO ETC. */                                                                                                                                             

CALCULOS
    j_desc:=25
    dtopt:=25
    e_desc:=44
FIN CALCULOS

   PARTE CURVA
      1 x precio
 	
DESARMAR SOLO SI tipo_arc=1 .OR. tipo_arc=2
/* Marco */
   CORTES A 45:
   PERFIL 907
      1 x m_ancho
      1 x m_alto
      1 x m_ancho*3.1416/4+500

   CORTES A RECTO:

/* sin parantes ni traviesas */
   DESARMAR SOLO SI par1=0 .AND. tra1=0 

      SEGUN contravid PERFIL 8,78,79,80,177,179,206

/* Horizontales */
         1 x m_ancho-44
         1 x m_alto-44

/* Verticales */
         1 x m_ancho*3.1416/4+500

         VIDRIOS
            1 de m_ancho-52 x m_alto-52
   FIN DESARME

/* Parantes y ningun travesanio */
   DESARMAR SOLO SI tra1=0 .AND. par1!=0

      CORTES A RECTO:
      PERFIL 6560
         par1 x m_alto-e_desc

      SEGUN contravid PERFIL 8,78,79,80,177,179,206

   CALCULOS
      perfil8_h:=((m_ancho*3.1416/4+500)-dtopt*par1)/(1+par1)
      perfil8_v:=m_alto-44-25
   FIN CALCULOS

      CORTES A RECTO:

/* Horizontales */
         par1+1 x perfil8_h

/* Verticales */
         2*(par1+1) x perfil8_v

      VIDRIOS
   CALCULOS
      auxd:=j_desc+9
   FIN CALCULOS

         par1+1 de  (m_ancho-52-auxd*par1)/(1+par1) x m_alto-52

   FIN DESARME       

/* Travesanios y ningun parante*/
   DESARMAR SOLO SI par1=0 .AND. tra1>0
      CORTES A RECTO:
      PERFIL 6560
         1 x ((m_ancho-e_desc)/2)*3.1416/4+500

      SEGUN contravid PERFIL 8,78,79,80,177,179,206

   CALCULOS
      perfil8_h:=((m_ancho-e_desc)/2)*3.1416/4+500
      perfil8_v:=(m_alto-44)/2
   FIN CALCULOS

   CORTES A RECTO:
/* Horizontales */
      2 x perfil8_h
      1 x (m_ancho-e_desc)*3.1416/4+500
/* Verticales */
      2*(tra1+1) x perfil8_v

      VIDRIOS

   CALCULOS
      auxd :=e_desc
   FIN CALCULOS

         1 de  m_ancho-52 x m_alto-52
   FIN DESARME

/* Parantes y Travesanios */
   DESARMAR SOLO SI par1!=0 .AND. tra1!=0
      CORTES A RECTO:
         PERFIL 6560
            1 x ((m_ancho-e_desc)/2)*3.1416/4+500
            par1*(tra1+1) x (m_alto-e_desc-tra1*j_desc)/(tra1+1)

      SEGUN contravid PERFIL 8,78,79,80,177,179,206
      
   CALCULOS 
      auxd := 25+dtopt
      perfil8_h:=(((m_ancho-e_desc)/2)*3.1416/4+500)/(1+par1)
      perfil8_v:=(m_alto-39-25-auxd*tra1)/2
   FIN CALCULOS

   CORTES A RECTO:
/* Horizontales */
      2*(par1+1) x perfil8_h
      par1+1 x ((m_ancho-e_desc)*3.1416/4+500)/(1+par1)

/* Verticales */
      4*(par1+1) x perfil8_v

   CALCULOS
      auxd:=j_desc+4
      vid_h:=(m_ancho-52-auxd*par1)/(1+par1)
      vid_v:=(m_alto-52-auxd*tra1)/2
   FIN CALCULOS

         VIDRIOS
            1 de m_ancho-52 x m_alto-52
   FIN DESARME
FIN DESARME

DESARMAR SOLO SI tipo_arc=3
   DESARMAR SOLO SI m_alto<=m_ancho/2
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
      PERFIL 907
         1 x m_ancho
         1 x r*beta

      DESARMAR SOLO SI tra1=0 .AND. par1=0
         SEGUN contravid PERFIL 8,78,79,80,177,179,206
            1 x m_ancho-44
            1 x r*beta+500

         VIDRIOS
            1 de m_ancho-44 x m_alto-52
   
      FIN DESARME

      DESARMAR SOLO SI tra1>0 .AND. par1=0 
         PERFIL 6560
            1 x s*delta
   
      SEGUN contravid PERFIL 8,78,79,80,177,179,206
            1 x r*beta+500
            2 x s*delta+500
            1 x (m_ancho-44)/2
            2 x (m_ancho-44)/4
   
         VIDRIOS
            1 de m_ancho-44 x m_alto-52
   
      FIN DESARME
   
      DESARMAR SOLO SI tra1=0 .AND. par1>0 
         PERFIL 6560
            par1 x m_alto-44
   
      SEGUN contravid PERFIL 8,78,79,80,177,179,206
            2 x b
            2*par1 x m_alto-70
            par1+1 x r*beta/(par1+1)
   
         VIDRIOS
            1 de m_ancho-44 x m_alto-52
      FIN DESARME

      DESARMAR SOLO SI tra1>0 .AND. par1>0
         PERFIL 6560
            1 x s*delta+500
            2*par1 x (m_alto-dtopt-e_desc)/2

         SEGUN contravid PERFIL 8,78,79,80,177,179,206
            2*(tra1+1) x (b-dtopt-e_desc)/tra1+1
            4*par1 x (m_alto-dtopt-e_desc)/tra1+1
            par1+1 x ((r*beta-dtopt-e_desc)/2+500)/par1+1
            2*(par1+1) x ((s*delta-dtopt-e_desc)/2+500)/tra1+1

         VIDRIOS
            1 de m_ancho-44 x m_alto-52

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
   CORTES A 45:
      PERFIL 907
         1 x m_ancho
         2 x m_alto-flecha
         1 x r*beta+500

      DESARMAR SOLO SI tra1=0 .AND. par1=0
         SEGUN contravid PERFIL 8,78,79,80,177,179,206
            1 x m_ancho-44
            2 x m_alto-flecha
            1 x r*beta+500

         VIDRIOS
            1 de m_ancho-44 x m_alto-52
   
      FIN DESARME

      DESARMAR SOLO SI tra1>0 .AND. par1=0 
         PERFIL 6560
            1 x m_ancho-44
   
         SEGUN contravid PERFIL 8,78,79,80,177,179,206
            1 x r*beta+500
            4 x (m_alto-flecha-22)/2
            3 x m_ancho-44
   
         VIDRIOS
            1 de m_ancho-44 x m_alto-52
   
      FIN DESARME
   
      DESARMAR SOLO SI tra1=0 .AND. par1>0 
         PERFIL 6560
            par1 x m_alto+flecha-44
   
         SEGUN contravid PERFIL 8,78,79,80,177,179,206
            par1+1 x (m_ancho-44)/(par1+1)-(dtopt*(par1-1))
            2*par1 x m_alto+flecha
            2 x m_alto-flecha-44
            par1+1 x (r*beta+500)/(par1+1)
   
         VIDRIOS
            1 de m_ancho-52 x m_alto-52
      FIN DESARME

      DESARMAR SOLO SI tra1>0 .AND. par1>0
         PERFIL 6560
            1 x m_ancho-44
            (tra1+1)*par1 x ((m_alto+flecha)/2)-dtopt-e_desc

         SEGUN contravid PERFIL 8,78,79,80,177,179,206
            3*(par1+1) x (m_ancho-44)/par1+1
            2*(tra1+1)*(par1+1) x ((m_alto+flecha)/2)-dtopt-e_desc
            par1+1 x (r*beta-dtopt-e_desc+500)/(par1+1)
                                         
         VIDRIOS
            1 de m_ancho-52 x m_alto-52

      FIN DESARME
FIN DESARME


/* ACCESORIOS */

   PARTE A
      1 x 2
   PARTE D
      1 x 8
   PARTE I
      2 x 2+INT((m_ancho-200)/500)
      1 x 2+INT((m_alto-200)/500)
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
      4 x 2
   DESARMAR SOLO SI tipo_patr=2
      PARTE ABA
         2 x par1
         2 x tra1*par1
   FIN DESARME

   PRODUCTO MOPF




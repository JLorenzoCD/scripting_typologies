
/* Variables auxiliares */
   VARIABLE perfil8_h
   VARIABLE perfil8_v

/* *********************************************************** */
CALCULOS
   a := (m_alto-m_alto_d)*(m_alto-m_alto_d)
   b := m_ancho*m_ancho
   tra1:=0
   par1:=0

	DESARMAR SOLO SI m_alto_d>m_alto
   m_alto:=m_alto_d
   m_alto_d:=m_alto
   FIN DESARME
FIN CALCULOS

/* Marco */
CORTES A 45:
      PERFIL 7
      1 x sqrt (a+b)
      1 x m_ancho
      1 x m_alto
      1 x m_alto_d

CALCULOS
    j_desc:=if(tipo_patr=1,22,30)
    dtopt:=if(tipo_patr=1,22,30)
    e_desc:=if(tipo_patr=1,44,39)
   
FIN CALCULOS

CORTES A RECTO:

/* sin parantes ni traviesas */
DESARMAR SOLO SI par1=0  

    SEGUN contravid PERFIL 8,78,79,80,177,179,206
      /* Horizontales */
         1 x sqrt (a+b)-44
         1 x m_ancho-44
      /* Verticales */
         1 x m_alto-69
         1 x m_alto_d-69

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
DESARMAR SOLO SI par1!=0
         CALCULOS
   DESARMAR SOLO SI par1=1
            perfil8_h:=(m_ancho-44-dtopt*par1)/2
   FIN DESARME
   DESARMAR SOLO SI par1=2
            perfil8_h:=(m_ancho-44-dtopt*par1)/3
   FIN DESARME
   DESARMAR SOLO SI par1=3
            perfil8_h:=(m_ancho-44-dtopt*par1)/4
   FIN DESARME
   DESARMAR SOLO SI par1=4
            perfil8_h:=(m_ancho-44-dtopt*par1)/5
   FIN DESARME

            perfil8_v:=m_alto-44-25
            ah := m_alto-m_alto_d
            a := perfil8_h*ah/m_ancho
         FIN CALCULOS

         CORTES A RECTO:
         SEGUN tipo_patr PERFIL 687,94

   DESARMAR SOLO SI par1=1
            1 x m_alto-e_desc-a
   FIN DESARME
   DESARMAR SOLO SI par1=2
            1 x m_alto-e_desc-a
            1 x m_alto-e_desc-2*a
   FIN DESARME
   DESARMAR SOLO SI par1=3
            1 x m_alto-e_desc-a
            1 x m_alto-e_desc-2*a
            1 x m_alto-e_desc-3*a
   FIN DESARME
   DESARMAR SOLO SI par1=4
            1 x m_alto-e_desc-a
            1 x m_alto-e_desc-2*a
            1 x m_alto-e_desc-3*a
            1 x m_alto-e_desc-4*a
   FIN DESARME
   DESARMAR SOLO SI par1=5
            1 x m_alto-e_desc-a
            1 x m_alto-e_desc-2*a
            1 x m_alto-e_desc-3*a
            1 x m_alto-e_desc-4*a
            1 x m_alto-e_desc-5*a
   FIN DESARME

      SEGUN contravid PERFIL 8,78,79,80,177,179,206

         CORTES A RECTO:
         /* Horizontales */
         par1+1 x perfil8_h
         par1+1 x (sqrt (a+b)-44)/(par1+1)
         /* Verticales */
       DESARMAR SOLO SI m_alto_d>50
         1 x m_alto_d-44
       FIN DESARME
         1 x m_alto-44
   DESARMAR SOLO SI par1=1
            2 x m_alto-e_desc-a
   FIN DESARME
   DESARMAR SOLO SI par1=2
            2 x m_alto-e_desc-a
            2 x m_alto-e_desc-2*a
   FIN DESARME
   DESARMAR SOLO SI par1=3
            2 x m_alto-e_desc-a
            2 x m_alto-e_desc-2*a
            2 x m_alto-e_desc-3*a
   FIN DESARME
   DESARMAR SOLO SI par1=4
            2 x m_alto-e_desc-a
            2 x m_alto-e_desc-2*a
            2 x m_alto-e_desc-3*a
            2 x m_alto-e_desc-4*a
   FIN DESARME
   DESARMAR SOLO SI par1=5
            2 x m_alto-e_desc-a
            2 x m_alto-e_desc-2*a
            2 x m_alto-e_desc-3*a
            2 x m_alto-e_desc-4*a
            2 x m_alto-e_desc-5*a
   FIN DESARME

      VIDRIOS
			CALCULOS
                auxd:=j_desc+9
			FIN CALCULOS
   DESARMAR SOLO SI tipo_rev=1
      DESARMAR SOLO SI par1=0
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52
      FIN DESARME
      DESARMAR SOLO SI par1=1
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52-a
      FIN DESARME
      DESARMAR SOLO SI par1=2
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52-a
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52-2*a
      FIN DESARME
      DESARMAR SOLO SI par1=3
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52-a
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52-2*a
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52-3*a
      FIN DESARME
      DESARMAR SOLO SI par1=4
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52-a
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52-2*a
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52-3*a
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52-4*a
      FIN DESARME
      DESARMAR SOLO SI par1=5
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52-a
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52-2*a
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52-3*a
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52-4*a
         1 de (m_ancho-52-auxd*par1)/(par1+1) x m_alto-52-5*a
      FIN DESARME

   FIN DESARME
   DESARMAR SOLO SI tipo_rev=2 
          PRODUCTO REVET , par1+1 de (m_ancho-52-auxd*par1)/(1+par1) x m_alto-52
   FIN DESARME
   DESARMAR SOLO SI tipo_rev=3
          PRODUCTO REV688, par1+1 de (m_ancho-52-auxd*par1)/(1+par1) x m_alto-52
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
   2 x m_alto/1000
   2*(par1) x m_alto/1000
PARTE UVW
   2 x m_ancho/1000
   2 x m_alto/1000
   2*(par1) x m_alto/1000
PARTE I
   4 x par1


      PRODUCTO MOPF






/* hecha el  14/11/94  */
/* Panio fijo Linea Kicsa C/ PERFILES 700/711*/
/*PAÑO FIJO PARA FRENTE DE VIDRIERA CON PARANTES Y TRAVESAÑOS CENTRADOS 19/01/99.*/
DESARMAR SOLO SI corte=1
   CORTES A RECTO:
   PERFIL 711
               2 x m_ancho-80
               2 x m_alto
FIN DESARME
DESARMAR SOLO SI corte=2
   CORTES A 45:
   PERFIL 711
               2 x m_ancho
               2 x m_alto
FIN DESARME
   CORTES A RECTO:
   
   /* Panio Fijo Comun */
DESARMAR SOLO SI tra1=0 .AND. par1=0
	SEGUN contravid PERFIL 8,78,79,80,177,179,206
               2 x m_ancho-84
               2 x m_alto-109
      VIDRIOS
               1 de m_ancho-90 x m_alto-90

    /* Accesorios */

       PARTE ABA
          2 x 4
       PARTE D   
          1 x 64
       PARTE T   
          2 x m_ancho/1000
          2 x m_alto/1000
       PARTE UVW 
          2 x m_ancho/1000
          2 x m_alto/1000

FIN DESARME

   /* Parantes y ningun travesanio */

DESARMAR SOLO SI tra1=0 .AND. par1!=0
      PERFIL 700
           par1 x m_alto-80

	SEGUN contravid PERFIL 8,78,79,80,177,179,206

         CALCULOS
            perfil8_h:=(m_ancho-84-45*par1)/(1+par1)
            perfil8_v:=m_alto-109
         FIN CALCULOS

         /* Horizontales */
         2*(par1+1) x perfil8_h
         /* Verticales */
         2*(par1+1) x perfil8_v

      VIDRIOS
            par1+1 de  (m_ancho-90-52*par1)/(1+par1) x m_alto-90

   /* Accesorios */

       PARTE U9040
          2 x 4
       PARTE D
          1 x 64
       PARTE ABA
          2 x par1
       PARTE I
          4 x par1
       PARTE T
          2 x m_ancho/1000
          2 x m_alto/1000
          2*(par1) x m_alto/1000
       PARTE UVW
          2 x m_ancho/1000
          2 x m_alto/1000
          2*(par1) x m_alto/1000


FIN DESARME

   /* Travesanios y ningun parante*/

DESARMAR SOLO SI par1=0 .AND. tra1>0

      PERFIL 700
         tra1 x m_ancho-80

	SEGUN contravid PERFIL 8,78,79,80,177,179,206

         CALCULOS
            perfil8_h:=m_ancho-84
            perfil8_v:=(m_alto-109-70*tra1)/(1+tra1)
         FIN CALCULOS

         /* Horizontales */
         2*(tra1+1) x perfil8_h
         /* Verticales */
         2*(tra1+1) x perfil8_v

      VIDRIOS
         tra1+1 de  m_ancho-90 x (m_alto-90-52*tra1)/(1+tra1) 

   /* Accesorios */

       PARTE U9040
          2 x 4
       PARTE D
          1 x 64
       PARTE ABA
          2 x tra1
       PARTE I
          4 x tra1
       PARTE T
          2 x m_ancho/1000
          2*(tra1) x m_ancho/1000
          2 x m_alto/1000
       PARTE UVW
          2 x m_ancho/1000
          2*(tra1) x m_ancho/1000
          2 x m_alto/1000



FIN DESARME

   /* Parantes y Travesanios */

DESARMAR SOLO SI par1!=0 .AND. tra1!=0
      PERFIL 700
        DESARMAR SOLO SI tipo_tra=1
         tra1 x m_ancho-80
         par1*(tra1+1) x (m_alto-80-tra1*40)/(tra1+1)
        FIN DESARME
        DESARMAR SOLO SI tipo_tra=2
         par1 x m_alto-80
         tra1*(par1+1) x (m_ancho-80-par1*40)/(par1+1)
        FIN DESARME


	SEGUN contravid PERFIL 8,78,79,80,177,179,206

         CALCULOS
            perfil8_h:=(m_ancho-84-45*par1)/(1+par1)
            perfil8_v:=(m_alto-109-70*tra1)/(1+tra1)
         FIN CALCULOS

         /* Horizontales */
         2*(tra1+1)*(par1+1) x perfil8_h
         /* Verticales */
         2*(tra1+1)*(par1+1) x perfil8_v

      VIDRIOS
                    CALCULOS
               vid_h:=(m_ancho-90-52*par1)/(1+par1)
               vid_v:=(m_alto-90-52*tra1)/(1+tra1)
                    FIN CALCULOS
            (par1+1)*(tra1+1) de vid_h x vid_v


   /* Accesorios */

       PARTE U9040
          2 x 4
       PARTE D
          1 x 64
       PARTE U9040
          1 x 2*tra1+2*(tra1+1)*par1
       PARTE I
          2 x 2*tra1+2*(tra1+1)*par1
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


FIN DESARME



PRODUCTO MOPF




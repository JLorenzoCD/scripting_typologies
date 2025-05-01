/* PUERTA CON BISAGRA ENCOLIZADA */
CALCULOS
xtra:=0
par1:=0
FIN CALCULOS

/* Marco */
DESARMAR SOLO SI umbral = 0
PERFIL 524
   CORTES A 45:
       1 x m_ancho
   CORTES A 90 Y 45:
       2 x m_alto
FIN DESARME

DESARMAR SOLO SI umbral = 1
   CORTES A 45:
      PERFIL 524
          2 x m_ancho
          2 x m_alto
   CORTES A RECTO:
      PERFIL 215
         1 x m_ancho-70
FIN DESARME
/*DESARMAR SOLO SI jamba=2
CALCULOS
   j_desc:=if(jamba=1,0,24)
FIN CALCULOS
/*FIN DESARME

CORTES A RECTO:


DESARMAR SOLO SI n_hojas=1

    /* Hojas */

   PERFIL 510
      2 x m_ancho-171-j_desc

   DESARMAR SOLO SI umbral = 0
      SEGUN jamba PERFIL 509,6350
         /* Batiente */
          2 x m_alto-34
      PERFIL 511
         2 x m_alto-34
   FIN DESARME
   DESARMAR SOLO SI umbral = 1
      SEGUN jamba PERFIL 509,6350
         /* Batiente */
          2 x m_alto-54
      PERFIL 511
         2 x m_alto-54
   FIN DESARME
    
       /* Travesanios intermedios opcionales */
       PERFIL 510
          /* Travesanios Horizontales tra1, tra2 medidas al eje*/
          DESARMAR SOLO SI tra1>0 .AND. tra2=0
             1 x m_ancho-171-j_desc
          FIN DESARME
    
          DESARMAR SOLO SI tra1>0 .AND. tra2>0
            2 x m_ancho-171-j_desc
          FIN DESARME
    
      /* Contravidrios */
   DESARMAR SOLO SI jamba=1
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         DESARMAR SOLO SI umbral = 0
            PERFIL 507
               4 x m_alto-169
            PARTE LK
              4 x 2+INT((m_alto-169-100)/300)
         FIN DESARME
         DESARMAR SOLO SI umbral = 1
            PERFIL 507
               4 x m_alto-190
            PARTE LK
              4 x 2+INT((m_alto-190-100)/300)
         FIN DESARME
      FIN DESARME
    
    
       /* 1 travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         DESARMAR SOLO SI umbral = 0
            PERFIL 507
               4 x tra1-34-76
               4 x m_alto-tra1-34-97
            PARTE LK
               4 x 2+INT((tra1-34-76-100)/300)
               4 x 2+INT((m_alto-tra1-34-97-100)/300)
         FIN DESARME
         DESARMAR SOLO SI umbral = 1
            PERFIL 507
               4 x tra1-34-97
               4 x m_alto-tra1-34-97
            PARTE LK
               4 x 2+INT((tra1-34-97-100)/300)
               4 x 2+INT((m_alto-tra1-34-97-100)/300)
         FIN DESARME
      FIN DESARME
       /* 2 travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra2>0
         DESARMAR SOLO SI umbral = 0
            PERFIL 507
               4 x tra1-34-76
               4 x tra2-tra1-68
               4 x m_alto-tra2-34-97
           PARTE LK
               4 x 2+INT((tra1-34-76-100)/300)
               4 x 2+INT((tra2-tra1-68-100)/300)
               4 x 2+INT((m_alto-tra2-34-97-100)/300)
         FIN DESARME
         DESARMAR SOLO SI umbral = 1
            PERFIL 507
               4 x tra1-34-97
               4 x tra2-tra1-68
               4 x m_alto-tra2-34-97
           PARTE LK
               4 x 2+INT((tra1-34-97-100)/300)
               4 x 2+INT((tra2-tra1-68-100)/300)
               4 x 2+INT((m_alto-tra2-34-97-100)/300)
         FIN DESARME
      FIN DESARME
   FIN DESARME 
           /* Sin travesanios */
   DESARMAR SOLO SI tra1=0 .AND. tra2=0
      DESARMAR SOLO SI tipo_rev = 1
         VIDRIOS
            DESARMAR SOLO SI umbral = 0
               1 de m_ancho-178 x m_alto-154
            FIN DESARME
            DESARMAR SOLO SI umbral = 1
               1 de m_ancho-178 x m_alto-174
            FIN DESARME
      FIN DESARME
      DESARMAR SOLO SI tipo_rev = 2 .OR. tipo_rev =3
         DESARMAR SOLO SI umbral = 0
            CALCULOS
               m_aux_ancho:=m_ancho
               m_ancho:=m_aux_ancho-178
               m_aux_alto:=m_alto
               m_alto:=m_alto-154
            FIN CALCULOS
         FIN DESARME
         DESARMAR SOLO SI umbral = 1
            CALCULOS
               m_aux_ancho:=m_ancho
               m_ancho:=m_aux_ancho-178
               m_aux_alto:=m_alto
               m_alto:=m_alto-154
            FIN CALCULOS
         FIN DESARME
         DESARMAR SOLO SI tipo_rev = 2
            PRODUCTO REVET
         FIN DESARME
         DESARMAR SOLO SI tipo_rev = 3
            PRODUCTO REV688
         FIN DESARME
         CALCULOS
            m_ancho:=m_aux_ancho
            m_alto:=m_aux_alto
         FIN CALCULOS
      FIN DESARME
   FIN DESARME

   /* 1 travesanio */
   DESARMAR SOLO SI tra1>0 .AND. tra2=0
      DESARMAR SOLO SI tipo_rev = 1
         DESARMAR SOLO SI umbral = 0
            VIDRIOS
               1 de m_ancho-178 x tra1-34-75+18
         FIN DESARME
         DESARMAR SOLO SI umbral = 1
            VIDRIOS
               1 de m_ancho-176 x tra1-34-96+18
         FIN DESARME
      FIN DESARME
      DESARMAR SOLO SI tipo_rev = 2 .OR. tipo_rev=3
         DESARMAR SOLO SI umbral = 0
            CALCULOS
               m_aux_ancho:=m_ancho
               m_ancho:=m_aux_ancho-178
               m_aux_alto:=m_alto
               m_alto:=tra1-35-75+18
            FIN CALCULOS
         FIN DESARME
         DESARMAR SOLO SI umbral = 1
            CALCULOS
               m_aux_ancho:=m_ancho
               m_ancho:=m_aux_ancho-178
               m_aux_alto:=m_alto
               m_alto:=tra1-34-96+18
            FIN CALCULOS
         FIN DESARME
         DESARMAR SOLO SI tipo_rev = 2
            PRODUCTO REVET
         FIN DESARME
         DESARMAR SOLO SI tipo_rev = 3
            PRODUCTO REV688
         FIN DESARME
         CALCULOS
            m_ancho:=m_aux_ancho
            m_alto:=m_aux_alto
         FIN CALCULOS
      FIN DESARME

      PANELES
         1 de m_ancho-178 x m_alto-tra1-34-96+18
   FIN DESARME


    /* 2 travesanios */
   DESARMAR SOLO SI tra1>0 .AND. tra2>0
      DESARMAR SOLO SI tipo_rev = 1
         DESARMAR SOLO SI umbral = 0
            VIDRIOS
               1 de m_ancho-178 x tra1-34-76+18
         FIN DESARME
         DESARMAR SOLO SI umbral = 1
            VIDRIOS
               1 de m_ancho-178 x tra1-34-96+18
         FIN DESARME
      FIN DESARME
      DESARMAR SOLO SI tipo_rev = 2 .OR. tipo_rev=3
         DESARMAR SOLO SI umbral = 0
            CALCULOS
               m_aux_ancho:=m_ancho
               m_ancho:=m_aux_ancho-178
               m_aux_alto:=m_alto
               m_alto:=tra1-34-76+18
            FIN CALCULOS
         FIN DESARME
         DESARMAR SOLO SI umbral = 1
            CALCULOS
               m_aux_ancho:=m_ancho
               m_ancho:=m_aux_ancho-178
               m_aux_alto:=m_alto
               m_alto:=tra1-34-96+18
            FIN CALCULOS
         FIN DESARME
         DESARMAR SOLO SI tipo_rev = 2
            PRODUCTO REVET
         FIN DESARME
         DESARMAR SOLO SI tipo_rev = 3
            PRODUCTO REV688
         FIN DESARME
         CALCULOS
            m_ancho:=m_aux_ancho
            m_alto:=m_aux_alto
         FIN CALCULOS
      FIN DESARME
      PANELES
         1 de m_ancho-178 x tra2-tra1-68+18
      OTROS INTERIORES
         1 de m_ancho-178 x m_alto-tra2-34-96+18
   FIN DESARME

        /* Accesorios */
         DESARMAR SOLO SI umbral = 0
            PARTE A
               1 x 2
            PARTE D
               1 x 16
         FIN DESARME
         DESARMAR SOLO SI umbral = 1
            PARTE A
               1 x 4
            PARTE D
               1 x 32
         FIN DESARME

         PARTE C56
            1 x 3

         PARTE LM
            DESARMAR SOLO SI tra1=0 .AND. tra2=0
               4 x (m_ancho-150)/1000
            FIN DESARME
            DESARMAR SOLO SI tra1>0 .AND. tra2=0
               8 x (m_ancho-150)/1000
            FIN DESARME
            DESARMAR SOLO SI tra1>0 .AND. tra2>0
               12 x (m_ancho-150)/1000
            FIN DESARME

         PARTE T
            2 x (m_alto-130)/1000

         PARTE UVW
            2 x (m_alto-130)/1000

         PARTE LD
            1 x m_ancho/1000
            2 x m_alto/1000

         /* Cerradura */
         SEGUN tipo_cerr PARTE P320,3001
             1 x 1
       DESARMAR SOLO SI manijon>1
         SEGUN manijon PARTE nada,MANICU,MANIJO,MANIJU,DOR375
             1 x 2
       FIN DESARME
      DESARMAR SOLO SI cierra_p=1
       PARTE CIEPTA
             1 x 1
      FIN DESARME
       DESARMAR SOLO SI caja_p=1
             1 x H75
       FIN DESARME
         PARTE MANIJA
             1 x 1

         /* Tornillos de sujecion */
         PARTE C53
            DESARMAR SOLO SI tra1=0 .AND. tra2=0
               1 x 4
            FIN DESARME
            DESARMAR SOLO SI tra1>0 .AND. tra2=0
               1 x 6 
            FIN DESARME
            DESARMAR SOLO SI tra1>0 .AND. tra2>0
               1 x 8 
            FIN DESARME


FIN DESARME 

                    /* PUERTAS DE DOS HOJAS */
DESARMAR SOLO SI n_hojas=2
    
    /* Hojas */
    
    PERFIL 510
       4 x (m_ancho-168-124-j_desc*2)/2
    SEGUN jamba PERFIL 509,6350
       /* Batiente */
       4 x m_alto-32
    DESARMAR SOLO SI umbral = 0
       PERFIL 511
          2 x m_alto-32
       PERFIL 519
          2 x m_alto-32
   FIN DESARME
    DESARMAR SOLO SI umbral = 1
       PERFIL 511
          2 x m_alto-54
       PERFIL 519
          2 x m_alto-54
   FIN DESARME
    
       /* Travesanios intermedios opcionales */
       PERFIL 510
          /* Travesanios Horizontales tra1, tra2 medidas al eje*/
          DESARMAR SOLO SI tra1>0 .AND. tra2=0
             2 x (m_ancho-168-124-j_desc*2)/2
          FIN DESARME
    
          DESARMAR SOLO SI tra1>0 .AND. tra2>0
            4 x (m_ancho-168-124-j_desc*2)/2
          FIN DESARME
    
    
      /* Contravidrios */
   DESARMAR SOLO SI jamba=1
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         DESARMAR SOLO SI umbral = 0
            PERFIL 507
              8 x m_alto-168
            PARTE LK
              8 x 2+INT((m_alto-168-100)/300)
         FIN DESARME
         DESARMAR SOLO SI umbral = 1
            PERFIL 507
              8 x m_alto-190
            PARTE LK
              8 x 2+INT((m_alto-190-100)/300)
         FIN DESARME
      FIN DESARME
    
    
       /* 1 travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
        DESARMAR SOLO SI umbral = 0
           PERFIL 507
              8 x tra1-34-75
              8 x m_alto-tra1-35-97
           PARTE LK
              8 x 2+INT((tra1-34-75-100)/300)
              8 x 2+INT((m_alto-tra1-34-97-100)/300)
         FIN DESARME
        DESARMAR SOLO SI umbral = 1
           PERFIL 507
              8 x tra1-34-95
              8 x m_alto-tra1-35-97
           PARTE LK
              8 x 2+INT((tra1-34-95-100)/300)
              8 x 2+INT((m_alto-tra1-34-97-100)/300)
         FIN DESARME
      FIN DESARME
    
       /* 2 travesanio */
       DESARMAR SOLO SI tra1>0 .AND. tra2>0
         DESARMAR SOLO SI umbral = 0
             PERFIL 507
                8 x tra1-34-75
                8 x tra2-tra1-70
                8 x m_alto-tra2-34-97
             PARTE LK
                8 x 2+INT((tra1-34-73-100)/300)
                8 x 2+INT((tra2-tra1-68-100)/300)
                8 x 2+INT((m_alto-tra2-34-95-100)/300)
         FIN DESARME
         DESARMAR SOLO SI umbral = 1
             PERFIL 507
                8 x tra1-34-95
                8 x tra2-tra1-70
                8 x m_alto-tra2-34-97
             PARTE LK
                8 x 2+INT((tra1-34-95-100)/300)
                8 x 2+INT((tra2-tra1-68-100)/300)
                8 x 2+INT((m_alto-tra2-34-95-100)/300)
         FIN DESARME
      FIN DESARME
   FIN DESARME
       
   /* Sin travesanios */
   DESARMAR SOLO SI tra1=0 .AND. tra2=0
      DESARMAR SOLO SI tipo_rev = 1
         DESARMAR SOLO SI umbral = 0
            VIDRIOS
             2 de (m_ancho-176-132)/2 x m_alto-141
         FIN DESARME
         DESARMAR SOLO SI umbral = 1
            VIDRIOS
             2 de (m_ancho-176-132)/2 x m_alto-164
         FIN DESARME
      FIN DESARME
      DESARMAR SOLO SI tipo_rev = 2 .OR. tipo_rev =3
         DESARMAR SOLO SI umbral = 0
            CALCULOS
               m_aux_ancho:=m_ancho
               m_ancho:=(m_aux_ancho-176-132)/2
               m_aux_alto:=m_alto
               m_alto:=m_alto-141
            FIN CALCULOS
         FIN DESARME
         DESARMAR SOLO SI umbral = 1
            CALCULOS
               m_aux_ancho:=m_ancho
               m_ancho:=(m_aux_ancho-176-132)/2
               m_aux_alto:=m_alto
               m_alto:=m_alto-164
            FIN CALCULOS
         FIN DESARME
         DESARMAR SOLO SI tipo_rev = 2
            PRODUCTO REVET
            PRODUCTO REVET
         FIN DESARME
         DESARMAR SOLO SI tipo_rev = 3
            PRODUCTO REV688
            PRODUCTO REV688
         FIN DESARME
         CALCULOS
            m_ancho:=m_aux_ancho
            m_alto:=m_aux_alto
         FIN CALCULOS
      FIN DESARME
   FIN DESARME
    
   /* 1 travesanio */
   DESARMAR SOLO SI tra1>0 .AND. tra2=0
      DESARMAR SOLO SI tipo_rev = 1
         DESARMAR SOLO SI umbral = 0
            VIDRIOS
               2 de (m_ancho-176-132)/2 x tra1-35-75+22
         FIN DESARME
         DESARMAR SOLO SI umbral = 1
            VIDRIOS
               2 de (m_ancho-176-132)/2 x tra1-35-95+22
         FIN DESARME
      FIN DESARME
      DESARMAR SOLO SI tipo_rev = 2 .OR. tipo_rev=3
         DESARMAR SOLO SI umbral = 0
            CALCULOS
               m_aux_ancho:=m_ancho
               m_ancho:=(m_aux_ancho-176-132)/2
               m_aux_alto:=m_alto
               m_alto:=tra1-35-75+22
            FIN CALCULOS
         FIN DESARME
         DESARMAR SOLO SI umbral = 1
            CALCULOS
               m_aux_ancho:=m_ancho
               m_ancho:=(m_aux_ancho-176-132)/2
               m_aux_alto:=m_alto
               m_alto:=tra1-35-95+22
            FIN CALCULOS
         FIN DESARME
         DESARMAR SOLO SI tipo_rev = 2
            PRODUCTO REVET
            PRODUCTO REVET
         FIN DESARME
         DESARMAR SOLO SI tipo_rev = 3
            PRODUCTO REV688
            PRODUCTO REV688
         FIN DESARME
         CALCULOS
            m_ancho:=m_aux_ancho
            m_alto:=m_aux_alto
         FIN CALCULOS
      FIN DESARME

      PANELES
         2 de (m_ancho-176-132)/2 x m_alto-tra1-35-97+22
   FIN DESARME


    /* 2 travesanios */
   DESARMAR SOLO SI tra1>0 .AND. tra2>0
      DESARMAR SOLO SI tipo_rev = 1
         DESARMAR SOLO SI umbral = 0
            VIDRIOS
               2 de (m_ancho-176-132)/2 x tra1-35-75+22
         FIN DESARME
         DESARMAR SOLO SI umbral = 1
            VIDRIOS
               2 de (m_ancho-176-132)/2 x tra1-35-95+22
         FIN DESARME
      FIN DESARME
      DESARMAR SOLO SI tipo_rev = 2 .OR. tipo_rev=3
         DESARMAR SOLO SI umbral = 0
            CALCULOS
               m_aux_ancho:=m_ancho
               m_ancho:=(m_aux_ancho-176-132)/2
               m_aux_alto:=m_alto
               m_alto:=tra1-35-75+22
            FIN CALCULOS
         FIN DESARME
         DESARMAR SOLO SI umbral = 1
            CALCULOS
               m_aux_ancho:=m_ancho
               m_ancho:=(m_aux_ancho-176-132)/2
               m_aux_alto:=m_alto
               m_alto:=tra1-35-95+22
            FIN CALCULOS
         FIN DESARME
         DESARMAR SOLO SI tipo_rev = 2
            PRODUCTO REVET
            PRODUCTO REVET
         FIN DESARME
         DESARMAR SOLO SI tipo_rev = 3
            PRODUCTO REV688
            PRODUCTO REV688
         FIN DESARME
         CALCULOS
            m_ancho:=m_aux_ancho
            m_alto:=m_aux_alto
         FIN CALCULOS
      FIN DESARME
      PANELES
         2 de (m_ancho-176-132)/2 x tra2-tra1-68+22
      OTROS INTERIORES
         2 de (m_ancho-176-132)/2 x m_alto-tra2-34-95+22
   FIN DESARME
    
        /* Accesorios */
         DESARMAR SOLO SI umbral = 0
            PARTE A
               1 x 2
            PARTE D
               1 x 16
         FIN DESARME
         DESARMAR SOLO SI umbral = 1
            PARTE A
               1 x 4
            PARTE D
               1 x 32
         FIN DESARME

         PARTE LM
            DESARMAR SOLO SI tra1=0 .AND. tra2=0
               4 x (m_ancho-150-110)/1000
            FIN DESARME
            DESARMAR SOLO SI tra1>0 .AND. tra2=0
               8 x (m_ancho-150-110)/1000
            FIN DESARME
            DESARMAR SOLO SI tra1>0 .AND. tra2>0
               12 x (m_ancho-150-110)/1000
            FIN DESARME

         PARTE T
            4 x (m_alto-130)/1000

         PARTE UVW
            4 x (m_alto-130)/1000
	 PARTE C56
            2 x 3		
         PARTE LD
            1 x m_ancho/1000
            2 x m_alto/1000

         /* Cerradura */
         SEGUN tipo_cerr PARTE P320,3001,ANDIF
            1 x 1
        DESARMAR SOLO SI manijon>1
        SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
            1 x 2
        FIN DESARME
         /* Manija */
        PARTE MANIJA
            1 x 1
       DESARMAR SOLO SI cierra_p=1
        PARTE CIEPTA
            1 x 2
       FIN DESARME
       DESARMAR SOLO SI caja_p=1
            2 x H75
       FIN DESARME
         /* Tornillos de sujecion */
         PARTE C53
            DESARMAR SOLO SI tra1=0 .AND. tra2=0
               2 x 4
            FIN DESARME
            DESARMAR SOLO SI tra1>0 .AND. tra2=0
               2 x 6 
            FIN DESARME
            DESARMAR SOLO SI tra1>0 .AND. tra2>0
               2 x 8 
            FIN DESARME

         PARTE PASADO
            1 x 2


FIN DESARME


PRODUCTO MOPUER



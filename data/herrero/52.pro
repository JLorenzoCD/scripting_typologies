
* PUERTA CON BISAGRA ENCOLIZADA PARA TABIQUE */

CALCULOS
   xtra:=0
   par1:=0
FIN CALCULOS

/* Marco */
PERFIL 508
   CORTES A 45:
       1 x m_ancho-30
   CORTES A 90 Y 45:
       2 x m_alto-25
PERFIL 19
   CORTES A RECTO
       1 x m_ancho
PERFIL T1515
       10 x 30

CALCULOS
j_desc:=if(jamba=1,0,24)
FIN CALCULOS

CORTES A RECTO:

DESARMAR SOLO SI n_hojas=1

    /* Hojas */
    
    PERFIL 510
       2 x m_ancho-187-j_desc
    SEGUN jamba PERFIL 509,6350
       /* Batiente */
       2 x m_alto-47
    PERFIL 511
       2 x m_alto-47
    
       /* Travesanios intermedios opcionales */
       PERFIL 510
          /* Travesanios Horizontales tra1, tra2 medidas al eje*/
          DESARMAR SOLO SI tra1>0 .AND. tra2=0
             1 x m_ancho-187-j_desc
          FIN DESARME
    
          DESARMAR SOLO SI tra1>0 .AND. tra2>0
            2 x m_ancho-187-j_desc
          FIN DESARME
    
      /* Contravidrios */
        DESARMAR SOLO SI jamba=1
                DESARMAR SOLO SI tra1=0 .AND. tra2=0
         PERFIL 507    
           4 x m_alto-183
         PARTE LK
           4 x 2+INT((m_alto-183-100)/300)
                FIN DESARME
    
       /* 1 travesanio */
                DESARMAR SOLO SI tra1>0 .AND. tra2=0
        PERFIL 507
           4 x tra1-34-76
           4 x m_alto-tra1-34-111
        PARTE LK
           4 x 2+INT((tra1-34-76-100)/300)
           4 x 2+INT((m_alto-tra1-34-111-100)/300)
                FIN DESARME
    
       /* 2 travesanio */
                DESARMAR SOLO SI tra1>0 .AND. tra2>0
          PERFIL 507 
             4 x tra1-34-76             
             4 x tra2-tra1-68
             4 x m_alto-tra2-34-111
         PARTE LK
             4 x 2+INT((tra1-34-76-100)/300)
             4 x 2+INT((tra2-tra1-68-100)/300)
             4 x 2+INT((m_alto-tra2-34-111-100)/300)                
                FIN DESARME
        FIN DESARME
    
   /* Sin travesanios */
        DESARMAR SOLO SI tra1=0 .AND. tra2=0
                DESARMAR SOLO SI tipo_rev = 1
         VIDRIOS
            1 de m_ancho-180 x m_alto-172
                FIN DESARME
                DESARMAR SOLO SI tipo_rev = 2 .OR. tipo_rev =3
         CALCULOS
            m_aux_ancho:=m_ancho
            m_ancho:=m_ancho-180
            m_aux_alto:=m_alto
            m_alto:=m_alto-172
         FIN CALCULOS
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
         VIDRIOS
          1 de m_ancho-180 x tra1-34-76+18 
                FIN DESARME
                DESARMAR SOLO SI tipo_rev = 2 .OR. tipo_rev=3
         CALCULOS
            m_aux_ancho:=m_ancho
            m_ancho:=m_ancho-180
            m_aux_alto:=m_alto
            m_alto:=tra1-34-76+18
         FIN CALCULOS
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
         1 de m_ancho-180 x m_alto-tra1-34-111+18
    
        FIN DESARME


    /* 2 travesanios */
        DESARMAR SOLO SI tra1>0 .AND. tra2>0
                DESARMAR SOLO SI tipo_rev = 1
         VIDRIOS
            1 de m_ancho-180 x tra1-34-76+18
                FIN DESARME
                DESARMAR SOLO SI tipo_rev = 2 .OR. tipo_rev=3
         CALCULOS
            m_aux_ancho:=m_ancho
            m_ancho:=m_ancho-180
            m_aux_alto:=m_alto
            m_alto:=tra1-34-76+18
         FIN CALCULOS
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
         1 de m_ancho-180 x tra2-tra1-68+18
      OTROS INTERIORES
         1 de m_ancho-180 x m_alto-tra2-34-111+18
        FIN DESARME
    
   /* Accesorios */
   PARTE A
      1 x 2
   PARTE D
      1 x 16
   PARTE C56
      1 x 3
   PARTE LM
        DESARMAR SOLO SI tra1=0 .AND. tra2=0
         4 x (m_ancho-180)/1000
        FIN DESARME
        DESARMAR SOLO SI tra1>0 .AND. tra2=0
         8 x (m_ancho-180)/1000
        FIN DESARME
        DESARMAR SOLO SI tra1>0 .AND. tra2>0
         12 x (m_ancho-180)/1000
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
   SEGUN manijon PARTE NADA,DOR375,MANICU,MANIJO,MANIJU
      1 x 2
        FIN DESARME

        DESARMAR SOLO SI cierra_p=1
   SEGUN cierra_p PARTE CIEPTA
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
       4 x (m_ancho-184-124-j_desc*2)/2
    SEGUN jamba PERFIL 509,6350
       /* Batiente */
       4 x m_alto-50
    PERFIL 511
       2 x m_alto-50
    PERFIL 519
       2 x m_alto-50
    
       /* Travesanios intermedios opcionales */
       PERFIL 510
          /* Travesanios Horizontales tra1, tra2 medidas al eje*/
          DESARMAR SOLO SI tra1>0 .AND. tra2=0
             2 x (m_ancho-184-124-j_desc*2)/2
          FIN DESARME
    
          DESARMAR SOLO SI tra1>0 .AND. tra2>0
            4 x (m_ancho-184-124-j_desc*2)/2
          FIN DESARME
    
    
      /* Contravidrios */
      DESARMAR SOLO SI jamba=1
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         PERFIL 507    
           8 x m_alto-186
         PARTE LK
           8 x 2+INT((m_alto-186-100)/300)
      FIN DESARME
    
    
       /* 1 travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
        PERFIL 507
           8 x tra1-34-75
           8 x m_alto-tra1-34-111
        PARTE LK
           8 x 2+INT((tra1-34-75-100)/300)
           8 x 2+INT((m_alto-tra1-34-111-100)/300)
      FIN DESARME
    
       /* 2 travesanio */
       DESARMAR SOLO SI tra1>0 .AND. tra2>0
          PERFIL 507 
             8 x tra1-34-75
             8 x tra2-tra1-68
             8 x m_alto-tra2-34-111
          PARTE LK
             8 x 2+INT((tra1-34-75-100)/300)
             8 x 2+INT((tra2-tra1-68-100)/300)
             8 x 2+INT((m_alto-tra2-34-111-100)/300)
    
       FIN DESARME
       FIN DESARME
    
    VIDRIOS
        DESARMAR SOLO SI tra1=0 .AND. tra2=0
          2 de (m_ancho-224-132)/2 x m_alto-150
        FIN DESARME
    
    
       /* 1 travesanio */
        
        DESARMAR SOLO SI tra1>0 .AND. tra2=0
          2 de (m_ancho-192-132)/2 x tra1-34-75+18
          2 de (m_ancho-192-132)/2 x m_alto-tra1-34-111+18
    
        FIN DESARME
    
       /* 2 travesanio */
        
        DESARMAR SOLO SI tra1>0 .AND. tra2>0
            2 de (m_ancho-192-132)/2 x tra1-34-75+18
            2 de (m_ancho-192-132)/2 x tra2-tra1-68+18
            2 de (m_ancho-192-132)/2 x m_alto-tra2-34-111+18

        FIN DESARME

        /* Accesorios */
         PARTE A
            1 x 2
         PARTE D
            1 x 16
         PARTE C56
            1 x 6

         PARTE LM
            DESARMAR SOLO SI tra1=0 .AND. tra2=0
               4 x (m_ancho-180-110)/1000
            FIN DESARME
            DESARMAR SOLO SI tra1>0 .AND. tra2=0
               8 x (m_ancho-180-110)/1000
            FIN DESARME
            DESARMAR SOLO SI tra1>0 .AND. tra2>0
               12 x (m_ancho-180-110)/1000
            FIN DESARME

         PARTE T
            4 x (m_alto-130)/1000

         PARTE UVW
            4 x (m_alto-130)/1000

         PARTE LD
            1 x m_ancho/1000
            2 x m_alto/1000

         /* Cerradura */
        SEGUN tipo_cerr PARTE P320,3001
            1 x 1
  	DESARMAR SOLO SI manijon>1
        SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
       	    1 x 2
	FIN DESARME
   	DESARMAR SOLO SI cierra_p=1
	SEGUN cierra_p PARTE CIEPTA
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







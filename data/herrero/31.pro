/* PUERTA CON BISAGRA ENCOLIZADA */

CALCULOS
xtra:=0
tra2:=0
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
CALCULOS
j_desc:=if(jamba=1,0,24)
FIN CALCULOS

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

       DESARMAR SOLO SI tra1>0
            tra1 x m_ancho-171-j_desc
       FIN DESARME

      /* Contravidrios */
        DESARMAR SOLO SI jamba=1
                DESARMAR SOLO SI tra1=0
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

                DESARMAR SOLO SI tra1>0
                        DESARMAR SOLO SI umbral = 0
                                PERFIL 507
                                        4*(tra1+1) x (m_alto-76-97-(68*tra1))/(tra1+1)
                                PARTE LK
                                        4 x 2+INT((m_alto-76-97-100)/300)
                        FIN DESARME
                        DESARMAR SOLO SI umbral = 1
                                PERFIL 507
                                        4*(tra1+1) x (m_alto-(tra1*68)-97-97)/(tra1+1)
                                PARTE LK
                                        4 x 2+INT((m_alto-76-97-100)/300)
                        FIN DESARME
                FIN DESARME
        FIN DESARME 

                /*VIDRIOS*/
           /* Sin travesanios */
        DESARMAR SOLO SI tra1=0
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
                                DESARMAR SOLO SI tipo_rev = 2
                                PRODUCTO REVET , 1 de m_ancho-178 x m_alto-154
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                                PRODUCTO REV688, 1 de m_ancho-178 x m_alto-154
                                FIN DESARME
                        FIN DESARME
                        DESARMAR SOLO SI umbral = 1
                                DESARMAR SOLO SI tipo_rev = 2
                                PRODUCTO REVET , 1 de m_ancho-178 x m_alto-174
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                                PRODUCTO REV688, 1 de m_ancho-178 x m_alto-174
                                FIN DESARME
                        FIN DESARME
                FIN DESARME
        FIN DESARME
        DESARMAR SOLO SI tra1>0
                DESARMAR SOLO SI tipo_rev = 1
                        DESARMAR SOLO SI umbral = 0
                                VIDRIOS
                        tra1+1 de m_ancho-178 x (m_alto-(tra1*50)-67-88)/(tra1+1)
                        FIN DESARME
                        DESARMAR SOLO SI umbral = 1
                                VIDRIOS
                        tra1+1 de m_ancho-178 x (m_alto-(tra1*50)-88-88)/(tra1+1)
                        FIN DESARME
                FIN DESARME
                DESARMAR SOLO SI tipo_rev = 2 .OR. tipo_rev=3
                        DESARMAR SOLO SI tipo_rev = 2
                                DESARMAR SOLO SI umbral = 0
                        PRODUCTO REVET , tra1+1 de m_ancho-178 x (m_alto-(tra1*50)-67-88)/(tra1+1)
                                FIN DESARME
                                DESARMAR SOLO SI umbral = 1
                        PRODUCTO REVET , tra1+1 de m_ancho-178 x (m_alto-(tra1*50)-88-88)/(tra1+1)
                                FIN DESARME
                        FIN DESARME

                        DESARMAR SOLO SI tipo_rev = 3
                                DESARMAR SOLO SI umbral = 0
              PRODUCTO REV688, tra1+1 de m_ancho-178 x (m_alto-(tra1*50)-67-88)/(tra1+1)
                                FIN DESARME

                                DESARMAR SOLO SI umbral = 1
              PRODUCTO REV688, tra1+1 de m_ancho-178 x (m_alto-(tra1*50)-88-88)/(tra1+1)
                                FIN DESARME
                        FIN DESARME
                FIN DESARME
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
            DESARMAR SOLO SI tra1>0
               4*tra1 x (m_ancho-150)/1000
            FIN DESARME

         PARTE UVW
            4 x (m_alto-130)/1000

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
            DESARMAR SOLO SI tra1=0
               1 x 4
            FIN DESARME
            DESARMAR SOLO SI tra1>0
               1 x 4
               2 x tra1
            FIN DESARME


FIN DESARME


/*====================================================================*/

                    /* PUERTAS DE DOS HOJAS */
DESARMAR SOLO SI n_hojas=2
    
    /* Hojas */
    
    PERFIL 510
       4 x (m_ancho-168-124-j_desc*2)/2
  DESARMAR SOLO SI umbral=0
    SEGUN jamba PERFIL 509,6530
       /* Batiente */
       4 x m_alto-32
  FIN DESARME
  DESARMAR SOLO SI umbral=1
    SEGUN perfil PERFIL 509,6530
       /* Batiente */
       4 x m_alto-54
  FIN DESARME

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
          /* Travesanios Horizontales tra1*/

                PERFIL 510
        DESARMAR SOLO SI tra1>0 
           2*tra1 x (m_ancho-168-124-j_desc*2)/2
        FIN DESARME
    
      /* Contravidrios */
        DESARMAR SOLO SI jamba=1
                DESARMAR SOLO SI tra1=0 
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
    
       /* Con travesanio */
                DESARMAR SOLO SI tra1>0 
                        DESARMAR SOLO SI umbral = 0
                                PERFIL 507
                                8*(tra1+1) x (m_alto-tra1-97-75-(68*tra1))/(tra1+1)
                                PARTE LK
                                8 x INT((m_alto-97-75-(68*tra1))/300)
                        FIN DESARME
                        DESARMAR SOLO SI umbral = 1
                                PERFIL 507
                                8*(tra1+1) x (m_alto-tra1-97-95-(68*tra1))/(tra1+1)
                                PARTE LK
                                8 x 2+INT((m_alto-(tra1*68)-97-95-100)/300)
                        FIN DESARME
                FIN DESARME
        FIN DESARME
       
   /* Sin travesanios */
        DESARMAR SOLO SI tra1=0
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
                                DESARMAR SOLO SI tipo_rev = 2
                            PRODUCTO REVET , 2 de (m_ancho-176-132)/2 x m_alto-141
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                            PRODUCTO REV688, 2 de (m_ancho-176-132)/2 x m_alto-141
                                FIN DESARME
                        FIN DESARME
                        DESARMAR SOLO SI umbral = 1
                                DESARMAR SOLO SI tipo_rev = 2
                            PRODUCTO REVET , 2 de (m_ancho-176-132)/2 x m_alto-164
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                            PRODUCTO REV688, 2 de (m_ancho-176-132)/2 x m_alto-164
                                FIN DESARME
                        FIN DESARME
                FIN DESARME
        FIN DESARME
   /* con travesanio */
        DESARMAR SOLO SI tra1>0 
                DESARMAR SOLO SI tipo_rev = 1
                        DESARMAR SOLO SI umbral = 0
                                VIDRIOS
                                      2*(tra1+1) de (m_ancho-176-132)/2 x (m_alto-(tra1*50)-146)/(tra1+1)
                        FIN DESARME
                        DESARMAR SOLO SI umbral = 1
                                VIDRIOS
                                      2*(tra1+1) de (m_ancho-176-132)/2 x (m_alto-(tra1*50)-166)/(tra1+1)
                        FIN DESARME
                FIN DESARME
                DESARMAR SOLO SI tipo_rev = 2 .OR. tipo_rev=3
                        DESARMAR SOLO SI umbral = 0
                                DESARMAR SOLO SI tipo_rev = 2
                                    PRODUCTO REVET , 2*(tra1+1) de (m_ancho-176-132)/2 x (m_alto-(tra1*50)-146)/(tra1+1)
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                                    PRODUCTO REV688, 2*(tra1+1) de (m_ancho-176-132)/2 x (m_alto-(tra1*50)-146)/(tra1+1)
                                FIN DESARME
                        FIN DESARME
                        DESARMAR SOLO SI umbral = 1
                                DESARMAR SOLO SI tipo_rev = 2
                        PRODUCTO REVET , 2*(tra1+1) de (m_ancho-176-132)/2 x (m_alto-(tra1*50)-166)/(tra1+1) 
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                        PRODUCTO REV688, 2*(tra1+1) de (m_ancho-176-132)/2 x (m_alto-(tra1*50)-166)/(tra1+1) 
                                FIN DESARME
                        FIN DESARME
                FIN DESARME
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
            DESARMAR SOLO SI tra1=0 
               4 x (m_ancho-150-110)/1000
            FIN DESARME
            DESARMAR SOLO SI tra1>0 
               2*tra1 x (m_ancho-150-110)/1000 
	       4 x (m_ancho-150-110)/1000
            FIN DESARME
            

         PARTE T
            4 x (m_alto-130)/1000

         PARTE UVW
            4 x (m_alto-130)/1000

         PARTE LD
            1 x m_ancho/1000
            2 x m_alto/1000

	 PARTE C56
		2 x 3
         /* Cerradura */
         SEGUN tipo_cerr PARTE P320,3001
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
            DESARMAR SOLO SI tra1=0
               2 x 4
            FIN DESARME
            DESARMAR SOLO SI tra1>0 
               2 x 4 
	       2*tra1 x 4 	
            FIN DESARME
         

         PARTE PASADO
            1 x 2

FIN DESARME



PRODUCTO MOPUER



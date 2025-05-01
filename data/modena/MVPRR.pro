/*VENTANA POSTIGON DE REBATIR REGULABLE LINEA MODENA*/

/* PREMARCO*/
PRODUCTO PPMMODE


/* Marco */
   PERFIL C6216
      CORTES A 45:
      2 x m_ancho
      2 x m_alto

   PARTE T69
      1 x 2

   PERFIL C5989
      1 x m_alto  

   /* Puertas de una hoja */
DESARMAR SOLO SI n_hojas=1

      CORTES A 45:
      PERFIL C6275
      2 x m_ancho-39
      2 x m_alto-39

      CORTES A RECTO:

/* NO Lleva travesa¤o intermedio */

        DESARMAR SOLO SI tra1=0 .AND. tra2=0
                PERFIL C6280
                        2 x m_ancho-150
                PERFIL C6279
                        1 x m_ancho-170
                PERFIL C6278
                        1 x m_ancho-170
                PERFIL C6277
                        INT((m_alto-150)/61) x m_ancho-170

        FIN DESARME

  
/* Lleva un travesa¤o intermedio */

        DESARMAR SOLO SI tra1>0 .AND. tra2=0
         CORTES A RECTO:
                PERFIL C6276
                        1 x m_ancho-150
                PERFIL C6280
                        4 x m_ancho-150
                PERFIL C6279
                        2 x m_ancho-170
                PERFIL C6278
                        2 x m_ancho-170
                PERFIL C6277
                        INT((m_alto-150-90)/61) x m_ancho-177  

        FIN DESARME

        
/* Lleva dos travesa¤o intermedio */
        DESARMAR SOLO SI tra1>0 .AND. tra2>0
         CORTES A RECTO:
                PERFIL C6276
                        2 x m_ancho-150
                PERFIL C6280
                        6 x m_ancho-150
                PERFIL C6279
                        3 x m_ancho-170
                PERFIL C6278
                        3 x m_ancho-170
                PERFIL C6277
                         INT((m_alto-150-180)/61) x m_ancho-170 
                                      
           M.OBRA 0.75
        FIN DESARME



      /* MECANISMO PUERTA DE UNA HOJA */
      PARTE E69
         1 x 4
      PARTE E69
         1 x 4
      PARTE H62
         1 x 3
      PARTE H67
         1 x 1
      PARTE B67
         2 x m_ancho/1000
         2 x m_alto/1000
      PARTE B52
         2 x m_ancho/1000
         2 x m_alto/1000
      PARTE B73
         2 x (m_ancho-132 + m_alto-150)/1000

      CALCULOS
      h1:=INT((m_alto-150)/165)
      dif:=m_alto-150-h1*165
      FIN CALCULOS

        DESARMAR SOLO SI tra1=0 .AND. tra2=0
        SEGUN acciona PARTE T109,T110
            1 x 1
        PARTE T107
            1 x h1-1    
        PARTE T108
            1 x h1

        DESARMAR SOLO SI dif>55
        PARTE T106
            1 x INT(dif/55)
        PARTE T105
            1 x INT(dif/55)
        FIN DESARME

        PARTE T104
            2 x INT((m_alto-150)/61)    
        FIN DESARME

      CALCULOS
      h1:=INT((m_alto-150-90)/165)
      dif:=m_alto-150-90-h1*165
      FIN CALCULOS

        DESARMAR SOLO SI tra1>0 .AND. tra2=0
        PARTE T20
            1 x 4
        PARTE T100
            1 x 4
        SEGUN acciona PARTE T109,T110
            1 x 2
        PARTE T107
            1 x h1-2
        PARTE T108
            1 x h1
        DESARMAR SOLO SI dif>55
        PARTE T106
            1 x INT(dif/55)
        PARTE T105
            1 x INT(dif/55)
        FIN DESARME
        PARTE T104
            2 x INT((m_alto-150-90)/61)    
        FIN DESARME
      CALCULOS
      h1:=INT((m_alto-150-180)/165)
      dif:=m_alto-150-180-h1*165
      FIN CALCULOS

        DESARMAR SOLO SI tra1>0 .AND. tra2>0
        PARTE T20
            1 x 8
        PARTE T100
            1 x 8
        SEGUN acciona PARTE T109,T110
            1 x 3
        PARTE T107
            1 x H1-3    
        PARTE T108
            1 x h1
        DESARMAR SOLO SI dif>55
        PARTE T106
            1 x INT(dif/55)
        PARTE T105
            1 x INT(dif/55)

        FIN DESARME
        PARTE T104
            2 x INT((m_alto-150-180)/61)    


        FIN DESARME


FIN DESARME
 /* Puertas de una Hoja */

   /* =================================================== */

   /* Puertas de dos hojas */
   DESARMAR SOLO SI n_hojas=2

      CORTES A 45:
      PERFIL C6275
      2 x m_ancho/2-23
      4 x m_alto-39

      CORTES A RECTO:

      PERFIL C6224
      1 x m_alto-94

      PERFIL C5989
      2 x 300

/* NO Lleva travesa¤o intermedio */

        DESARMAR SOLO SI tra1=0 .AND. tra2=0
                PERFIL C6280
                        4 x m_ancho/2-133
                PERFIL C6279
                        2 x m_ancho/2-153
                PERFIL C6278
                        2 x m_ancho/2-153
                PERFIL C6277
                     2*INT((m_alto-150)/61) x m_ancho/2-153  

        FIN DESARME

  
/* Lleva un travesa¤o intermedio */

        DESARMAR SOLO SI tra1>0 .AND. tra2=0
         CORTES A RECTO:
                PERFIL C6276
                        1 x m_ancho/2-133
                PERFIL C6280
                        4 x m_ancho/2-133
                PERFIL C6279
                        4 x m_ancho/2-153
                PERFIL C6278
                        4 x m_ancho/2-153
                PERFIL C6277
                      2*INT((m_alto-150-90)/61) x m_ancho/2-153  

        FIN DESARME

        
/* Lleva dos travesa¤o intermedio */
        DESARMAR SOLO SI tra1>0 .AND. tra2>0
         CORTES A RECTO:
                PERFIL C6276
                        2 x m_ancho/2-133
                PERFIL C6280
                        6 x m_ancho/2-133
                PERFIL C6279
                        6 x m_ancho/2-153
                PERFIL C6278
                        6 x m_ancho/2-153
                PERFIL C6277
                      2*INT((m_alto-150-180)/61) x m_ancho/2-153  
                                      
        FIN DESARME



      /* MECANISMO PUERTA DE DOS HOJAS */
      PARTE H49
         1 x 2
      PARTE E69
         1 x 4
      PARTE E69
         1 x 8
      PARTE E68
         1 x 2
      PARTE H62
         1 x 6
      PARTE H67
         1 x 1
      PARTE B67
         2 x m_ancho/1000
         3 x m_alto/1000
      PARTE B52
         2 x m_ancho/1000
         4 x m_alto/1000
      PARTE B73
         2 x (m_ancho-132 + m_alto-150)/1000


        DESARMAR SOLO SI tra1=0 .AND. tra2=0
      CALCULOS
      h1:=INT((m_alto-150)/165)
      dif:=m_alto-150-h1*165
      FIN CALCULOS

        SEGUN acciona PARTE T109,T110
            1 x 2
        PARTE T107
            2 x h1-1    
        PARTE T108
            2 x h1

                DESARMAR SOLO SI dif>55
        PARTE T106
            2 x INT(dif/55)
        PARTE T105
            2 x INT(dif/55)
                FIN DESARME

        PARTE T104
            4 x INT((m_alto-150)/61)    
        FIN DESARME


        DESARMAR SOLO SI tra1>0 .AND. tra2=0
        PARTE T20
            1 x 8
        PARTE T100
            1 x 8
      CALCULOS
      h1:=INT((m_alto-150-90)/165)
      dif:=m_alto-150-90-h1/165
      FIN CALCULOS

        SEGUN acciona PARTE T109,T110
            1 x 4
        PARTE T107
            2 x h1-2    
        PARTE T108
            2 x h1

                DESARMAR SOLO SI dif>55
        PARTE T106
            2 x INT(dif/55)
        PARTE T105
            2 x INT(dif/55)
                FIN DESARME

        PARTE T104
            4 x INT((m_alto-150)/61)    
        FIN DESARME


        DESARMAR SOLO SI tra1>0 .AND. tra2>0
        PARTE T20
            1 x 16
        PARTE T100
            1 x 16

      CALCULOS
      h1:=INT((m_alto-150)/165)
      dif:=m_alto-150-h1/165
      FIN CALCULOS

        SEGUN acciona PARTE T109,T110
            1 x 6
        PARTE T107
            2 x h1-3    
        PARTE T108
            2 x h1

                DESARMAR SOLO SI dif>55
        PARTE T106
            2 x INT(dif/55)
        PARTE T105
            2 x INT(dif/55)
                FIN DESARME

        PARTE T104
            4 x INT((m_alto-150)/61)    
        FIN DESARME




   FIN DESARME          /* Puertas de DOS Hoja */

/*    =============================================


   /* Puertas de tres hojas */
   DESARMAR SOLO SI n_hojas=3


      CORTES A 45:
      PERFIL C6275
      6 x m_ancho/3-17
      6 x m_alto-39

      CORTES A RECTO:

      PERFIL C6224
      2 x m_alto-94

      PERFIL C5989
      6 x 300
/* NO Lleva travesa¤o intermedio */

        DESARMAR SOLO SI tra1=0 .AND. tra2=0
                PERFIL C6280
                        6 x m_ancho/3-128
                PERFIL C6279
                        3 x m_ancho/3-148
                PERFIL C6278
                        3 x m_ancho/3-148
                PERFIL C6277
                     3*INT((m_alto-150)/61) x m_ancho/3-148

        FIN DESARME

  
/* Lleva un travesa¤o intermedio */

        DESARMAR SOLO SI tra1>0 .AND. tra2=0
         CORTES A RECTO:
                PERFIL C6276
                        3 x m_ancho/3-128
                PERFIL C6280
                        6 x m_ancho/3-128
                PERFIL C6279
                        6 x m_ancho/3-148
                PERFIL C6278
                        6 x m_ancho/3-148
                PERFIL C6277
                      3*INT((m_alto-150-90)/61) x m_ancho/3-148  

        FIN DESARME

        
/* Lleva dos travesa¤o intermedio */
        DESARMAR SOLO SI tra1>0 .AND. tra2>0
         CORTES A RECTO:
                PERFIL C6276
                        2 x m_ancho/2-128
                PERFIL C6280
                        6 x m_ancho/2-128
                PERFIL C6279
                        6 x m_ancho/2-148
                PERFIL C6278
                        6 x m_ancho/2-148
                PERFIL C6277
                      3*INT((m_alto-150-180)/61) x m_ancho/2-148  
                                      
        FIN DESARME



      /* MECANISMO PUERTA DE TRES HOJAS */
      PARTE H49
         1 x 4 
      PARTE E69
         1 x 4
      PARTE E69
         1 x 12
      PARTE H62
         1 x 9
      PARTE H67
         1 x 1
      PARTE B67
         2 x m_ancho/1000
         4 x m_alto/1000
      PARTE B52
         2 x m_ancho/1000
         6 x m_alto/1000
      PARTE B73
         2 x (m_ancho-132 + m_alto-150)/1000


        DESARMAR SOLO SI tra1=0 .AND. tra2=0
      CALCULOS
      h1:=INT((m_alto-150)/165)
      dif:=m_alto-150-h1/165
      FIN CALCULOS

        SEGUN acciona PARTE T109,T110
            1 x 3
        PARTE T107
            3 x h1-1    
        PARTE T108
            3 x h1

                DESARMAR SOLO SI dif>55
        PARTE T106
            3 x INT(dif/55)
        PARTE T105
            3 x INT(dif/55)
                FIN DESARME

        PARTE T104
            6 x INT((m_alto-150)/61)    
        FIN DESARME

        DESARMAR SOLO SI tra1>0 .AND. tra2=0
      CALCULOS
      h1:=INT((m_alto-150-90)/165)
      dif:=m_alto-150-90-h1/165
      FIN CALCULOS

        PARTE T20
            1 x 12
        PARTE T100
            1 x 12
        SEGUN acciona PARTE T109,T110
            1 x 6
        PARTE T107
            3 x h1-2    
        PARTE T108
            3 x h1

                DESARMAR SOLO SI dif>55
        PARTE T106
            3 x INT(dif/55)
        PARTE T105
            3 x INT(dif/55)
                FIN DESARME

        PARTE T104
            6 x INT((m_alto-150)/61)    
        FIN DESARME

        DESARMAR SOLO SI tra1>0 .AND. tra2>0
      CALCULOS
      h1:=INT((m_alto-150-180)/165)
      dif:=m_alto-150-180-h1/165
      FIN CALCULOS

        PARTE T20
            1 x 24
        PARTE T100
            1 x 24
        SEGUN acciona PARTE T109,T110
            1 x 6
        PARTE T107
            3 x h1-3    
        PARTE T108
            3 x h1

                DESARMAR SOLO SI dif>55
        PARTE T106
            3 x INT(dif/55)
        PARTE T105
            3 x INT(dif/55)
                FIN DESARME

        PARTE T104
            6 x INT((m_alto-150)/61)    
        FIN DESARME



   FIN DESARME          /* Puertas de TRES Hojas */

  /*===============================================0
                       /* Puertas de CUATRO hojas */

   DESARMAR SOLO SI n_hojas=4

      CORTES A 45:
      PERFIL C6275
      8 x m_ancho/4-14
      8 x m_alto-24

      CORTES A RECTO:
      PERFIL C5989
      1 x m_alto
      6 x 300

      PERFIL C6224
      3 x m_alto-94

/* NO Lleva travesa¤o intermedio */

        DESARMAR SOLO SI tra1=0 .AND. tra2=0
                PERFIL C6280
                        6 x m_ancho/4-124
                PERFIL C6279
                        4 x m_ancho/4-145
                PERFIL C6278
                        4 x m_ancho/4-145
                PERFIL C6277
                     4*INT((m_alto-150)/61) x m_ancho/4-145

        FIN DESARME

  
/* Lleva un travesa¤o intermedio */

        DESARMAR SOLO SI tra1>0 .AND. tra2=0
         CORTES A RECTO:
                PERFIL C6276
                        4 x m_ancho/4-125
                PERFIL C6280
                        6 x m_ancho/4-125
                PERFIL C6279
                        6 x m_ancho/4-145
                PERFIL C6278
                        6 x m_ancho/4-145
                PERFIL C6277
                      4*INT((m_alto-150-90)/61) x m_ancho/4-145  

        FIN DESARME

        
/* Lleva dos travesa¤o intermedio */
        DESARMAR SOLO SI tra1>0 .AND. tra2>0
         CORTES A RECTO:
                PERFIL C6276
                        8 x m_ancho/4-125
                PERFIL C6280
                        8 x m_ancho/4-125
                PERFIL C6279
                        6 x m_ancho/2-145
                PERFIL C6278
                        6 x m_ancho/2-145
                PERFIL C6277
                      4*INT((m_alto-150-180)/61) x m_ancho/2-145  
                                      
        FIN DESARME



      /* MECANISMO PUERTA DE CUATRO HOJAS */
      PARTE H49
         1 x 6
      PARTE E69
         1 x 4
      PARTE E69
         1 x 16
      PARTE H62
         1 x 12
      PARTE H67
         1 x 1
      PARTE B67
         2 x m_ancho/1000
         4 x m_alto/1000
      PARTE B52
         2 x m_ancho/1000
         8 x m_alto/1000
      PARTE B73
         (m_ancho*(m_alto/61))/1000


        DESARMAR SOLO SI tra1=0 .AND. tra2=0
      CALCULOS
      h1:=INT((m_alto-150)/165)
      dif:=m_alto-150-h1/165
      FIN CALCULOS

        SEGUN acciona PARTE T109,T110
            1 x 4
        PARTE T107
            4 x h1-1    
        PARTE T108
            4 x h1

                DESARMAR SOLO SI dif>55
        PARTE T106
            4 x INT(dif/55)
        PARTE T105
            4 x INT(dif/55)
                FIN DESARME

        PARTE T104
            8 x INT((m_alto-150)/61)    
        FIN DESARME

        DESARMAR SOLO SI tra1>0 .AND. tra2=0
      CALCULOS
      h1:=INT((m_alto-150-90)/165)
      dif:=m_alto-150-90-h1/165
      FIN CALCULOS

        PARTE T20
            1 x 16
        PARTE T100
            1 x 16
        SEGUN acciona PARTE T109,T110
            1 x 6
        PARTE T107
            4 x h1-2    
        PARTE T108
            4 x h1

                DESARMAR SOLO SI dif>55
        PARTE T106
            4 x INT(dif/55)
        PARTE T105
            4 x INT(dif/55)
                FIN DESARME

        PARTE T104
            6 x INT((m_alto-150)/61)    
        FIN DESARME

        DESARMAR SOLO SI tra1>0 .AND. tra2>0
      CALCULOS
      h1:=INT((m_alto-150-180)/165)
      dif:=m_alto-150-180-h1/165
      FIN CALCULOS

        PARTE T20
            1 x 36
        PARTE T100
            1 x 36
        SEGUN acciona PARTE T109,T110
            1 x 6
        PARTE T107
            4 x h1-3    
        PARTE T108
            4 x h1

                DESARMAR SOLO SI dif>55
        PARTE T106
            4 x INT(dif/55)
        PARTE T105
            4 x INT(dif/55)
                FIN DESARME

        PARTE T104
            6 x INT((m_alto-150)/61)    
        FIN DESARME



   FIN DESARME          /* Ventanas de CUATRO Hojas */

   /* accesorios comunes a todas las opciones */

   PARTE H68
      1 x 1
   PARTE H69
      1 x 1
   PARTE H78
      1 x 2
   PARTE H79
      1 x 2
   PARTE H43
      1 x 2
   PARTE T98
      1 x 2
   PARTE T111
      4 x n_hojas
	DESARMAR SOLO SI taco_reg=1
      PARTE T88
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
	FIN DESARME
      PARTE I
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
      PARTE T95
         1 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)



PRODUCTO MAPOST
M.OBRA 2.5




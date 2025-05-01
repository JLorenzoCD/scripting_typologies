   /* AEREADORES */

   CORTES A 45:
   PERFIL 24   
      2 x m_ancho
      2 x m_alto

   CORTES A RECTO:
      PERFIL A1616
         DESARMAR SOLO SI tipo_ae=1
            2 x m_alto-40
         FIN DESARME
         DESARMAR SOLO SI tipo_ae=2
            2 x m_ancho-40
         FIN DESARME



   /* MECANISMO */
   PARTE A
      1 x 4
   PARTE D
      1 x 32



   /* HORIZONTAL (EL AEREADOR , NO LA ALETA !!!! */
   DESARMAR SOLO SI tipo_ae=1 
      DESARMAR SOLO SI m_ancho<260
         PARTE AERE2
            1 x 1
         PARTE I
            1 x 4
         VIDRIOS
            2 de 112 x m_alto-82
      FIN DESARME
      DESARMAR SOLO SI m_ancho>=260 .AND. m_ancho<360
         PARTE AERE3
            1 x 1
         PARTE I
            1 x 4
         VIDRIOS
            3 de 112 x m_alto-82
      FIN DESARME
      DESARMAR SOLO SI m_ancho>=360 .AND. m_ancho<460
         PARTE AERE4
            1 x 1
         PARTE I
            1 x 6
         VIDRIOS
            4 de 112 x m_alto-82
      FIN DESARME
      DESARMAR SOLO SI m_ancho>=460 .AND. m_ancho<560
         PARTE AERE5
            1 x 1
         PARTE I
            1 x 6
         VIDRIOS
            5 de 112 x m_alto-82
      FIN DESARME
      DESARMAR SOLO SI m_ancho>=560 .AND. m_ancho<660
         PARTE AERE6
            1 x 1
         PARTE I
            1 x 6
         VIDRIOS
            6 de 112 x m_alto-82
      FIN DESARME
      DESARMAR SOLO SI m_ancho>=660 .AND. m_ancho<760
         PARTE AERE7
            1 x 1
         PARTE I
            1 x 8
         VIDRIOS
            7 de 112 x m_alto-82
      FIN DESARME
      DESARMAR SOLO SI m_ancho>=760 .AND. m_ancho<860
         PARTE AERE8
            1 x 1
         PARTE I
            1 x 8
         VIDRIOS
            8 de 112 x m_alto-82
      FIN DESARME
      DESARMAR SOLO SI m_ancho>=860 .AND. m_ancho<960
         PARTE AERE9
            1 x 1
         PARTE I
            1 x 8
         VIDRIOS
            9 de 112 x m_alto-82
      FIN DESARME
      DESARMAR SOLO SI m_ancho>=960 .AND. m_ancho<1060
         PARTE AERE10
            1 x 1
         PARTE I
            1 x 8
         VIDRIOS
            10 de 112 x m_alto-82
      FIN DESARME
      DESARMAR SOLO SI m_ancho>=1060 .AND. m_ancho<1160
         PARTE AERE11
            1 x 1
         PARTE I
            1 x 10
         VIDRIOS
            11 de 112 x m_alto-82
      FIN DESARME
      DESARMAR SOLO SI m_ancho>=1160 .AND. m_ancho<1260
         PARTE AERE12
            1 x 1
         PARTE I
            1 x 10
         VIDRIOS
            12 de 112 x m_alto-82
      FIN DESARME
      DESARMAR SOLO SI m_ancho>=1260 .AND. m_ancho<1360
         PARTE AERE13
            1 x 1
         PARTE I
            1 x 10
         VIDRIOS
            13 de 112 x m_alto-82
      FIN DESARME
      DESARMAR SOLO SI m_ancho>=1360 .AND. m_ancho<1460
         PARTE AERE14
            1 x 1
         PARTE I
            1 x 10
         VIDRIOS
            14 de 112 x m_alto-82
      FIN DESARME
      DESARMAR SOLO SI m_ancho>=1460 .AND. m_ancho<1560
         PARTE AERE15
            1 x 1
         PARTE I
            1 x 12
         VIDRIOS
            15 de 112 x m_alto-82
      FIN DESARME


      /* MANO DE OBRA */
   FIN DESARME   /* HORIZONTAL */

   /* VERTICAL (EL AEREADOR , NO LAS ALETAS )*/
   DESARMAR SOLO SI tipo_ae=2 .AND. m_ancho<=1080
      DESARMAR SOLO SI m_alto<260
         PARTE AERE2
            1 x 1
         PARTE I
            1 x 4
         VIDRIOS
            2 de m_ancho-82 x 112
      FIN DESARME
      DESARMAR SOLO SI m_alto>=260 .AND. m_alto<360
         PARTE AERE3
            1 x 1
         PARTE I
            1 x 4
         VIDRIOS
            3 de m_ancho-82 x 112
      FIN DESARME
      DESARMAR SOLO SI m_alto>=360 .AND. m_alto<460
         PARTE AERE4
            1 x 1
         PARTE I
            1 x 6
         VIDRIOS
            4 de m_ancho-82 x 112
      FIN DESARME
      DESARMAR SOLO SI m_alto>=460 .AND. m_alto<560
         PARTE AERE5
            1 x 1
         PARTE I
            1 x 6
         VIDRIOS
            5 de m_ancho-82 x 112
      FIN DESARME
      DESARMAR SOLO SI m_alto>=560 .AND. m_alto<660
         PARTE AERE6
            1 x 1
         PARTE I
            1 x 6
         VIDRIOS
            6 de m_ancho-82 x 112
      FIN DESARME
      DESARMAR SOLO SI m_alto>=660 .AND. m_alto<760
         PARTE AERE7
            1 x 1
         PARTE I
            1 x 8
         VIDRIOS
            7 de m_ancho-82 x 112
      FIN DESARME
      DESARMAR SOLO SI m_alto>=760 .AND. m_alto<860
         PARTE AERE8
            1 x 1
         PARTE I
            1 x 8
         VIDRIOS
            8 de m_ancho-82 x 112
      FIN DESARME
      DESARMAR SOLO SI m_alto>=860 .AND. m_alto<960
         PARTE AERE9
            1 x 1
         PARTE I
            1 x 8
         VIDRIOS
            9 de m_ancho-82 x 112
      FIN DESARME
      DESARMAR SOLO SI m_alto>=960 .AND. m_alto<1060
         PARTE AERE10
            1 x 1
         PARTE I
            1 x 8
         VIDRIOS
            10 de m_ancho-82 x 112
      FIN DESARME
      DESARMAR SOLO SI m_alto>=1060 .AND. m_alto<1160
         PARTE AERE11
            1 x 1
         PARTE I
            1 x 10
         VIDRIOS
            11 de m_ancho-82 x 112
      FIN DESARME
      DESARMAR SOLO SI m_alto>=1160 .AND. m_alto<1260
         PARTE AERE12
            1 x 1
         PARTE I
            1 x 10
         VIDRIOS
            12 de m_ancho-82 x 112
      FIN DESARME
      DESARMAR SOLO SI m_alto>=1260 .AND. m_alto<1360
         PARTE AERE13
            1 x 1
         PARTE I
            1 x 10
         VIDRIOS
            13 de m_ancho-82 x 112
      FIN DESARME
      DESARMAR SOLO SI m_alto>=1360 .AND. m_alto<1460
         PARTE AERE14
            1 x 1
         PARTE I
            1 x 10
         VIDRIOS
            14 de m_ancho-82 x 112
      FIN DESARME
      DESARMAR SOLO SI m_alto>=1460 .AND. m_alto<1560
         PARTE AERE15
            1 x 1
         PARTE I
            1 x 12
         VIDRIOS
            15 de m_ancho-82 x 112
      FIN DESARME


   FIN DESARME /* VERTICAL */

M.OBRA 0.5+((m_ancho+m_alto*2)/1000)*0.3    



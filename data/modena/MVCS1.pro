/* Ventana Corrediza  2 3 y 4 hojas con variantes */


   PRODUCTO PMMODE



CALCULOS
   tra_n:=0
   m_desc:=if(t_corte=1,0,28)
FIN CALCULOS



DESARMAR SOLO SI t_corte>=2
CORTES A 45:
   /* MARCO */
   PERFIL C6906
      2 x m_ancho
      2 x m_alto
FIN DESARME


DESARMAR SOLO SI t_corte<=1
CORTES A RECTO:
   /* MARCO */
   PERFIL C6200
      2 x m_ancho - 42
   PERFIL C6201
      2 x m_alto
FIN DESARME:

   /* Ventanas de 2 Hojas */
DESARMAR SOLO SI n_hojas=2
   DESARMAR SOLO SI t_corte=1
      DESARMAR SOLO SI m_dvh=1
         PERFIL C6249
      FIN DESARME
      DESARMAR SOLO SI m_dvh=0
         PERFIL C6204
      FIN DESARME

         4 x (m_ancho-m_desc)/2 - 24

      /* tra1 = posicion al eje de la unica traviesa */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         DESARMAR SOLO SI m_dvh=0
               PERFIL C6239
         FIN DESARME
         DESARMAR SOLO SI m_dvh=1
               PERFIL C6253
         FIN DESARME
            2 x (m_ancho-m_desc)/2-67
         PARTE I
            1 x 8
         PARTE T95
            1 x 8
      DESARMAR SOLO SI m_dvh=0
         PARTE B60
            4 x ((m_ancho-m_desc)/2-67)/1000
      FIN DESARME
      DESARMAR SOLO SI m_dvh=1
         PARTE B30
            8 x ((m_ancho-m_desc)/2-67)/1000
      FIN DESARME

      FIN DESARME
      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0 .AND. tra1=0
         DESARMAR SOLO SI m_dvh=0
               PERFIL C6239
         FIN DESARME
         DESARMAR SOLO SI m_dvh=1
               PERFIL C6253
         FIN DESARME

            2*tra2 x (m_ancho-m_desc)/2-67
            PARTE I
               1 x 4*tra2
            PARTE T95
               1 x 4*tra2
      DESARMAR SOLO SI m_dvh=0
            PARTE B60
               4*tra2 x ((m_ancho-m_desc)/2-67)/1000
      FIN DESARME
      DESARMAR SOLO SI m_dvh=1
            PARTE B30
               8*tra2 x ((m_ancho-m_desc)/2-67)/1000
      FIN DESARME

      FIN DESARME


      DESARMAR SOLO SI m_dvh=0
               PERFIL C6207
      FIN DESARME
      DESARMAR SOLO SI m_dvh=1
               PERFIL C6250
      FIN DESARME
         1 x m_alto - 79


      DESARMAR SOLO SI p_ref>0
      DESARMAR SOLO SI m_dvh=0
               PERFIL C6207
      FIN DESARME
      DESARMAR SOLO SI m_dvh=1
               PERFIL C6250
      FIN DESARME
      FIN DESARME
      DESARMAR SOLO SI p_ref>0
      DESARMAR SOLO SI m_dvh=1
         PERFIL C6251
      FIN DESARME
      DESARMAR SOLO SI m_dvh=0
         PERFIL C6208
      FIN DESARME
      FIN DESARME

         1 x m_alto - 79

      DESARMAR SOLO SI m_dvh=0
               PERFIL C6203
      FIN DESARME
      DESARMAR SOLO SI m_dvh=1
               PERFIL C6248
      FIN DESARME

            2 x m_alto - 79

         VIDRIOS

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
               2 de (m_ancho-m_desc-157)/2 x m_alto-72-99
      FIN DESARME
            /* tra1= posicion del travesanio */
      DESARMAR SOLO SI tra1>0
               2 de (m_ancho-m_desc-157)/2 x tra1-27-94+18
      PANELES
               2 de (m_ancho-m_desc-157)/2 x m_alto-tra1-27-94+18
      FIN DESARME
            /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0
               2*(tra2+1) de (m_ancho-m_desc-157)/2 x (m_alto-85-85+18*tra2-55*tra2)/(tra2+1)
      FIN DESARME
   FIN DESARME
   DESARMAR SOLO SI t_corte>1
      DESARMAR SOLO SI m_dvh=1
         PERFIL C6909
      FIN DESARME
      DESARMAR SOLO SI m_dvh=0
         PERFIL C6908
      FIN DESARME
         4 x m_ancho/2 - 10
         3 x m_alto - 80
      DESARMAR SOLO SI p_ref=0
         1 x m_alto - 80
      FIN DESARME
      DESARMAR SOLO SI p_ref>0
         DESARMAR SOLO SI m_dvh=1
            PERFIL C6911
         FIN DESARME
         DESARMAR SOLO SI m_dvh=0
            PERFIL C6910
         FIN DESARME
            1 x m_alto-79
            PARTE T128
            1 x 2
      FIN DESARME


      PERFIL C6907
         2 x m_alto-79

      /* tra1 = posicion al eje de la unica traviesa */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
      FIN DESARME
      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0
      FIN DESARME

         VIDRIOS
               2 de m_ancho/2-112 x m_alto-80-102

   FIN DESARME

RUBRO: 1
   DESARMAR SOLO SI mosquitero!=0
         SEPARACION
         /* Horizontales */
         PERFIL C6255
            CORTES A 45:
            2 x (m_ancho-m_desc)/2-7
            CORTES A RECTO:
      DESARMAR SOLO SI tramosq>0
            PERFIL C6256
               tramosq x  (m_ancho-m_desc)/2-11-63
            PARTE I
               tramosq x 4
            PARTE B9
               tramosq*2 x ((m_ancho-m_desc)/2-11-63)/1000
      FIN DESARME
         /* Verticales */
         PERFIL C6255
         CORTES A 45:
            2 x m_alto-89
         CORTES A RECTO:
      DESARMAR SOLO SI t_corte=1
         PERFIL C6228
            2 x m_alto-100
         PARTE T21
            2 x 2+INT((m_alto-100)/250)
      FIN DESARME
         PARTE E73
            1 x 4
         PARTE D
            1 x 16
         PARTE R43
            1 x 4
         PARTE B9
            2 x ((m_ancho-m_desc)/2-11)/1000
            2 x (m_alto-87)/1000
         PARTE B16
            2 x (m_alto-87)/1000
         TELA
            1 de (m_ancho-m_desc)/2 x m_alto-87

   FIN DESARME
     /*  Mosquitero */
FIN RUBRO:


      /* MECANISMO */
   DESARMAR SOLO SI t_corte=1
      PARTE T89
         1 x 4
      SEGUN rueda PARTE R40,R42,R48,R49,R49R,R42R
         1 x 4
      SEGUN cierre PARTE H56,H57,H102_MODENA
         1 x 2
      PARTE I
         1 x 16
      PARTE T91
         1 x 8
      PARTE T130
         1 x 2
      PARTE T93
         1 x 2
      PARTE T69
         1 x 2

   FIN DESARME
   DESARMAR SOLO SI t_corte=2
      SEGUN rueda PARTE R40,R42,R48,R49,R49R,R42R
         1 x 4
      SEGUN cierre PARTE H56,H57,H102_MODENA
         1 x 2
      PARTE E83
         1 x 4
      PARTE E97
         1 x 8
      PARTE E98
         1 x 8
      PARTE T127
         1 x 4
      PARTE T129
         1 x 2
      PARTE T130
         1 x 2
      PARTE T126
         1 x 2
      PARTE T131
         1 x 2
   FIN DESARME

      PARTE T90
         1 x 4
      PARTE C14
         8 x ((m_ancho-m_desc)/2-24)/1000
         6 x (m_alto-79)/1000
DESARMAR SOLO SI m_dvh=0
      PARTE B60
         4 x ((m_ancho-m_desc)/2-24)/1000
         4 x (m_alto-160)/1000
FIN DESARME
DESARMAR SOLO SI m_dvh=1
      PARTE B30
         8 x ((m_ancho-m_desc)/2-24)/1000
         8 x (m_alto-160)/1000
FIN DESARME

      PARTE T88
   DESARMAR SOLO SI taco_reg=1
         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
   FIN DESARME
      PARTE I
         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
      PARTE T95
         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)


FIN DESARME
/* Ventanas de Dos Hojas */


   /* Ventanas de 3 Hojas */
   /*    CON HOJA CENTRAL Y LATERAL EN LA MISMA GUIA */
DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=1

         PERFIL C6246
            1 x m_alto-79

   DESARMAR SOLO SI t_corte=1
      DESARMAR SOLO SI m_dvh=0
               PERFIL C6204
      FIN DESARME
      DESARMAR SOLO SI m_dvh=1
               PERFIL C6249
      FIN DESARME

         6 x (m_ancho-m_desc)/3 - 29

         /* tra1 = posicion al eje de la unica traviesa */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         DESARMAR SOLO SI m_dvh=0
               PERFIL C6239
         FIN DESARME
         DESARMAR SOLO SI m_dvh=1
               PERFIL C6253
         FIN DESARME

            3 x (m_ancho-m_desc)/3-29
            PARTE I
               3 x 4
            PARTE T95
               3 x 4

        DESARMAR SOLO SI m_dvh=0
            PARTE B60
               6 x ((m_ancho-m_desc)/3-29)/1000
               6 x (m_alto-160)/1000
        FIN DESARME
        DESARMAR SOLO SI m_dvh=1
            PARTE B30
               12 x ((m_ancho-m_desc)/3-29)/1000
               12 x (m_alto-160)/1000
        FIN DESARME

      FIN DESARME

            /* tra2= cantidad de traviesas, se suponen centradas */      DESARMAR SOLO SI tra2>0 .AND. tra1=0


      DESARMAR SOLO SI m_dvh=0
               PERFIL C6239
      FIN DESARME
      DESARMAR SOLO SI m_dvh=1
               PERFIL C6253
      FIN DESARME

            3*tra2 x (m_ancho-m_desc)/3-29
            PARTE I
               1 x 4*tra2
            PARTE T95
               1 x 4*tra2
      DESARMAR SOLO SI m_dvh=0
            PARTE B60
               4*tra2 x ((m_ancho-m_desc)/3-29)/1000
      FIN DESARME
      DESARMAR SOLO SI m_dvh=1
            PARTE B30
               8*tra2 x ((m_ancho-m_desc)/3-29)/1000
      FIN DESARME

      DESARMAR SOLO SI m_dvh=0
               PERFIL C6207
      FIN DESARME
      DESARMAR SOLO SI m_dvh=1
               PERFIL C6250
      FIN DESARME
            1 x m_alto - 79


      DESARMAR SOLO SI p_ref=0
      DESARMAR SOLO SI m_dvh=0
               PERFIL C6207
      FIN DESARME
      DESARMAR SOLO SI m_dvh=1
               PERFIL C6250
      FIN DESARME
      FIN DESARME
      DESARMAR SOLO SI p_ref>0
      DESARMAR SOLO SI m_dvh=1
         PERFIL C6251
      FIN DESARME
      DESARMAR SOLO SI m_dvh=0
         PERFIL C6208
      FIN DESARME
      FIN DESARME

            1 x m_alto - 79

      DESARMAR SOLO SI m_dvh=0
               PERFIL C6203
      FIN DESARME
      DESARMAR SOLO SI m_dvh=1
               PERFIL C6248
      FIN DESARME

            4 x m_alto - 79


         VIDRIOS
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
               2 de (m_ancho-m_desc)/3-29-54 x m_alto-172
               1 de (m_ancho-m_desc)/3-29-54 x m_alto-172
      FIN DESARME
            /* tra1= posicion del travesanio */
      DESARMAR SOLO SI tra1>0
               /* los de  abajo */
               2 de (m_ancho-m_desc)/3-29-54 x tra1-27-94+18
               1 de (m_ancho-m_desc)/3-29-54 x tra1-27-94+18
      PANELES
               /* los de  arriba */
               2 de (m_ancho-m_desc)/3-29-54 x m_alto-tra1-27-94+18
               1 de (m_ancho-m_desc)/3-29-54 x m_alto-tra1-27-94+18
      FIN DESARME
            /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0
               2*(tra2+1) de (m_ancho-m_desc)/3-29-54 x (m_alto-2*94+18*tra2-54*tra2)/(tra2+1)
               1*(tra2+1) de (m_ancho-m_desc)/3-29-54 x (m_alto-2*94+18*tra2-54*tra2)/(tra2+1)
      FIN DESARME
   FIN DESARME

   DESARMAR SOLO SI t_corte=2
      DESARMAR SOLO SI m_dvh=0
         PERFIL C6908
      FIN DESARME
      DESARMAR SOLO SI m_dvh=1
         PERFIL C6909
      FIN DESARME

         6 x (m_ancho-20)/3


      DESARMAR SOLO SI m_dvh=0
               PERFIL C6908
      FIN DESARME
      DESARMAR SOLO SI m_dvh=1
               PERFIL C6909
      FIN DESARME
               5 x m_alto - 80

      DESARMAR SOLO SI p_ref=0
         1 x m_alto - 80
      FIN DESARME
      DESARMAR SOLO SI p_ref>0
         DESARMAR SOLO SI m_dvh=1
            PERFIL C6911
         FIN DESARME
         DESARMAR SOLO SI m_dvh=0
            PERFIL C6910
         FIN DESARME
            1 x m_alto-79
            PARTE T128
            1 x 2
      FIN DESARME

        PERFIL C6907
            4 x m_alto - 80


         VIDRIOS
            3 de (m_ancho-20)/3-102 x m_alto-80-102
   FIN DESARME

RUBRO: 1
      DESARMAR SOLO SI mosquitero!=0
            /* Horizontales */
            PERFIL C6255
               CORTES A 45:
               2 x (m_ancho-m_desc)/3-9
               CORTES A RECTO:
         DESARMAR SOLO SI tramosq>0
               PERFIL C6256
                  tramosq x  (m_ancho-m_desc)/3-11-63
               PARTE I
                  tramosq x 4
               PARTE B9
                  tramosq*2 x ((m_ancho-m_desc)/3-11-63)/1000
               M.OBRA 0.10*tramosq
         FIN DESARME
            /* Verticales */
            PERFIL C6255
            CORTES A 45:
               2 x m_alto-79
            CORTES A RECTO:
         DESARMAR SOLO SI t_corte=1
            PERFIL C6228
               2 x m_alto-100
            PARTE T21
               2 x 2+INT((m_alto-100)/250)
         FIN DESARME
            PARTE E73
               1 x 4
            PARTE D
               1 x 16
            PARTE R43
               1 x 4
            PARTE B9
               2 x ((m_ancho-m_desc)/2-11)/1000
               2 x (m_alto-87)/1000
            PARTE B16
               2 x (m_alto-87)/1000
            TELA
               1 de (m_ancho-m_desc)/3 x m_alto-87

      FIN DESARME
        /*  Mosquitero */
FIN RUBRO:



         /* MECANISMO */


   DESARMAR SOLO SI t_corte=1
      SEGUN rueda PARTE R40,R42,R48,R49,R49R,R42R
         1 x 6
      SEGUN cierre PARTE H56,H57,H102_MODENA
         1 x 2
      PARTE I
         1 x 20
      PARTE T91
         1 x 8
      PARTE T130
         1 x 2
      PARTE T93
         1 x 2

   FIN DESARME
   DESARMAR SOLO SI t_corte=2
      SEGUN rueda PARTE R40,R42,R48,R49,R49R,R42R
         1 x 6
      SEGUN cierre PARTE H56,H57,H102_MODENA
         1 x 2
      PARTE E83
         1 x 4
      PARTE E97
         1 x 12
      PARTE E98
         1 x 12
      PARTE T127
         1 x 4
      PARTE T129
         1 x 2
      PARTE T130
         1 x 2
      PARTE T126
         1 x 2
      PARTE T131
         1 x 2
   FIN DESARME

         PARTE T90
            1 x 4
         PARTE T89
            1 x 8
         PARTE C14
            12 x ((m_ancho-m_desc)/3-29)/1000
            8 x (m_alto-79)/1000

     DESARMAR SOLO SI m_dvh=0
         PARTE B60
            6 x ((m_ancho-m_desc)/3-29-52)/1000
            6 x (m_alto-176)/1000
     FIN DESARME
     DESARMAR SOLO SI m_dvh=1
         PARTE B30
            12 x ((m_ancho-m_desc)/3-29-52)/1000
            12 x (m_alto-176)/1000
     FIN DESARME

         PARTE T69
            1 x 2

      DESARMAR SOLO SI taco_reg=1
         PARTE T88
            2 x 2+INT((m_ancho-200)/500)
            2 x 2+INT((m_alto-200)/500)
      FIN DESARME

         PARTE I
            2 x 2+INT((m_ancho-200)/500)
            2 x 2+INT((m_alto-200)/500)
         PARTE T95
            2 x 2+INT((m_ancho-200)/500)
            2 x 2+INT((m_alto-200)/500)
         PARTE B69
            2 x (m_ancho+m_alto)/1000
FIN DESARME


   /* Ventanas de 3 Hojas  hoja central y lateral misma guia */
   /* Ventanas de 3 Hojas */
   /*    CON HOJA LATERALES EN LA MISMA GUIA */
   DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=2
      DESARMAR SOLO SI t_corte=1
         DESARMAR SOLO SI m_dvh=0
                  PERFIL C6204
         FIN DESARME
         DESARMAR SOLO SI m_dvh=1
                  PERFIL C6249
         FIN DESARME

               6 x (m_ancho-m_desc)/3 - 8
            /* tra1 = posicion al eje de la unica traviesa */
         DESARMAR SOLO SI tra1>0 .AND. tra2=0
            DESARMAR SOLO SI m_dvh=0
                     PERFIL C6239
            FIN DESARME
            DESARMAR SOLO SI m_dvh=1
                     PERFIL C6253
            FIN DESARME

               3 x (m_ancho-m_desc)/3-29
               PARTE I
                  3 x 4
               PARTE T95
                  3 x 4
            DESARMAR SOLO SI m_dvh=0
                  PARTE B60
                     6 x ((m_ancho-m_desc)/3-29)/1000
            FIN DESARME
            DESARMAR SOLO SI m_dvh=1
                  PARTE B30
                     12 x ((m_ancho-m_desc)/3-29)/1000
            FIN DESARME
         FIN DESARME

               /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0 .AND. tra1=0
            DESARMAR SOLO SI m_dvh=0
                  PERFIL C6239
            FIN DESARME
            DESARMAR SOLO SI m_dvh=1
                  PERFIL C6253
            FIN DESARME

               3*tra2 x (m_ancho-m_desc)/3-8
               PARTE I
                  1 x 4*tra2
               PARTE T95
                  1 x 4*tra2
           DESARMAR SOLO SI m_dvh=0
               PARTE B60
                  4*tra2 x ((m_ancho-m_desc)/3-29)/1000
           FIN DESARME
           DESARMAR SOLO SI m_dvh=1
               PARTE B30
                  8*tra2 x ((m_ancho-m_desc)/3-29)/1000
           FIN DESARME

         FIN DESARME
            DESARMAR SOLO SI m_dvh=0
               PERFIL C6207
            FIN DESARME
            DESARMAR SOLO SI m_dvh=1
               PERFIL C6250
            FIN DESARME
            2 x m_alto - 79

         DESARMAR SOLO SI p_ref>0
            DESARMAR SOLO SI m_dvh=0
               PERFIL C6207
            FIN DESARME
            DESARMAR SOLO SI m_dvh=1
               PERFIL C6250
            FIN DESARME
         FIN DESARME
         DESARMAR SOLO SI p_ref>0
            DESARMAR SOLO SI m_dvh=1
               PERFIL C6251
            FIN DESARME
            DESARMAR SOLO SI m_dvh=0
               PERFIL C6208
            FIN DESARME
         FIN DESARME

            2 x m_alto - 79

         DESARMAR SOLO SI m_dvh=0
             PERFIL C6203
         FIN DESARME
         DESARMAR SOLO SI m_dvh=1
             PERFIL C6248
         FIN DESARME
             2 x m_alto - 79

            VIDRIOS
         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            2 de (m_ancho-m_desc)/3-8-48 x m_alto-172
            1 de (m_ancho-m_desc)/3-8-48 x m_alto-172
         FIN DESARME
         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            /* los de  abajo */
            2 de (m_ancho-m_desc)/3-8-48 x tra1-27-94+18
            1 de (m_ancho-m_desc)/3-8-48 x tra1-27-94+18
         PANELES
            /* los de  arriba */
            2 de (m_ancho-m_desc)/3-8-48 x m_alto-tra1-27-94-18
            1 de (m_ancho-m_desc)/3-8-48 x m_alto-tra1-27-94-18
         FIN DESARME
         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            2*(tra2+1) de (m_ancho-m_desc)/3-8-48 x (m_alto-2*94+18*tra2-54*tra2)/(tra2+1)
            1*(tra2+1) de (m_ancho-m_desc)/3-8-48 x (m_alto-2*94+18*tra2-54*tra2)/(tra2+1)
         FIN DESARME
      FIN DESARME
      DESARMAR SOLO SI t_corte=2
          DESARMAR SOLO SI m_dvh=0
                  PERFIL C6908
          FIN DESARME
          DESARMAR SOLO SI m_dvh=1
                  PERFIL C6909
          FIN DESARME

               6 x m_ancho/3 + 35
               4 x m_alto - 80

         DESARMAR SOLO SI p_ref=0
            2 x m_alto - 80
         FIN DESARME
         DESARMAR SOLO SI p_ref>0
            DESARMAR SOLO SI m_dvh=1
               PERFIL C6911
            FIN DESARME
            DESARMAR SOLO SI m_dvh=0
               PERFIL C6910
            FIN DESARME
               2 x m_alto-79
               PARTE T128
                  1 x 4
         FIN DESARME




            PERFIL C6907
               4 x m_alto - 80

            VIDRIOS
               DESARMAR SOLO SI tra1=0 .AND. tra2=0
                  3 de m_ancho/3+15-102 x m_alto-182
               FIN DESARME
           FIN DESARME

    RUBRO: 1
         DESARMAR SOLO SI mosquitero!=0
            SEPARACION
            /* Horizontales */
            PERFIL C6255
               CORTES A 45:
               2 x (m_ancho-m_desc)/3+12
               CORTES A RECTO:
            DESARMAR SOLO SI tramosq>0
               PERFIL C6256
                  tramosq x  (m_ancho-m_desc)/3-11-63
               PARTE I
                  tramosq x 4
               PARTE B9
                  tramosq*2 x ((m_ancho-m_desc)/3-11-63)/1000
               M.OBRA 0.10*tramosq
            FIN DESARME
            /* Verticales */
            PERFIL C6255
            CORTES A 45:
               2 x m_alto-79
            CORTES A RECTO:
            DESARMAR SOLO SI t_corte=1
            PERFIL C6228
               2 x m_alto-100
            PARTE T21
               2 x 2+INT((m_alto-100)/250)
            FIN DESARME
            PARTE E73
               1 x 4
            PARTE D
               1 x 16
            PARTE R43
               1 x 4
            PARTE B9
               2 x ((m_ancho-m_desc)/2-11)/1000
               2 x (m_alto-87)/1000
            PARTE B16
               2 x (m_alto-87)/1000
            M.OBRA 0.28
            TELA
               1 de (m_ancho-m_desc)/3 x m_alto-87

         FIN DESARME       /*  Mosquitero */
    FIN RUBRO:

         /* MECANISMO */

   DESARMAR SOLO SI t_corte=1
      SEGUN rueda PARTE R40,R42,R48,R49,R49R,R42R
         1 x 6
      SEGUN cierre PARTE H56,H57,H102_MODENA
         1 x 2
      PARTE I
         1 x 16
      PARTE T91
         1 x 8
      PARTE T130
         1 x 2
      PARTE T93
         1 x 4
      PARTE T69
         1 x 2

   FIN DESARME
   DESARMAR SOLO SI t_corte=2
      SEGUN rueda PARTE R40,R42,R48,R49,R49R,R42R
         1 x 6
      SEGUN cierre PARTE H56,H57,H102_MODENA
         1 x 2
      PARTE E83
         1 x 4
      PARTE E97
         1 x 12
      PARTE E98
         1 x 12
      PARTE T127
         1 x 4
      PARTE T129
         1 x 2
      PARTE T130
         1 x 2
      PARTE T126
         1 x 2
      PARTE T131
         1 x 2
   FIN DESARME


         PARTE T90
            1 x 8
         PARTE T89
            1 x 4
         PARTE C14
            12 x ((m_ancho-m_desc)/3-8)/1000
            8 x (m_alto-79)/1000
      DESARMAR SOLO SI m_dvh=0
         PARTE B60
            6 x ((m_ancho-m_desc)/3-29-52)/1000
            6 x (m_alto-176)/1000
      FIN DESARME
      DESARMAR SOLO SI m_dvh=1
         PARTE B30
            12 x ((m_ancho-m_desc)/3-29-52)/1000
            12 x (m_alto-176)/1000
      FIN DESARME

         PARTE T69
            1 x 2
         DESARMAR SOLO SI taco_reg=1
         PARTE T88
            2 x 2+INT((m_ancho-200)/500)
            2 x 2+INT((m_alto-200)/500)

         FIN DESARME
         PARTE I
            2 x 2+INT((m_ancho-200)/500)
            2 x 2+INT((m_alto-200)/500)
         PARTE T95
            2 x 2+INT((m_ancho-200)/500)
            2 x 2+INT((m_alto-200)/500)
         PARTE B69
            2 x (m_ancho+m_alto)/1000

   FIN DESARME
 /* Ventanas de 3 Hojas */










   DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=3
      DESARMAR SOLO SI t_corte=1
         DESARMAR SOLO SI m_dvh=0
                 PERFIL C6204
         FIN DESARME
         DESARMAR SOLO SI m_dvh=1
                 PERFIL C6249
         FIN DESARME

            2 x (m_ancho-m_desc-24)/2
            4 x (m_ancho-m_desc-24)/4

         /* tra1 = posicion al eje de la unica traviesa */
         DESARMAR SOLO SI tra1>0 .AND. tra2=0
            DESARMAR SOLO SI m_dvh=0
               PERFIL C6239
            FIN DESARME
            DESARMAR SOLO SI m_dvh=1
               PERFIL C6253
            FIN DESARME

               1 x (m_ancho-m_desc-24)/2
               2 x (m_ancho-m_desc-24)/4

            PARTE I
               3 x 4
            PARTE T95
               3 x 4
      DESARMAR SOLO SI m_dvh=0
            PARTE B60
                6 x ((m_ancho-m_desc)/3-29)/1000
      FIN DESARME
      DESARMAR SOLO SI m_dvh=1
            PARTE B30
               12 x ((m_ancho-m_desc)/3-29)/1000
      FIN DESARME

         FIN DESARME
         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0 .AND. tra1=0
            DESARMAR SOLO SI m_dvh=0
               PERFIL C6239
            FIN DESARME
            DESARMAR SOLO SI m_dvh=1
               PERFIL C6253
            FIN DESARME
               tra2 x (m_ancho-m_desc-24)/2
               2*tra2 x (m_ancho-m_desc-24)/4
            PARTE I
               1 x 4*tra2
            PARTE T95
               1 x 4*tra2
         DESARMAR SOLO SI m_dvh=0
            PARTE B60
               4*tra2 x ((m_ancho-m_desc)/3-29)/1000
         FIN DESARME
         DESARMAR SOLO SI m_dvh=1
            PARTE B30
               8*tra2 x ((m_ancho-m_desc)/3-29)/1000
         FIN DESARME

         FIN DESARME
            DESARMAR SOLO SI m_dvh=0
               PERFIL C6207
            FIN DESARME
            DESARMAR SOLO SI m_dvh=1
               PERFIL C6250
            FIN DESARME
            2 x m_alto - 79


         DESARMAR SOLO SI p_ref=0
            DESARMAR SOLO SI m_dvh=0
               PERFIL C6207
            FIN DESARME
            DESARMAR SOLO SI m_dvh=1
               PERFIL C6250
            FIN DESARME
         FIN DESARME
         DESARMAR SOLO SI p_ref>0
            DESARMAR SOLO SI m_dvh=1
               PERFIL C6251
            FIN DESARME
            DESARMAR SOLO SI m_dvh=0
               PERFIL C6208
            FIN DESARME
         FIN DESARME

            2 x m_alto - 79

         DESARMAR SOLO SI m_dvh=0
            PERFIL C6203
         FIN DESARME
         DESARMAR SOLO SI m_dvh=1
            PERFIL C6248
         FIN DESARME
            2 x m_alto - 79

         VIDRIOS
         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            2 de (m_ancho-m_desc-24)/4-48 x m_alto-172
            1 de (m_ancho-m_desc-24)/2-48 x m_alto-172
         FIN DESARME
         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            /* los de  abajo */
            2 de (m_ancho-m_desc-24)/4-48 x tra1-27-94+18
            1 de (m_ancho-m_desc-24)/2-48 x tra1-27-94+18
         PANELES
            /* los de  arriba */
            2 de (m_ancho-m_desc-24)/4-48 x m_alto-tra1-27-94-18
            1 de (m_ancho-m_desc-24)/2-48 x m_alto-tra1-27-94-18
         FIN DESARME
            /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            2*(tra2+1) de (m_ancho-m_desc-24)/4-48 x (m_alto-2*94+18*tra2-54*tra2)/(tra2+1)
            1*(tra2+1) de (m_ancho-m_desc-24)/2-48 x (m_alto-2*94+18*tra2-54*tra2)/(tra2+1)
         FIN DESARME
      FIN DESARME
      DESARMAR SOLO SI t_corte=2
         DESARMAR SOLO SI m_dvh=0
                 PERFIL C6908
         FIN DESARME
         DESARMAR SOLO SI m_dvh=1
                 PERFIL C6909
         FIN DESARME

            2 x (m_ancho+46)/2
            4 x (m_ancho+46)/4
            4 x m_alto - 80

         DESARMAR SOLO SI p_ref=0
            2 x m_alto - 80
         FIN DESARME
         DESARMAR SOLO SI p_ref>0
            DESARMAR SOLO SI m_dvh=1
               PERFIL C6911
            FIN DESARME
            DESARMAR SOLO SI m_dvh=0
               PERFIL C6910
            FIN DESARME
               2 x m_alto-79
               PARTE T128
                  1 x 4
         FIN DESARME

            PERFIL C6907
            4 x m_alto - 80

         VIDRIOS
            2 de (m_ancho+46)/4-102 x m_alto-182
            1 de (m_ancho+46)/2-102 x m_alto-182
      FIN DESARME
RUBRO: 1
      DESARMAR SOLO SI mosquitero!=0
         /* Horizontales */
         PERFIL C6255
         CORTES A 45:
            4 x (m_ancho-m_desc-24)/4+20
         CORTES A RECTO:
         DESARMAR SOLO SI tramosq>0
            PERFIL C6256
               tramosq x (m_ancho-m_desc-24)/4-20-63
            PARTE I
               tramosq x 4
            PARTE B9
               tramosq*2 x ((m_ancho-m_desc)/3-11-63)/1000
            M.OBRA 0.10*tramosq
         FIN DESARME
         /* Verticales */
         PERFIL C6255
         CORTES A 45:
            4 x m_alto-79
         CORTES A RECTO:
         DESARMAR SOLO SI t_corte=1
         PERFIL C6228
            2 x m_alto-100
         PARTE T21
            2 x 2+INT((m_alto-100)/250)
         FIN DESARME
         PARTE E73
            2 x 4
         PARTE D
            1 x 16
         PARTE R43
            2 x 4
         PARTE B9
            2 x ((m_ancho-m_desc)/2-11)/1000
            2 x (m_alto-87)/1000
         PARTE B16
            2 x (m_alto-87)/1000
         M.OBRA 0.28
         TELA
            2 de (m_ancho-m_desc-24)/4 x m_alto-87

      FIN DESARME       /*  Mosquitero */
FIN RUBRO:

      /* MECANISMO */

   DESARMAR SOLO SI t_corte=1
      SEGUN rueda PARTE R40,R42,R48,R49,R49R,R42R
         1 x 6
      SEGUN cierre PARTE H56,H57,H102_MODENA
         1 x 2
      PARTE I
         1 x 16
      PARTE T91
         1 x 8
      PARTE T130
         1 x 2
      PARTE T93
         1 x 4
      PARTE T69
         1 x 2

   FIN DESARME
   DESARMAR SOLO SI t_corte=2
      SEGUN rueda PARTE R40,R42,R48,R49,R49R,R42R
         1 x 6
      SEGUN cierre PARTE H56,H57,H102_MODENA
         1 x 2
      PARTE E83
         1 x 4
      PARTE E97
         1 x 12
      PARTE E98
         1 x 12
      PARTE T127
         1 x 4
      PARTE T129
         1 x 2
      PARTE T130
         1 x 2
      PARTE T126
         1 x 2
      PARTE T131
         1 x 2
   FIN DESARME


         PARTE T90
            1 x 8
         PARTE T89
            1 x 4
         PARTE C14
            12 x ((m_ancho-m_desc)/3-8)/1000
            8 x (m_alto-79)/1000
      DESARMAR SOLO SI m_dvh=0
         PARTE B60
            6 x ((m_ancho-m_desc)/3-29-52)/1000
            6 x (m_alto-176)/1000
      FIN DESARME
      DESARMAR SOLO SI m_dvh=1
         PARTE B30
            12 x ((m_ancho-m_desc)/3-29-52)/1000
            12 x (m_alto-176)/1000
      FIN DESARME

         PARTE T69
            1 x 2
         DESARMAR SOLO SI taco_reg=1
         PARTE T88
            2 x 2+INT((m_ancho-200)/500)
            2 x 2+INT((m_alto-200)/500)

         FIN DESARME
         PARTE I
            2 x 2+INT((m_ancho-200)/500)
            2 x 2+INT((m_alto-200)/500)
         PARTE T95
            2 x 2+INT((m_ancho-200)/500)
            2 x 2+INT((m_alto-200)/500)
         PARTE B69
            2 x (m_ancho+m_alto)/1000

   FIN DESARME   /* Ventanas de 3 Hojas */







 /* Ventanas de 4 Hojas */
   DESARMAR SOLO SI n_hojas=4
      DESARMAR SOLO SI t_corte=1
         CORTES A RECTO:
         DESARMAR SOLO SI m_dvh=0
            PERFIL C6204
         FIN DESARME
         DESARMAR SOLO SI m_dvh=1
             PERFIL C6249
         FIN DESARME

            8 x (m_ancho-m_desc)/4 - 12

      /* tra1 = posicion al eje de la unica traviesa */
         DESARMAR SOLO SI tra1>0 .AND. tra2=0
            DESARMAR SOLO SI m_dvh=0
               PERFIL C6239
            FIN DESARME
            DESARMAR SOLO SI m_dvh=1
               PERFIL C6253
            FIN DESARME

            4 x (m_ancho-m_desc)/4-12
            PARTE I
               1 x 16
            PARTE T95
               1 x 16
      DESARMAR SOLO SI m_dvh=0
            PARTE B60
               8 x ((m_ancho-m_desc)/4-12)/1000
      FIN DESARME
      DESARMAR SOLO SI m_dvh=1
            PARTE B30
               16 x ((m_ancho-m_desc)/4-12)/1000
      FIN DESARME

         FIN DESARME
      /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0 .AND. tra1=0
            DESARMAR SOLO SI m_dvh=0
               PERFIL C6239
            FIN DESARME
            DESARMAR SOLO SI m_dvh=1
               PERFIL C6253
            FIN DESARME

            4*tra2 x (m_ancho-m_desc)/4-12
            PARTE I
               1 x 4*(4*tra2)
            PARTE T95
               1 x 4*(4*tra2)
         DESARMAR SOLO SI m_dvh=0
            PARTE B60
               8*tra2 x ((m_ancho-m_desc)/4-12)/1000
         FIN DESARME
         DESARMAR SOLO SI m_dvh=1
            PARTE B30
               16*tra2 x ((m_ancho-m_desc)/4-12)/1000
         FIN DESARME

         FIN DESARME

   /* hoja parante central */

            DESARMAR SOLO SI m_dvh=0
               PERFIL C6207
            FIN DESARME
            DESARMAR SOLO SI m_dvh=1
               PERFIL C6250
            FIN DESARME
               2 x m_alto - 79

         DESARMAR SOLO SI p_ref=0
            DESARMAR SOLO SI m_dvh=0
               PERFIL C6207
            FIN DESARME
            DESARMAR SOLO SI m_dvh=1
               PERFIL C6250
            FIN DESARME
         FIN DESARME
         DESARMAR SOLO SI p_ref>0
            DESARMAR SOLO SI m_dvh=1
               PERFIL C6251
            FIN DESARME
            DESARMAR SOLO SI m_dvh=0
               PERFIL C6208
            FIN DESARME
         FIN DESARME

         2 x m_alto - 79

         DESARMAR SOLO SI m_dvh=0
         	PERFIL C6203
         FIN DESARME
         DESARMAR SOLO SI m_dvh=1
         	PERFIL C6248
         FIN DESARME

            4 x m_alto - 79

         PERFIL C6246
            1 x m_alto - 79

      VIDRIOS
         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            4 de (m_ancho-m_desc)/4-12-72+18 x m_alto-172
         FIN DESARME
         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            4 de (m_ancho-m_desc)/4-12-72+18 x tra1-27-94+18
         PANELES
            4 de (m_ancho-m_desc)/4-12-72+18 x m_alto-tra1-27-94+18
         FIN DESARME
         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            4*(tra2+1) de (m_ancho-m_desc)/4-12-72+18 x (m_alto-2*94+18*tra2-54*tra2)/(tra2+1)
         FIN DESARME
      FIN DESARME


      DESARMAR SOLO SI t_corte=2
         CORTES A 45:
         DESARMAR SOLO SI m_dvh=0
            PERFIL C6908
         FIN DESARME
         DESARMAR SOLO SI m_dvh=1
            PERFIL C6909
         FIN DESARME

               8 x m_ancho/4 + 11
               6 x m_alto - 80

         DESARMAR SOLO SI p_ref=0
            2 x m_alto - 80
         FIN DESARME
         DESARMAR SOLO SI p_ref>0
            DESARMAR SOLO SI m_dvh=1
               PERFIL C6911
            FIN DESARME
            DESARMAR SOLO SI m_dvh=0
               PERFIL C6910
            FIN DESARME
               2 x m_alto-79
               PARTE T128
                  1 x 4
         FIN DESARME


            PERFIL C6907
               4 x m_alto - 80

            PERFIL C6246
               1 x m_alto - 79

      VIDRIOS
         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            4 de (m_ancho)/4+11-102 x m_alto-182
         FIN DESARME
      FIN DESARME


RUBRO: 1
      DESARMAR SOLO SI mosquitero!=0
         /* Horizontales */
         PERFIL C6255
            CORTES A 45:
            4 x m_ancho/4
            CORTES A RECTO:
         DESARMAR SOLO SI tramosq>0
            PERFIL C6256
               2*tramosq x  (m_ancho-m_desc)/4-42
            PARTE I
               2*tramosq x 4
            PARTE B9
               tramosq*2*2 x ((m_ancho-m_desc)/4-42)/1000
            M.OBRA 0.10*tramosq*2
         FIN DESARME

         /* Verticales */
         PERFIL C6255
         CORTES A 45:
            4 x m_alto-89
         CORTES A RECTO:
         DESARMAR SOLO SI t_corte=1
         PERFIL C6228
            2 x m_alto
         PARTE T21
            2 x 2+INT((m_alto-100)/250)
         FIN DESARME
         PARTE E73
            1 x 8
         PARTE R43
            1 x 8
         PARTE B9
            4 x ((m_ancho-m_desc)/4-42)/1000
            4 x (m_alto-87)/1000
         PARTE B16
            2 x (m_alto-87)/1000
         M.OBRA 0.30
         TELA
            2 de (m_ancho-m_desc)/4 x m_alto-87

      FIN DESARME
     /*  Mosquitero */
FIN RUBRO:



   DESARMAR SOLO SI t_corte=1
      SEGUN rueda PARTE R40,R42,R48,R49,R49R,R42R
         1 x 8
      SEGUN cierre PARTE H56,H57,H102_MODENA
         1 x 3
      PARTE I
         1 x 16
      PARTE T91
         1 x 8
      PARTE T130
         1 x 4
      PARTE T93
         1 x 4
      PARTE T69
         1 x 2

   FIN DESARME
   DESARMAR SOLO SI t_corte=2
      SEGUN rueda PARTE R40,R42,R48,R49,R49R,R42R
         1 x 8
      SEGUN cierre PARTE H56,H57,H102_MODENA
         1 x 3
      PARTE E83
         1 x 4
      PARTE E97
         1 x 16
      PARTE E98
         1 x 16
      PARTE T127
         1 x 4
      PARTE T129
         1 x 2
      PARTE T130
         1 x 2
      PARTE T126
         1 x 2
      PARTE T131
         1 x 2
   FIN DESARME


         PARTE T90
            1 x 8
         PARTE T89
            1 x 8
         PARTE C14
            12 x ((m_ancho-m_desc)/4+11)/1000
            12 x (m_alto-79)/1000
      DESARMAR SOLO SI m_dvh=0
         PARTE B60
            8 x ((m_ancho-m_desc)/4+11)/1000
            8 x (m_alto-176)/1000
      FIN DESARME
      DESARMAR SOLO SI m_dvh=1
         PARTE B30
            16 x ((m_ancho-m_desc)/4+11)/1000
            16 x (m_alto-176)/1000
      FIN DESARME

         PARTE T69
            1 x 2
         DESARMAR SOLO SI taco_reg=1
         PARTE T88
            2 x 2+INT((m_ancho-200)/500)
            2 x 2+INT((m_alto-200)/500)

         FIN DESARME
         PARTE I
            2 x 2+INT((m_ancho-200)/500)
            2 x 2+INT((m_alto-200)/500)
         PARTE T95
            2 x 2+INT((m_ancho-200)/500)
            2 x 2+INT((m_alto-200)/500)
         PARTE B69
            2 x (m_ancho+m_alto)/1000



  FIN DESARME   /* Ventanas de 4 Hojas */


m_cant_vid:=cant_vid()
m_2vid:=m2_vid()

PRODUCTO MACORR










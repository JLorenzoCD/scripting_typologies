/* Ventana guillotina ojo descuentos invertidos */

CALCULOS
	VARIABLE m_aux
	m_aux:=m_alto
	m_alto:=m_ancho
	m_ancho:=m_aux
FIN CALCULOS

DESARMAR SOLO SI umbral=1
   VARIABLE perfil_2
   VARIABLE perfil_3

   PERFIL 1

      2 x m_alto
      2 x m_ancho

   SEPARACION

      /* Parantes laterales */
      PERFIL 3
         2 x m_alto-66

      /* Parantes Centrales */
      PERFIL 4
          2 x m_alto-66

      PERFIL 2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         4 x m_ancho/2-100
      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0
         6 x m_ancho/2-100
      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0
         4+2*tra2 x m_ancho/2-100
      FIN DESARME



      DESARMAR SOLO SI mosquitero!=0
         SEPARACION
         /* Verticales */
         PERFIL 5
            2 x m_alto-73
         /* Horizontales */
         PERFIL 5
            2 x m_ancho/2-44
         DESARMAR SOLO SI tramosq>0
            PERFIL 90
               2 x m_ancho/2-108.5
            FIN DESARME

        /* Partes */

        PARTE C3
           1 x 2
        PARTE B
           1 x 4
        PARTE D
           1 x 16
        PARTE P
           1 x 2
        PARTE N
           2 x (m_ancho/2-44)/1000
           2 x (m_alto-73)/1000
        PARTE O
           2 x (m_alto-73)/1000
        M.OBRA 0.28

         TELA
            1 de m_ancho/2 x m_alto-73
        
      FIN DESARME
       /*  Mosquitero */

      DESARMAR SOLO SI tipo_gui=2
          SEPARACION
          PERFIL 715
             1 x m_alto
          PERFIL 20 
             2 x m_alto+50
      FIN DESARME

      DESARMAR SOLO SI tipo_gui=3
          SEPARACION
          PERFIL 715
             1 x m_alto
          PERFIL 21
             2 x m_alto+50
      FIN DESARME

      DESARMAR SOLO SI dobletapa!=0
           PERFIL 715
              1 x m_alto
      FIN DESARME 




      VIDRIOS

         SEPARACION

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            2 de m_alto-148 x m_ancho/2-100+18
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            2 de tra1-33-41-16.5 x m_ancho/2-100+18
            2 de m_alto-tra1-33-41-16.5 x m_ancho/2-100+18
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            2*(tra2+1) de (m_alto-66-82-33*tra2)/(tra2+1) x m_ancho/2-100+18
         FIN DESARME

FIN DESARME


DESARMAR SOLO SI umbral=0
/* Ventana guillotina ojo descuentos invertidos */

   VARIABLE perfil_2
   VARIABLE perfil_3

   PERFIL 1

      1 x m_alto
      2 x m_ancho

   SEPARACION

      /* Parantes laterales */
      PERFIL 3
         2 x m_alto-66

      /* Parantes Centrales */
      PERFIL 4
          2 x m_alto-66


      PERFIL 2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         4 x m_ancho/2-83.5
      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0
         6 x m_ancho/2-83.5
      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0
         4+2*tra2 x m_ancho/2-83.5
      FIN DESARME



      DESARMAR SOLO SI mosquitero!=0
         SEPARACION
         /* Verticales */
         PERFIL 5
            2 x m_alto-73
         /* Horizontales */
         PERFIL 5
            2 x m_ancho/2-27
         DESARMAR SOLO SI tramosq>0
            PERFIL 90
               2 x m_ancho/2-91.5
            FIN DESARME

        /* Partes */

        PARTE C3
           1 x 2
        PARTE B
           1 x 4
        PARTE D
           1 x 16
        PARTE P
           1 x 2
        PARTE N
           2 x (m_ancho/2-44)/1000
           2 x (m_alto-73)/1000
        PARTE O
           2 x (m_alto-73)/1000
        M.OBRA 0.28

         TELA
            1 de m_ancho/2 x m_alto-73
        
      FIN DESARME
       /*  Mosquitero */

      DESARMAR SOLO SI tipo_gui=2
          SEPARACION
          PERFIL 715
             1 x m_alto
          PERFIL 20 
             2 x m_alto+50
      FIN DESARME

      DESARMAR SOLO SI tipo_gui=3
          SEPARACION
          PERFIL 715
             1 x m_alto
          PERFIL 21
             2 x m_alto+50
      FIN DESARME

      DESARMAR SOLO SI dobletapa!=0
           PERFIL 715
              1 x m_alto
      FIN DESARME 

      VIDRIOS

         SEPARACION

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            2 de m_alto-148 x m_ancho/2-83.5+18
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            2 de tra1-33-41-16.5 x m_ancho/2-83.5+18
            2 de m_alto-tra1-33-41-16.5 x m_ancho/2-83.5+18
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            2*(tra2+1) de (m_alto-66-82-33*tra2)/(tra2+1) x m_ancho/2-83.5+18
         FIN DESARME

FIN DESARME


/* accesorios para los dos casos */

      /* MECANISMO */

      PARTE A
	DESARMAR SOLO SI umbral=1
         1 x 4
        FIN DESARME
	DESARMAR SOLO SI umbral=0
         1 x 2
        FIN DESARME
      PARTE D
         1 x 36    
      PARTE HB501
         1 x 8
      PARTE 1088
         1 x 1
      PARTE I
         1 x 8
      PARTE J
         1 x 8
      PARTE ABB
         1 x 4
      PARTE ABC
         1 x 4
       PARTE ABD
         1 x 2
      PARTE H
         8 x (m_ancho/2-100)/1000
         6 x (m_alto-66)/1000
      PARTE QRS
         4 x (m_ancho/2-100)/1000
         4 x (m_alto-66-100)/1000

      M.OBRA 1.1
     




/* Ventana Corrediza */
/* el perfil para la caja de agua se dio de baja */

   VARIABLE perfil_2
   VARIABLE perfil_3

CALCULOS
tra_n:=0
FIN CALCULOS   	

	   CORTES A 45:
	   PERFIL 691
	      2 x m_ancho
	      2 x m_alto
	   SEPARACION


      CORTES A RECTO:
      PERFIL 2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         6 x m_ancho/3-81
      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0
         9 x m_ancho/3-81
         PARTE I
            1 x 6
         PARTE J
            1 x 6
         PARTE QRS
            6 x (m_ancho/3-81)/1000

         
      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0
         3*(2+tra2) x m_ancho/3-81
         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-81)/1000


      FIN DESARME


      /* Parantes laterales */
      PERFIL 3
         2 x m_alto-66

      /* Parantes Centrales */
      PERFIL 4
          4 x m_alto-66

      DESARMAR SOLO SI mosquitero!=0
         SEPARACION
         /* Horizontales */
         PERFIL 5
            CORTES A 45:
            2 x (2*m_ancho/3)-57+10
         DESARMAR SOLO SI tramosq>0
            PERFIL 90
               CORTES A RECTO:
               tramosq x ((m_ancho/3)*2)-121.5+10
            PARTE I
               tramosq x 4
            PARTE N
               tramosq*2 x (((m_ancho/3)*2)-121.5+10)/1000
            FIN DESARME
         /* Verticales */
         PERFIL 5
            CORTES A 45:
            2 x m_alto-73
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
           2 x ((2*m_ancho/3)*2-57)/1000
           2 x (m_alto-73)/1000
        PARTE O
           2 x (m_alto-73)/1000

         TELA
            1 de (m_ancho/3)*2 x (m_alto-73)
      FIN DESARME       /*  Mosquitero */

       /* Si tiene gcomun no tiene gbarrios y viceversa */

      /* Guia Comun y tapacinta para 2,3,4 hojas */
		DESARMAR SOLO SI tipo_gui=2
			SEPARACION
            PERFIL 715
               1 x m_alto
            PERFIL 20
               2 x m_alto+50

         PARTE D 
            1 x 8*m_alto/1000
         
         M.OBRA 0.10
      FIN DESARME

      /* Guia Barrios y tapacintas */
		DESARMAR SOLO SI tipo_gui=3
		  SEPARACION
           PERFIL 715
             1 x m_alto
           PERFIL 21
             2 x m_alto+50
        PARTE D
            1 x 8*m_alto/1000
        M.OBRA  0.10

        

      FIN DESARME

      DESARMAR SOLO SI dobletapa!=0
         PERFIL 715
            1 x m_alto

         M.OBRA 0.05

      FIN DESARME


      VIDRIOS

      
         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            3 de m_ancho/3-63 x m_alto-148
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            3 de m_ancho/3-63 x tra1-74-16.5
            PANELES
            3 de m_ancho/3-63 x m_alto-tra1-74-16.5
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            3*(tra2+1) de m_ancho/3-63 x (m_alto-66-82-33*tra2)/(tra2+1)
         FIN DESARME




      /* MECANISMO */

      PARTE A
         1 x 4
      PARTE D
         1 x 36    
      PARTE C1
         1 x 6
      PARTE 1088
         1 x 2
      PARTE I
         1 x 12
      PARTE J
         1 x 12
      PARTE ABB
         1 x 8
      PARTE ABC
	 1 x 4
      PARTE ABD
         1 x 4

      PARTE H
         12 x (m_ancho/3-80)/1000
         8 x (m_alto-66)/1000
      PARTE QRS
         6 x (m_ancho/3-80)/1000
         6 x (m_alto-66-100)/1000

m_cant_vid:=cant_vid()
m_2vid:=m2_vid()

PRODUCTO MOCORR     


     /* Ventanas de Tres Hojas*/





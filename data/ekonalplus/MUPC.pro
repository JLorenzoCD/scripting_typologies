
/* MARCO UNIFICADO CON POSTIGON CORREDIZO LINEA EKONAL */

CALCULOS
   tra_n:=0
FIN CALCULOS

        SEGUN marco PERFIL 6669,714

      CORTES A 45:
          2 x m_ancho
          2 x m_alto

   SEPARACION

    CORTES A RECTO:

   /* Ventanas de 2 Hojas */
   DESARMAR SOLO SI n_hojas=2

      PERFIL 902

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         4 x m_ancho/2-100
      FIN DESARME

      /* tra1= POSICION del travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         6 x m_ancho/2-100

         PARTE I
            1 x 4
         PARTE J
            1 x 4
         PARTE QRS
            4 x (m_ancho/2-100)/1000

         
      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0 .AND. tra1=0
         4+2*tra2 x m_ancho/2-100

         PARTE I
            1 x 4*tra2
         PARTE J
            1 x 4*tra2
         PARTE QRS
            4*tra2 x (m_ancho/2-100)/1000


      FIN DESARME


      /* Parantes laterales */
      PERFIL 903
         2 x m_alto-66

      /* Parantes Centrales */
      PERFIL 904
          2 x m_alto-66

      DESARMAR SOLO SI mosquitero!=0
         SEPARACION
         /* Horizontales */
         PERFIL 905
            CORTES A 45:
            2 x m_ancho/2-44
            CORTES A RECTO:
         DESARMAR SOLO SI tramosq>0
            PERFIL 90
               tramosq x  m_ancho/2-108.5+10
            PARTE I
               tramosq x 4
            PARTE N
               tramosq*2 x (m_ancho/2-108.5)/1000
         FIN DESARME
         /* Verticales */
         PERFIL 905
            CORTES A 45:
            2 x m_alto-75
            CORTES A RECTO:

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

         TELA
            1 de m_ancho/2 x m_alto-73
        
      FIN DESARME       /*  Mosquitero */


      VIDRIOS

         SEPARACION

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            2 de m_ancho/2-100+18 x m_alto-148
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            2 de m_ancho/2-100+18 x tra1-33-41-16.5
            2 de m_ancho/2-100+18 x m_alto-tra1-33-41-16.5
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            2*(tra2+1) de m_ancho/2-100+18 x (m_alto-66-82-33*tra2)/(tra2+1)
         FIN DESARME

      /* MECANISMO */

      PARTE A
         1 x 4
      DESARMAR SOLO SI marco=2
      PARTE A
         2 x 4
      PARTE D
         1 x 64
      FIN DESARME
      PARTE D
         1 x 36    
      PARTE C1
         1 x 4
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
         4 x (m_alto-66-)/1000


	/* POSTIGON QUE SE LE AGREGA */

	PERFIL 902
		2*n_hojas x m_ancho/2-100
	PERFIL 904
		2 x m_alto-66
	PERFIL 903
		2 x m_alto-66


	PERFIL 5800
     /*           n_hojas*INT(m_alto/1000*14+0.5) x m_ancho/2-82
                2*INT((m_alto-160)/62) x m_ancho/2-82

	/* ACCESORIOS */
	PARTE H14P
		1 x 2 
		

   FIN DESARME   /* Ventanas de Dos Hojas */


PRODUCTO MOCORR     
PRODUCTO MOPOST





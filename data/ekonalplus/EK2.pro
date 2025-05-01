/* Ventana Corrediza ekonal*/
/* Nota: Ver donde van los perfiles 6567 y 6568 (guias )

/* Se le agrega un postigon, solo esta preparada para  
/* DOS HOJAS!!! */

CALCULOS
   tra_n:=0
FIN CALCULOS

/* 		MUPR   						MUPRV
/* 		COMUN							VARIANTE
/*          6576                            E4047
/*			902							6328

   VARIABLE perfil_2
   VARIABLE perfil_3

   PERFIL 6575

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
         4 x (m_alto-66-100)/1000

     

	/* HOJAS DEL POSTIGON QUE SE LE AGREGA */

   /* 


	/* Zocalo y Cabezal del POSTIGON */
	/* tipo_zoc = 1  Perfil 902
	/* tipo_zoc = 2  Perfil 6328 */
	DESARMAR SOLO SI tipo_zoc = 1
		PERFIL 902
			2*n_hojas x m_ancho/2-92
	FIN DESARME
	DESARMAR SOLO SI tipo_zoc = 2
		PERFIL 6328
			2*n_hojas x m_ancho/2-110
	FIN DESARME


	/* Parantes Postigon */
    SEGUN tipo_zoc PERFIL 6576,E4047
			2*n_hojas x m_alto-56

   /* Encuentro Central */
	PERFIL 5820
		n_hojas x m_alto-56

	PERFIL 5800
	DESARMAR SOLO SI tipo_zoc = 1
			n_hojas*INT(m_alto/1000*14+0.5) x m_ancho/2-74
   FIN DESARME
	DESARMAR SOLO SI tipo_zoc = 2
			n_hojas*INT(m_alto/1000*14+0.5) x m_ancho/2-96
   FIN DESARME

	/* ACCESORIOS */
	DESARMAR SOLO SI m_alto<1500
	PARTE H33
		2 x n_hojas
	FIN DESARME

	DESARMAR SOLO SI m_alto>=1500
	PARTE H33
		3 x n_hojas
	FIN DESARME

	PARTE H14P
		1 x 2 
		

   FIN DESARME   /* Ventanas de Dos Hojas */


PRODUCTO MOCORR
PRODUCTO MOPOST





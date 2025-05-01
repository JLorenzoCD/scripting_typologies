/* Postigon LINEA EKONAL */

/* Marco */
SEGUN marco PERFIL 6579,6768,6577
CORTES A 45:
 1 x m_ancho
CORTES A 90 Y 45:
 2 x m_alto


/* Tablillas */ 
CALCULOS
cant_ta := INT((m_alto-160)/60)
FIN CALCULOS

CORTES A RECTO:

PARTE H33
	2 x n_hojas

DESARMAR SOLO SI n_hojas = 1

/*Parantes */
  PERFIL 5806
         2 x m_alto-33

  DESARMAR SOLO SI zoc_cab = 1
/* Cab. y Zoc. */
   PERFIL 6341
         2 x m_ancho-172

   FIN DESARME

  DESARMAR SOLO SI zoc_cab = 2
/* Cab. y Zoc. */
   PERFIL 6328
         2 x m_ancho-172

   FIN DESARME

   DESARMAR SOLO SI cristal=0
/* Tablillas */
   PERFIL 5800
         cant_ta x m_ancho-172+20
   FIN DESARME
   DESARMAR SOLO SI cristal=1
     VIDRIOS
         1 de m_ancho-172+20 x m_alto-160
   FIN DESARME

/* Tapajunta */


        /* Accesorios */
	PARTE E49
		1 x 2
	PARTE R1020
		1 x 19
	PARTE T1
		1 x 16
	PARTE FALLEB
		1 x 1
	PARTE B44
		3 x (m_alto-24)/1000
	PARTE C10
		3 x (m_alto-24)/1000
		2 x m_ancho/1000



FIN DESARME /* Postigon de 2 hojas */



DESARMAR SOLO SI n_hojas = 2

	/*Parantes */
        PERFIL 5806
                        4 x m_alto-33
	
        DESARMAR SOLO SI zoc_cab = 1
		/* Cab. y Zoc. */
		PERFIL 6341
			4 x (m_ancho-293)/2
        DESARMAR SOLO SI cristal=0
		/* Tablillas */
		PERFIL 5800
			2*cant_ta x (m_ancho-261)/2
        FIN DESARME
        DESARMAR SOLO SI cristal=1
         VIDRIOS
         2 de (m_ancho-261)/2 x m_alto-160
         PARTE UVW
         2 x ((m_ancho-261)/2)/1000
         2 x (m_alto-160)/1000
        FIN DESARME
	FIN DESARME

        DESARMAR SOLO SI zoc_cab = 2
		/* Cab. y Zoc. */
		PERFIL 6328
			4 x (m_ancho-213)/2
         DESARMAR SOLO SI cristal=0
		/* Tablillas */
		PERFIL 5800
			2*cant_ta x (m_ancho-189)/2
         FIN DESARME
         DESARMAR SOLO SI cristal=1
        VIDRIOS
         2 de (m_ancho-261)/2 x m_alto-160
         PARTE UVW
         2 x ((m_ancho-261)/2)/1000
         2 x (m_alto-160)/1000
        FIN DESARME
      
	FIN DESARME

	/* Tapajunta */
	PERFIL 5820
                1 x m_alto-33

	
	/* Accesorios */
	PARTE E49
		1 x 2
	PARTE R1020
		1 x 19
	PARTE T1
		1 x 16
	PARTE FALLEB
		1 x 1
	PARTE B44
		3 x (m_alto-24)/1000
	PARTE C10
		3 x (m_alto-24)/1000
		2 x m_ancho/1000



FIN DESARME /* Postigon de 2 hojas */


DESARMAR SOLO SI n_hojas = 3

	/*Parantes */
        PERFIL 5806
                6 x m_alto-33
	
        DESARMAR SOLO SI zoc_cab = 1
		/* Cab. y Zoc. */
		PERFIL 6341
			6 x (m_ancho-414)/3
      DESARMAR SOLO SI cristal=0
		/* Tablillas */
		PERFIL 5800
			3*cant_ta x (m_ancho-366)/3
       FIN DESARME
       DESARMAR SOLO SI cristal=1
        VIDRIOS
         3 de (m_ancho-366)/3 x m_alto-160
         PARTE UVW
         6 x ((m_ancho-261)/3)/1000
         6 x (m_alto-160)/1000
      FIN DESARME
   FIN DESARME

   DESARMAR SOLO SI zoc_cab = 2
		/* Cab. y Zoc. */
		PERFIL 6328
			6 x (m_ancho-294)/3
        DESARMAR SOLO SI cristal=0
		/* Tablillas */
		PERFIL 5800
			3*cant_ta x (m_ancho-258)/3
        FIN DESARME
         DESARMAR SOLO SI cristal=1
        VIDRIOS
         3 de (m_ancho-258)/3 x m_alto-160
         PARTE UVW
         6 x ((m_ancho-258)/3)/1000
         6 x (m_alto-160)/1000
        FIN DESARME

	FIN DESARME

	/* Tapajunta */
	PERFIL 5820
                2 x m_alto-33

	
		 

	/* Accesorios */
	PARTE E49
		1 x 2
	PARTE R1020
		1 x 22
	PARTE T1
		1 x 24
	PARTE FALLEB
		1 x 2
	PARTE B44
		4 x (m_alto-24)/1000
	PARTE C10
		4 x (m_alto-24)/1000
		2 x m_ancho/1000



FIN DESARME /* Postigon de 3 hojas */



DESARMAR SOLO SI n_hojas = 4

        PERFIL 5806
                8 x m_alto-33
	
        DESARMAR SOLO SI zoc_cab = 1
		/* Cab. y Zoc. */
		PERFIL 6341
			8 x (m_ancho-534)/4

         DESARMAR SOLO SI cristal=0
		/* Tablillas */
		PERFIL 5800
			4*cant_ta x (m_ancho-470)/4
         FIN DESARME

         DESARMAR SOLO SI cristal=1
        VIDRIOS
         4 de (m_ancho-470)/4 x m_alto-160
         PARTE UVW
         6 x ((m_ancho-470)/4)/1000
         6 x (m_alto-160)/1000
        FIN DESARME

	FIN DESARME

        DESARMAR SOLO SI zoc_cab = 2
		/* Cab. y Zoc. */
		PERFIL 6328
			8 x (m_ancho-374)/4

         DESARMAR SOLO SI cristal=0
		/* Tablillas */
		PERFIL 5800
			4*cant_ta x (m_ancho-327)/4
         FIN DESARME

         DESARMAR SOLO SI cristal=1
        VIDRIOS
         4 de (m_ancho-470)/4 x m_alto-160
         PARTE UVW
         6 x ((m_ancho-470)/4)/1000
         6 x (m_alto-160)/1000
        FIN DESARME
	FIN DESARME

	/* Tapajunta */
	PERFIL 5820
                3 x m_alto-33


	/* Accesorios */
	PARTE E49
		1 x 2
	PARTE R1020
		1 x 25
	PARTE T1
		1 x 32
	PARTE FALLEB
		1 x 3
	PARTE B44
		5 x (m_alto-24)/1000
	PARTE C10
		5 x (m_alto-24)/1000
		2 x m_ancho/1000



FIN DESARME /* Postigon de 4 hojas */



PRODUCTO MOPOST






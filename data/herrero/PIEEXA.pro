/* piel de vidrio aluar */
/* desarrollada por EXA Aluminio */

/* NO SE INCLUYEN LOS ANCLAJES */
/* LAS COLUMNAS, ESQUINAS Y ENCUENTROS SE CALCULAN MANUALMENTE */



/* PIEL DE VIDRIO CON PERFIL 6152 */

DESARMAR SOLO SI hoja=1 
   PERFIL 6151
		2 x m_alto
   PERFIL 6152
		2 x m_ancho
	DESARMAR SOLO SI veproy=0
   PARTE H111
      2 x INT(m_alto/300)+1
   PARTE H112
      2 x INT(m_alto/300)+1
	FIN DESARME

   PERFIL 6941
		1 x m_ancho

	PARTE AHI
		2 x m_ancho/1000
		2 x m_alto/1000
   PARTE H121
		1 x 2
	PARTE BPV
		2 x m_ancho/1000
		2 x m_alto/1000
		2 x (m_ancho - 20)/1000
		2 x (m_alto - 20)/1000
   PARTE C90
		1 x 2 
	VIDRIOS
                1 de m_ancho-10 x m_alto-10
		M.OBRA 0.30

   DESARMAR SOLO SI veproy=1
		DESARMAR SOLO SI m_alto>=450 .AND. m_alto<700
         PARTE DA-400
            1 x 1
		FIN DESARME
		DESARMAR SOLO SI m_alto>=701 .AND. m_alto<950
         PARTE DA-650
            1 x 1
		FIN DESARME
		DESARMAR SOLO SI m_alto>=951 .AND. m_alto<=1250
         PARTE DA-900
            1 x 1
		FIN DESARME
      DESARMAR SOLO SI m_alto>=1251 
         PARTE DA1200
            1 x 1
		FIN DESARME
			
      PARTE GH
         1 x 1
      PARTE C85
         1 x 1
      M.OBRA 0.3
   FIN DESARME

FIN DESARME


/* PIEL DE VIDRIO CON VIDRIO PEGADO (M-2981) */

DESARMAR SOLO SI hoja=3
   PERFIL 6715
		2 x m_ancho
		2 x m_alto
   PERFIL 6941
		1 x m_ancho
	DESARMAR SOLO SI veproy=0
   PARTE H111
      2 x INT(m_alto/300)+1
   PARTE H112
      2 x INT(m_alto/300)+1
   FIN DESARME
   PARTE H121
      1 x 2
   PARTE B78
		2 x m_ancho/1000
		2 x m_alto/1000

		2 x (m_ancho - 25)/1000
		2 x (m_alto - 25)/1000
   PARTE B52
   	1 x m_ancho/1000
   PARTE C90
		1 x 4

	/*  CINTA DOBLE FAZ  3M  */
	PARTE VHB959
		2 x m_ancho/1000
		2 x m_alto/1000
	M.OBRA 0.30

	VIDRIOS
		1 de m_ancho x m_alto
	M.OBRA 0.1

   DESARMAR SOLO SI veproy=1
		DESARMAR SOLO SI m_alto>=450 .AND. m_alto<700
         PARTE DA-400
            1 x 1
		FIN DESARME
		DESARMAR SOLO SI m_alto>=701 .AND. m_alto<950
         PARTE DA-650
            1 x 1
		FIN DESARME
		DESARMAR SOLO SI m_alto>=951 .AND. m_alto<=1250
         PARTE DA-900
            1 x 1
		FIN DESARME
      DESARMAR SOLO SI m_alto>=1251
         PARTE DA1200
            1 x 1
		FIN DESARME
			
      PARTE GH
			1 x 1
      PARTE C85
			1 x 1
		M.OBRA 0.3
	FIN DESARME

FIN DESARME



/* PIEL DE VIDRIO CON DOBLE VIDRIADO */

DESARMAR SOLO SI hoja=2
   PERFIL 6943
		2 x m_ancho 
		2 x m_alto
   PERFIL 6944
      2 x m_ancho 
      2 x m_alto
   PERFIL 6946
      1 x m_ancho 
	DESARMAR SOLO SI veproy=0
   PARTE H111
      2 x INT(m_alto/300)+1
	FIN DESARME

   PARTE B68
		2 x m_ancho/1000 
		2 x m_alto/1000
   PARTE B30
		2 x m_ancho/1000 
		2 x m_alto/1000
   PARTE B78
		2 x m_ancho/1000 
		2 x m_alto/1000
		4 x (m_ancho - 30)/1000 
		4 x (m_alto - 30)/1000
	PARTE C88
		1 x 4
	PARTE C89
		1 x 2
   PARTE H121
		1 x 2
	VIDRIOS
       2 de m_ancho-11 x m_alto-11
	M.OBRA 0.30

   DESARMAR SOLO SI veproy=1
		DESARMAR SOLO SI m_alto>=450 .AND. m_alto<700
         PARTE DA-400
            1 x 1
		FIN DESARME
		DESARMAR SOLO SI m_alto>=701 .AND. m_alto<950
         PARTE DA-650
         1 x 1
		FIN DESARME
		DESARMAR SOLO SI m_alto>=951 .AND. m_alto<=1250
         PARTE DA-900
            1 x 1
		FIN DESARME
      DESARMAR SOLO SI m_alto>=1251
         PARTE DA1200
            1 x 1
		FIN DESARME
			
      PARTE GH
			1 x 1
      PARTE C85
			1 x 1
		M.OBRA 0.3
	FIN DESARME

FIN DESARME
	






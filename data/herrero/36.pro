/* POSTIGON DE REBATIR */
/* m_ancho,m_alto,n_hojas */


/* MARCO */
PERFIL 508
   2 x m_ancho
   2 x m_alto


	PARTE LA
		1 x 4

	PARTE LC
		4 x 4
	PARTE LD
		1 x 2*(m_ancho+m_alto)/1000

/* Hojas */
DESARMAR SOLO SI n_hojas=1
   PERFIL 173
      2 x m_ancho-126
   PERFIL 174
      2 x m_alto-36
   PERFIL 511
      1 x m_alto-36
   PERFIL 519
      1 x m_alto-36
   PERFIL 126
      2 x m_ancho-126+16
   PERFIL 126
      2*INT((m_alto-120)/90) x 102
   PERFIL 127
      INT((m_alto-120)/90) x m_ancho-117


/* accesorios */
	PARTE C56
		1 x 2
	/* pasador */
	PARTE GM
		1 x 1
	PARTE I
		1 x 8

FIN DESARME

DESARMAR SOLO SI n_hojas=2
   PERFIL 173
      4 x (m_ancho-221)/2
   PERFIL 174
      4 x m_alto-36
   PERFIL 511
      2 x m_alto-36
   PERFIL 519
      2 x m_alto-36
   PERFIL 126
      4 x (m_ancho-221)/2+16

   PERFIL 126
      4*INT((m_alto-120)/90) x 102
   PERFIL 127
      2*INT((m_alto-120)/90) x (m_ancho-110-85)/2


/* accesorios */
	PARTE C56
		2 x 2
	/* pasador */
	PARTE GM
		1 x 1
	PARTE I
		2 x 8
	PARTE LD
		2 x m_alto/1000
	
FIN DESARME

DESARMAR SOLO SI n_hojas=3
   PERFIL 173
      6 x (m_ancho-316)/3
   PERFIL 174
      6 x m_alto-36
   PERFIL 511
      2 x m_alto-36
   PERFIL 519
      4 x m_alto-36
   PERFIL 126
      6 x (m_ancho-316)/3+16

   PERFIL 126
      6*INT((m_alto-120)/90) x 102
   PERFIL 127
      3*INT((m_alto-120)/90) x (m_ancho-110-85-85)/3



/* accesorios */
	PARTE C56
		3 x 2
	/* pasador */
	PARTE GM
		1 x 2
	PARTE I
		3 x 8
	PARTE LD
		3 x m_alto/1000

FIN DESARME

DESARMAR SOLO SI n_hojas=4
   PERFIL 173
      8 x (m_ancho-411)/4
   PERFIL 174
      8 x m_alto-36
   PERFIL 511
      2 x m_alto-36
   PERFIL 519
      6 x m_alto-36
   PERFIL 126
      8 x (m_ancho-411)/4+16

   PERFIL 126
      8*INT((m_alto-120)/90) x 102
   PERFIL 127
      4*INT((m_alto-120)/90) x (m_ancho-110-85-85-85)/4

/* accesorios */
	PARTE C56
		4 x 2
	/* pasador */
	PARTE GM
		1 x 3
	PARTE I
		4 x 8
	PARTE LD
		4 x m_alto/1000


FIN DESARME

PRODUCTO MOPOST






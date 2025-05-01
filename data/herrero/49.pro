/* POSTIGON DE REBATIR CON MARCO ANCHO PERFIL 524 Y TABLILLAS  PERFIL 127     ç
                                                         DE 100 MM. */
/* m_ancho,m_alto,n_hojas */


/* MARCO */
PERFIL 524
   2 x m_ancho
   2 x m_alto

	PARTE A
		1 x 4
	PARTE LC
		4 x 4
	PARTE LD
		1 x 2*(m_ancho+m_alto)/1000


/* Hojas */
DESARMAR SOLO SI n_hojas=1
   PERFIL 173
      2 x m_ancho-142
   PERFIL 174
      2 x m_alto-52
   PERFIL 511
      2 x m_alto-52
   PERFIL 126
      2 x m_ancho-142+16
   PERFIL 126
      2*INT((m_alto-120)/102) x 102
   PERFIL 127
      INT((m_alto-120)/102) x m_ancho-139

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
      4 x (m_ancho-237)/2
   PERFIL 174
      4 x m_alto-52
   PERFIL 511
      2 x m_alto-52
   PERFIL 519
      2 x m_alto-52
   PERFIL 126
      4 x (m_ancho-237)/2+16
   PERFIL 126
      4*INT((m_alto-120)/102) x 102
   PERFIL 127
      2*INT((m_alto-120)/102) x (m_ancho-137-85)/2

                                            

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
      6 x (m_ancho-332)/3
   PERFIL 174
      6 x m_alto-52
   PERFIL 511
      3 x m_alto-52
   PERFIL 519
      3 x m_alto-52
   PERFIL 126
      6 x (m_ancho-332)/3+16

   PERFIL 126
      6*INT((m_alto-100)/120) x 102
   PERFIL 127
      3*INT((m_alto-100)/120) x (m_ancho-332)/3+16

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
      8 x (m_ancho-427)/4
   PERFIL 174
      8 x m_alto-52
   PERFIL 511
      4 x m_alto-52
   PERFIL 519
      4 x m_alto-52
   PERFIL 126
      8 x (m_ancho-427)/4+16
   PERFIL 126
      8*INT((m_alto-120)/102) x 102
   PERFIL 127
      4*INT((m_alto-120)/102) x (m_ancho-134-85-85-85)/4


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






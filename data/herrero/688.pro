
/* puerta placa con marco 10 */

tap_desc:= if (cv_ext=1,0,15)

   SEGUN cv_ext PERFIL 10,7023

      CORTES A 45:
          1 x m_ancho+tap_desc*2
      CORTE A 90 Y 45:
          2 x m_alto+tap_desc

DESARMAR SOLO SI cv_ext >1
  SEGUN contravid PERFIL 7020,7021,7022	
      CORTES A 45:
          1 x m_ancho+tap_desc*2
      CORTE A 90 Y 45:
          2 x m_alto+tap_desc
FIN DESARME


	/* accesorios del marco */
	PARTE A
		1 x 2
	PARTE I
		12 x n_hojas
	PARTE H
		1 x m_ancho/1000
		2 x m_alto/1000
	PARTE POMELA
		n_hojas x 3
	PARTE I
		9 x n_hojas
	PARTE D
		1 x 16


/* interiores  */
VIDRIOS
	DESARMAR SOLO SI n_hojas=1
		1 de m_ancho-46 x m_alto-30
	FIN DESARME

	DESARMAR SOLO SI n_hojas=2
		2 de (m_ancho-50)/2 x m_alto-30
	FIN DESARME

M.OBRA 1.5





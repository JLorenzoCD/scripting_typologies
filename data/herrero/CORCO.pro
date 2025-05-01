/* CORTINA COMUN */

DESARMAR SOLO SI guia = 1
	PERFIL 20
		2 x m_alto+3

FIN DESARME

DESARMAR SOLO SI tablilla = 1
	/* TABLILLA PERFIL 5150 */
	CALCULOS
		cant_tablas := INT(m_alto/55)+4
   FIN CALCULOS
	PERFIL 5150
		cant_tablas x m_ancho-12
FIN DESARME

DESARMAR SOLO SI tablilla = 2
	/* TABLILLA PERFIL 6307 */
	CALCULOS
		cant_tablas := INT(m_alto/55)+4
   FIN CALCULOS
	PERFIL 6307
		cant_tablas x m_ancho-12
FIN DESARME


/* Accesorios */
DESARMAR SOLO SI tablilla = 1
	PARTE T82
		2 x cant_tablas
FIN DESARME
DESARMAR SOLO SI tablilla = 2
	PARTE T103
		1 x cant_tablas
	PARTE T102
		1 x cant_tablas
	PARTE H5X4
		1 x cant_tablas * (m_ancho-12)/1000

FIN DESARME
PARTE GRAMPA
	1 x 2
PARTE X136
	1 x 2
PARTE X137
	1 x 2
PARTE X139
	1 x (m_ancho+100)/1000
PARTE X145
	1 x 2
PARTE X146
	1 x 1
DESARMAR SOLO SI tipo_mec = 1
	PARTE X141
		1 x 1
FIN DESARME 
DESARMAR SOLO SI tipo_mec = 2
	PARTE X142
		1 x 1
FIN DESARME 
DESARMAR SOLO SI tipo_mec = 3
	PARTE CINTA
		1 x m_alto*2/1000 
              PARTE X143
		1 x 1
	PARTE X144
		1 x 1
FIN DESARME 
PARTE REDUCT
	1 x 1
PARTE 14
	1 x 2

M.OBRA  1


	

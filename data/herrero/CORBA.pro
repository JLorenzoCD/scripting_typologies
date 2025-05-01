/* CORTINA COMUN */

PERFIL 21
	2 x m_alto+50
RUBRO: 7
/* TABLILLA PERFIL 5150 */
CALCULOS
	cant_tablas := INT((m_alto+120)/60)-2
FIN CALCULOS

SEGUN tablilla PERFIL 5423,196
      cant_tablas x m_ancho-57

SEGUN tablilla PERFIL 5549,197
      1 x m_ancho-57

SEGUN tablilla PERFIL 5550,198
		1 x m_ancho-10

PARTE X100
	1 x cant_tablas
PARTE X101
	1 x cant_tablas

DESARMAR SOLO SI eslabon = 1
	PARTE X102
		2 x cant_tablas
FIN DESARME
DESARMAR SOLO SI eslabon = 2
PARTE X127
	2 x cant_tablas
FIN DESARME
PARTE X104
	1 x 2
PARTE X105
	2 x (m_alto+50)/1000
PARTE X106
	2 x cant_tablas
PARTE X107
	2 x (m_alto+50)/1000
PARTE X111
	1 x 2
PARTE X134
	1 x 2
PARTE X137
	1 x 2
PARTE X139
	1 x (m_alto+100)/1000
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



M.OBRA  1

FIN RUBRO:
	

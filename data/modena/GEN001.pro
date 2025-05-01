/* PREMARCO DE LA LINEA MODENA*/

/* premarco
/*  			1   sin premarco		*/
/*			2   premarco y tapa		*/
/*			3   solo tapa de premarco	*/

/* tipo_gui
/*	  		1   sin guias			*/
/*			2   guia comun			*/
/*			3   buia barrios               	*/


CORTES A 45:

	cant_marco:=marco_c()
	cant_par:=par_c()


RUBRO: 2
DESARMAR SOLO SI premarco=2 .OR. premarco=4
   PERFIL C6205
	DESARMAR SOLO SI cant_marco>=1
      marco_cant(0) x marco_med(0)+36
	FIN DESARME
	DESARMAR SOLO SI cant_marco>=2
      marco_cant(1) x marco_med(1)+36
	FIN DESARME
	DESARMAR SOLO SI cant_marco>=3
      marco_cant(2) x marco_med(2)+36
	FIN DESARME
	DESARMAR SOLO SI cant_marco>=4
      marco_cant(3) x marco_med(3)+36
	FIN DESARME
	DESARMAR SOLO SI cant_marco>=5
      marco_cant(4) x marco_med(4)+36
	FIN DESARME
	DESARMAR SOLO SI cant_marco>=6
      marco_cant(5) x marco_med(5)+36
	FIN DESARME
FIN RUBRO:
RUBRO: 3
   DESARMAR SOLO SI tipo_gui=1 .AND. premarco!=4
      PERFIL C6206
	DESARMAR SOLO SI cant_marco>=1
      marco_cant(0) x marco_med(0)+54
	FIN DESARME
	DESARMAR SOLO SI cant_marco>=2
      marco_cant(1) x marco_med(1)+54
	FIN DESARME
	DESARMAR SOLO SI cant_marco>=3
      marco_cant(2) x marco_med(2)+54
	FIN DESARME
	DESARMAR SOLO SI cant_marco>=4
      marco_cant(3) x marco_med(3)+54
	FIN DESARME
	DESARMAR SOLO SI cant_marco>=5
      marco_cant(4) x marco_med(4)+54
	FIN DESARME
	DESARMAR SOLO SI cant_marco>=6
      marco_cant(5) x marco_med(5)+54
	FIN DESARME

         /* Escuadra para el corte a 45 */
         PARTE E66
            1 x 4
      FIN DESARME
FIN RUBRO:

RUBRO: 2
   /* ACCESORIOS DEL PREMARCO */
   PARTE B57
      2 x (m_ancho+53)/1000
      2 x (m_alto+53)/1000
   PARTE E68
      1 x 4
   PARTE S9
      2 x 2+2*INT(m_ancho/1000)
      2 x 2+2*INT(m_alto/1000)
   PARTE T87
      2 x 2+INT((m_ancho-200)/300)
      2 x 2+INT((m_alto-200)/300)
   PARTE D
      1 x 32
   PARTE B69
      2 x (m_ancho)/1000
      2 x (m_alto)/1000
   M.OBRA   0.75
FIN RUBRO:

   FIN DESARME

/* GUIAS PARA CORTINA */
DESARMAR SOLO SI tipo_gui=2
	/* Guia comun */
   CORTES A RECTO:
   PERFIL C6245
      1 x m_alto+53
   PERFIL C6254
      1 x m_alto+53
   PERFIL C6243
      2 x m_alto+25
   DESARMAR SOLO SI doble_tapa=0
   PERFIL C6206
      2 x m_ancho+30
      1 x m_alto+53
   FIN DESARME

   DESARMAR SOLO SI doble_tapa=1

   PERFIL C6206
      2 x m_ancho+10
   PERFIL C6245
      1 x m_alto+53
   PERFIL C6254
      1 x m_alto+53
   FIN DESARME


   CORTES A 45:
   PARTE I
      4 x 2+INT((m_alto-100)/250)
   PARTE S9
      2 x 2+2*INT(m_alto/1000)

   M.OBRA   0.25
FIN DESARME

DESARMAR SOLO SI tipo_gui=3
	/* Guia Barrios */
   CORTES A RECTO:
   PERFIL C6245
      1 x m_alto+53
   PERFIL C6254
      1 x m_alto+53
   PERFIL C6244
      2 x m_alto+25
   DESARMAR SOLO SI doble_tapa=0
   PERFIL C6206
      2 x m_ancho+30
      1 x m_alto+53
   FIN DESARME

   DESARMAR SOLO SI doble_tapa=1
   PERFIL C6206
      2 x m_ancho+10
   PERFIL C6245
      1 x m_alto+53
   PERFIL C6254
      1 x m_alto+53
   FIN DESARME




   CORTES A 45:
   PARTE I
      4 x 2+INT((m_alto-100)/250)
   PARTE S9
      2 x 2+2*INT(m_alto/1000)

   M.OBRA   0.25
FIN DESARME

RUBRO: 3
   /* Lleva solo la tapa del premarco */
DESARMAR SOLO SI premarco=3

   PERFIL C6206
	DESARMAR SOLO SI cant_marco>=1
      marco_cant(0) x marco_med(0)+54
	FIN DESARME
	DESARMAR SOLO SI cant_marco>=2
      marco_cant(1) x marco_med(1)+54
	FIN DESARME
	DESARMAR SOLO SI cant_marco>=3
      marco_cant(2) x marco_med(2)+54
	FIN DESARME
	DESARMAR SOLO SI cant_marco>=4
      marco_cant(3) x marco_med(3)+54
	FIN DESARME
	DESARMAR SOLO SI cant_marco>=5
      marco_cant(4) x marco_med(4)+54
	FIN DESARME
	DESARMAR SOLO SI cant_marco>=6
      marco_cant(5) x marco_med(5)+54
	FIN DESARME

      /* Escuadra para el corte a 45 */
      PARTE E66
         1 x 4


   /* ACCESORIOS DE LA TAPA DEL PREMARCO */
   PARTE B57
      2 x (m_ancho+53)/1000
      2 x (m_alto+53)/1000
   PARTE T87
      2 x 2+INT((m_ancho-200)/300)
      2 x 2+INT((m_alto-200)/300)
   PARTE B69
      2 x (m_ancho)/1000
      2 x (m_alto)/1000

   M.OBRA   0.30

FIN DESARME

FIN RUBRO:








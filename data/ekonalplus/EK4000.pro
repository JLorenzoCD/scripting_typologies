/* PREMARCO DE LA LINEA EKONAL*/

/* premarco
/*  			1   sin premarco		*/
/*			2   premarco y tapa		*/
/*			3   solo tapa de premarco	*/




CORTES A 45:


DESARMAR SOLO SI premarco=2 .OR. premarco=4
RUBRO: 2
   PERFIL C6205
	2 x m_ancho+36
	2 x m_alto+36
FIN RUBRO:
RUBRO: 3
   DESARMAR SOLO SI premarco!=4
      PERFIL 7149
	2 x m_ancho+54
	2 x m_alto+54
         /* Escuadra para el corte a 45 */
         PARTE E66
            1 x 4
      FIN DESARME
FIN RUBRO:

RUBRO: 2
   /* ACCESORIOS DEL PREMARCO */
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
        /* ESTA CALCULADO EN LA M OBRA LA COLOC DE GRAMPAS DE QUITA Y PON */


/* GUIAS PARA CORTINA */


RUBRO: 3
   /* Lleva solo la tapa del premarco */
DESARMAR SOLO SI premarco=3

   PERFIL 7149
	2 x m_ancho+54
	2 x m_alto+54

      /* Escuadra para el corte a 45 */
      PARTE E66
         1 x 4


   /* ACCESORIOS DE LA TAPA DEL PREMARCO */

   PARTE T87
      2 x 2+INT((m_ancho-200)/300)
      2 x 2+INT((m_alto-200)/300)
   PARTE B69
      2 x (m_ancho)/1000
      2 x (m_alto)/1000

   M.OBRA   0.30

FIN DESARME
FIN RUBRO:












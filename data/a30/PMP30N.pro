/* PREMARCO DE LA LINEA A30NEW*/
/* premarco
/*             1   sin premarco             */
/*             2   premarco y tapa          */
/*             3   solo tapa de premarco    */
/* tipo_gui                                 */   
/*                      1   sin guias       */
/*                      2   guia comun      */
/*                      3   buia barrios    */
DESARMAR SOLO SI premarco=2
   CORTES A 45:
RUBRO: 2
   PERFIL C6066
      1 x m_ancho+36
   CORTES A RECTO Y 45:
      2 x m_alto+18
FIN RUBRO:

RUBRO: 3
   DESARMAR SOLO SI tipo_gui=1 
      PERFIL C6206
	 CORTES A 45:
	 1 x m_ancho+55
      CORTES A RECTO Y 45:
	 2 x m_alto+28
	 /* Escuadra para el corte a 45 */
	 PARTE E66
	    1 x 2
   FIN DESARME
   /* ACCESORIOS DEL PREMARCO */
   PARTE B57
      1 x (m_ancho+53)/1000
      2 x (m_alto+27)/1000
FIN RUBRO:  

RUBRO: 2
   PARTE E68
      1 x 2
   PARTE S9
      1 x 2+INT((m_ancho-200)/600)
      2 x 2+INT((m_alto-200)/600)
   PARTE T87
      1 x 2+INT((m_ancho-200)/300)
      2 x 2+INT((m_alto-200)/300)
   PARTE D
      1 x 24
FIN RUBRO:

RUBRO: 3
   PARTE B69
      1 x (m_ancho)/1000
      2 x (m_alto)/1000
   M.OBRA   0.75
   FIN DESARME
FIN RUBRO:
	/* ESTA CALCULADO EN LA M OBRA LA COLOC DE GRAMPAS DE QUITA Y PON */
/* GUIAS PARA CORTINA */
DESARMAR SOLO SI tipo_gui=2
	/* Guia comun */
   CORTES A RECTO:
   PERFIL C6206
      2 x m_ancho+10
   PERFIL C6245
      2 x m_alto+55
   PERFIL C6254
      2 x m_alto+55
   PERFIL C6064
      2 x m_alto+25
   CORTES A 45:
   PARTE I
      4 x 2+INT((m_alto-100)/250)
   PARTE S9
      2 x 2+INT((m_alto-100)/400)
   M.OBRA   0.25
FIN DESARME
DESARMAR SOLO SI tipo_gui=3
	/* Guia Barrios */
   CORTES A RECTO:
   PERFIL C6206
      2 x m_ancho+10
   PERFIL C6245
      2 x m_alto+55
   PERFIL C6254
      2 x m_alto+55
   PERFIL C6065
      2 x m_alto+25
   CORTES A 45:
   PARTE I
      4 x 2+INT((m_alto-100)/250)
   PARTE S9
      2 x 2+INT((m_alto-100)/400)
   M.OBRA   0.25
FIN DESARME
   /* Lleva solo la tapa del premarco */

RUBRO: 3
DESARMAR SOLO SI premarco=3
   PERFIL C6206
      1 x m_ancho+55
      2 x m_alto+27
      /* Escuadra para el corte a 45 */
      PARTE E66
	 1 x 2
   /* ACCESORIOS DE LA TAPA DEL PREMARCO */
   PARTE B57
      1 x (m_ancho+55)/1000
      2 x (m_alto+55)/1000
   PARTE T87
      1 x 2+INT((m_ancho-200)/300)
      2 x 2+INT((m_alto-200)/300)
   PARTE B69
      1 x (m_ancho)/1000
      2 x (m_alto)/1000
   M.OBRA   0.30
FIN DESARME

FIN RUBRO:





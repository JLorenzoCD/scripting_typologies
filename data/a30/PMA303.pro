/* PREMARCO DE LA LINEA A 30 NEW  24/03/98 */

/*       premarco
/*       1   sin premarco           */
/*			2   premarco y tapa			*/
/*			3   solo tapa de premarco	*/

/*        tipo_gui
/*       1   sin guias              */
/*       2   guia comun             */
/*       3   buia barrios           */


CORTES A 45:

DESARMAR SOLO SI premarco=2
    PERFIL C6079
      2 x m_ancho+36
      2 x m_alto+36


   DESARMAR SOLO SI tipo_gui=1
      PERFIL C6206
         2 x m_ancho+55
         2 x m_alto+55
         /* Escuadra para el corte a 45 */
         PARTE E66
            1 x 4
   FIN DESARME

   /* ACCESORIOS DEL PREMARCO */
   PARTE B57
      2 x (m_ancho+53)/1000
      2 x (m_alto+53)/1000
   PARTE E78
      1 x 4
   PARTE S9
      2 x 2+2*INT(m_ancho/1000)
      2 x 2+2*INT(m_alto/1000)
   PARTE T115
      2 x 2+INT((m_ancho-200)/300)
      2 x 2+INT((m_alto-200)/300)
   PARTE D
      1 x 32
   PARTE B69
      2 x (m_ancho)/1000
      2 x (m_alto)/1000
   M.OBRA   0.75
FIN DESARME
        /* ESTA CALCULADO EN LA M OBRA LA COLOC DE GRAMPAS DE QUITA Y PON */


/* GUIAS PARA CORTINA */
DESARMAR SOLO SI tipo_gui=2
	/* Guia comun */
   CORTES A RECTO:
   PERFIL C6206
      2 x m_ancho+10
   PERFIL C6245
      2 x m_alto+53
   PERFIL C6254
      2 x m_alto+53
   PERFIL C6064
      2 x m_alto+25

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
   PERFIL C6206
      2 x m_ancho+10
   PERFIL C6245
      2 x m_alto+53
   PERFIL C6254
      2 x m_alto+53
   PERFIL C6065
      2 x m_alto+25

   CORTES A 45:
   PARTE I
      4 x 2+INT((m_alto-100)/250)
   PARTE S9
      2 x 2+2*INT(m_alto/1000)

   M.OBRA   0.25
FIN DESARME


   /* Lleva solo la tapa del premarco */
DESARMAR SOLO SI premarco=3

   PERFIL C6206
      2 x m_ancho+53
      2 x m_alto+53
      /* Escuadra para el corte a 45 */
      PARTE E66
         1 x 4


   /* ACCESORIOS DE LA TAPA DEL PREMARCO */
   PARTE B57
      2 x (m_ancho+53)/1000
      2 x (m_alto+53)/1000
   PARTE T115
      2 x 2+INT((m_ancho-200)/300)
      2 x 2+INT((m_alto-200)/300)
   PARTE B69
      2 x (m_ancho)/1000
      2 x (m_alto)/1000

   M.OBRA   0.30

FIN DESARME








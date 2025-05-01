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


DESARMAR SOLO SI premarco=2 .OR. premarco=4
   PERFIL C6205
	2 x m_ancho+36
	2 x m_alto+36
   DESARMAR SOLO SI tipo_gui=1 .AND. premarco!=4
      PERFIL C4148
	2 x m_ancho+56
	2 x m_alto+56
         /* Escuadra para el corte a 45 */
         PARTE E62
            1 x 4
      FIN DESARME


   /* ACCESORIOS DEL PREMARCO */
/*   PARTE B57
/*      2 x (m_ancho+53)/1000
/*      2 x (m_alto+53)/1000
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
   FIN DESARME
        /* ESTA CALCULADO EN LA M OBRA LA COLOC DE GRAMPAS DE QUITA Y PON */


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
   PERFIL C4148
      2 x m_ancho+30
      1 x m_alto+53
   FIN DESARME

   DESARMAR SOLO SI doble_tapa=1

   PERFIL C4148
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
   PERFIL C4148
      2 x m_ancho+30
      1 x m_alto+53
   FIN DESARME

   DESARMAR SOLO SI doble_tapa=1
   PERFIL C4148
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


   /* Lleva solo la tapa del premarco */
DESARMAR SOLO SI premarco=3 .AND. tipo_gui=1

   PERFIL C4148
	2 x m_ancho+56
	2 x m_alto+56

      /* Escuadra para el corte a 45 */
      PARTE E62
         1 x 4


   /* ACCESORIOS DE LA TAPA DEL PREMARCO */
/*   PARTE B57
/*      2 x (m_ancho+53)/1000
/*      2 x (m_alto+53)/1000
   PARTE T87
      2 x 2+INT((m_ancho-200)/300)
      2 x 2+INT((m_alto-200)/300)
   PARTE B69
      2 x (m_ancho)/1000
      2 x (m_alto)/1000

   M.OBRA   0.30

FIN DESARME










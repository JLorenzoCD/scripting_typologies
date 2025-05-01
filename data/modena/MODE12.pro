

/* PREMARCO CURVO MODENA*/

/* 		       premarco
/*  		        1   sin premarco		*/
/*			2   premarco y tapa		*/
/*			3   solo tapa de premarco	*/

/*                     tipo_gui
/*  		        1   sin guias			*/
/*			2   guia comun	                */
/*			3   buia barrios               	*/


DESARMAR SOLO SI premarco=1
FIN DESARME

CORTES A 45:
DESARMAR SOLO SI premarco=2

   /* ACCESORIOS DEL PREMARCO */
   PARTE S9
      2 x 2+2*INT(m_ancho/1000)
      2 x 2+2*INT(m_alto/1000)
   PARTE D
      1 x 32

   DESARMAR SOLO SI tipo_arc=1 .OR. tipo_arc=2
 RUBRO: 2  
      PERFIL C6205
      CORTES A 45:
         1 x m_ancho+37
         1 x m_alto+37
         1 x m_ancho*3.1416/4+500
   FIN RUBRO:
RUBRO: 3
      DESARMAR SOLO SI tipo_gui=1 
         PERFIL C6206
         CORTES A 45:
            1 x m_ancho+54
            1 x m_alto+54
            1 x m_ancho*3.1416/4+500
                /* Escuadra para el corte a 45 */
               PARTE E78
                  1 x 4
      FIN DESARME
FIN RUBRO:

   FIN DESARME
   DESARMAR SOLO SI tipo_arc=3
      DESARMAR SOLO SI m_alto<=m_ancho/2
   /* MEDIO PUNTO */
   
      CALCULOS
         pi:=3.1415
         b := m_ancho/2
         r := (b*b + m_alto*m_alto) / (2*m_alto)
         alfa := atan((r-m_alto)/b)
         beta := pi-2*alfa
         e := b/2
         t := m_alto/2
         s := (e*e + t*t) / (2*t)
         gama := atan((s-t)/e)
         delta := pi-2*gama
      FIN CALCULOS
	RUBRO: 2   
      CORTES A 45:
         PERFIL C6205
            1 x m_ancho
            1 x r*beta
FIN RUBRO:
RUBRO: 3
         DESARMAR SOLO SI tipo_gui=1 
            PERFIL C6206
            CORTES A 45:
               1 x m_ancho
               1 x r*beta
         FIN DESARME
FIN RUBRO:
      FIN DESARME
   FIN DESARME
   DESARMAR SOLO SI flecha>20
   /* Marco */
      CALCULOS
         f:=flecha
         pi:=3.1415
         b := m_ancho/2
         r := (b*b + f*f) / (2*f)
         alfa := atan((r-f)/b)
         beta := pi-2*alfa
         e := b/2
         t := f/2
         s := (e*e + t*t) / (2*t)
         gama := atan((s-t)/e)
         delta := pi-2*gama
      FIN CALCULOS
RUBRO: 2   
   /* MEDIO PUNTO */
      CORTES A 45:
         PERFIL C6205
            1 x m_ancho+37
            2 x m_alto-flecha+19
            1 x r*beta+500
FIN RUBRO:
RUBRO:3
      DESARMAR SOLO SI tipo_gui=1 
         PERFIL C6206
         CORTES A 45:
            1 x m_ancho+54
            2 x m_alto-flecha+27
            1 x r*beta+500

               /* Escuadra para el corte a 45 */
               PARTE E78
                  1 x 4
      FIN DESARME
FIN RUBRO:
   FIN DESARME

      M.OBRA movf+(2*m_ancho+2*m_alto)*mom/1000
   
FIN DESARME



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


M.OBRA movf+(2*m_ancho+2*m_alto)*mom/1000

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


M.OBRA movf+(2*m_ancho+2*m_alto)*mom/1000

FIN DESARME
RUBRO: 3
   /* Lleva solo la tapa del premarco */
DESARMAR SOLO SI premarco=3

   PERFIL C6206
      2 x m_ancho+54
   DESARMAR SOLO SI tipo_gui=1 
      2 x m_alto+54
   FIN DESARME
      /* Escuadra para el corte a 45 */
      PARTE E78
         1 x 2

   /* ACCESORIOS DE LA TAPA DEL PREMARCO */
M.OBRA movf+(2*m_ancho+2*m_alto)*mom/1000

FIN DESARME
FIN RUBRO:

DESARMAR SOLO SI premarco=2 .OR. premarco=3
   PARTE B69
      2 x m_ancho/1000
      2 x m_alto/1000
FIN DESARME





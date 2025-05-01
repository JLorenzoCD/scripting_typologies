/* Ventana Banderola Herrero*/

   PERFIL 216
      CORTES A 45:
      2 x m_ancho
      2 x m_alto

   PERFIL 215
      CORTES A RECTO:
      1 x m_ancho-45

   /* Hojas */
   PERFIL 217
      CORTES A 45:
      2 x m_ancho -60
      2 x m_alto -60

   CORTES A RECTO:
   /* Contravidrios */
   PERFIL 8
      2 x m_ancho-122.5
      2 x m_alto-147.5

  		/* Guia Comun */
      DESARMAR SOLO SI tipo_gui = 2
          PERFIL 715
             1 x m_alto
          PERFIL 20
             2 x m_alto+50
	M.OBRA 0.25	
      FIN DESARME
		/* Guia Barrios */
      DESARMAR SOLO SI tipo_gui = 3
			 SEPARACION
          PERFIL 715
             1 x m_alto
          PERFIL 21
             2 x m_alto+50
          M.OBRA 0.10
      FIN DESARME
      DESARMAR SOLO SI dobletapa!=0 .AND. tipo_gui>1
           PERFIL 715
              1 x m_alto
           M.OBRA 0.10
      FIN DESARME
	VIDRIOS
      1 de m_ancho-129 x m_alto-129

/*Accesorios*/
PARTE A
         1 x 4
PARTE D
         1 x 48
PARTE H
         4 x (m_ancho-60)/1000
         4 x (m_alto-60)/1000
PARTE T
         2 x (m_ancho-60)/1000
         2 x (m_alto-60)/1000
PARTE UVW
         2 x (m_ancho-60)/1000
         2 x (m_alto-60)/1000
PARTE C
         1 x 4
PARTE I
         1 x 4
PARTE H53
         1 x 1
PARTE GQ
         1 x 1


PRODUCTO MOVPDB






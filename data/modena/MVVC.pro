/* Ventana VENTILUZ */



PRODUCTO PMMODE

   SEPARACION

   PERFIL C6216
      CORTES A 45:
      2 x m_ancho
      2 x m_alto

   /* Hojas */
   SEGUN cv_ext PERFIL C6236,C6227
      CORTES A 45:
      2 x m_ancho -39
      2 x m_alto -39

   SEPARACION

   /* contravidrios curvos */
   CORTES A 45:    
   SEGUN contravid PERFIL C6230,C6231,C6232,C6257,C6212,C6217,C6225,C6226
         
	DESARMAR SOLO SI contravid<=4

	 2 x m_ancho-124
               2 x m_alto-124

	FIN DESARME
	
	DESARMAR SOLO SI contravid>=5
     CORTES A RECTO:
	 2 x m_ancho-124
               2 x m_alto-158

	FIN DESARME
        DESARMAR SOLO SI contravid<=4
   PARTE T96
      4 x INT((m_ancho-121)/300) + 2
      4 x INT((m_alto-121)/300) + 2
        FIN DESARME
   VIDRIOS
      1 de m_ancho-128 x m_alto-128

  /*Accesorios*/
   PARTE E69
         1 x 4
   PARTE B67
         2 x (m_ancho-60)/1000
         2 x (m_alto-60)/1000
   PARTE B52
         2 x (m_ancho-20)/1000
         2 x (m_alto-20)/1000
   PARTE B68
         2 x (m_ancho-120)/1000
         2 x (m_alto-120)/1000

   DESARMAR SOLO SI espesor=6
      PARTE B29
   FIN DESARME
   DESARMAR SOLO SI espesor=5
      PARTE B30
   FIN DESARME
   DESARMAR SOLO SI espesor=4
      PARTE B31
   FIN DESARME
      2 x (m_ancho-120)/1000
      2 x (m_alto-120)/1000
   PARTE E69
      1 x 4
   PARTE H61
      1 x 2
   SEGUN empuje PARTE EMP200,EMP300,EMP400,H63
      1 x 1
   PARTE T95
      2 x 2+INT((m_ancho-200)/500)
      2 x 2+INT((m_alto-200)/500)
   PARTE T88
      2 x 2+INT((m_ancho-200)/500)
      2 x 2+INT((m_alto-200)/500)
   PARTE I
      2 x 2+INT((m_ancho-200)/500)
      2 x 2+INT((m_alto-200)/500)
   PARTE T69
      2 x m_ancho/1000
      2 x m_alto/1000



PRODUCTO MAVPDB






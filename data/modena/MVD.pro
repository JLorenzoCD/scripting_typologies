/* Ventana DESPLAZABLE modena */
PRODUCTO PMMODE

   PERFIL C6259
      CORTES A 45:
      2 x m_ancho
      2 x m_alto

   /* Hojas */
   SEGUN cv_ext PERFIL C6260,C6258
      CORTES A 45:
      2 x m_ancho-32
      2 x m_alto-32


   /* contravidrios */

   SEGUN contravid PERFIL C6230,C6231,C6217,C6226,C6257,C6232,C6212,C6225

      /* contr. curvos */
      CORTES A 45:    
      DESARMAR SOLO SI contravid=1 .OR. contravid=2 .OR. contravid=5 .OR. contravid=6	
         2 x m_ancho-160
         2 x m_alto-160

         /* lo pone solo si los contravidiros son curvos */
         PARTE T96
            4 x INT((m_ancho-160)/300) + 2
            4 x INT((m_alto-196)/300) + 2
      FIN DESARME

      /* contr. rectos */
      CORTES A RECTO:    
      DESARMAR SOLO SI contravid=3 .OR. contravid=4 .OR. contravid=7 .OR. contravid=8
         2 x m_ancho-160
         2 x m_alto-196
      FIN DESARME


   VIDRIOS
      1 de m_ancho-170 x m_alto-170

  /*Accesorios*/


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
   PARTE E70
      1 x 4
   DESARMAR SOLO SI m_alto<=400 
   PARTE H36A
      1 x 1
   FIN DESARME
   DESARMAR SOLO SI m_alto>400 .AND. m_alto<=500
   PARTE H36B
      1 x 1
   FIN DESARME
   DESARMAR SOLO SI m_alto>500 .AND. m_alto<=1200 
   PARTE H36C
      1 x 1
   FIN DESARME
   DESARMAR SOLO SI m_alto>1200
   PARTE H36D
   1 x 1
   FIN DESARME

   DESARMAR SOLO SI taco_reg=1
   PARTE T88
      1 x 2+INT((m_ancho-200)/500)
      2 x 2+INT((m_alto-200)/500)
   FIN DESARME
   PARTE I
      2 x 2+INT((m_ancho-200)/500)
      2 x 2+INT((m_alto-200)/500)
   PARTE T95
      2 x 2+INT((m_ancho-200)/500)
      2 x 2+INT((m_alto-200)/500)
   PARTE H91
      1 x 1
      


PRODUCTO MAVPDB





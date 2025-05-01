/* ventana desplazable */

CORTES A 45:

   PERFIL 139
      2 x m_ancho
      2 x m_alto
      SEPARACION

   PERFIL 140
      2 x m_ancho -74
      2 x m_alto - 74
      SEPARACION


CORTES A RECTO:
   /* Contravidrios */
   SEGUN contravid PERFIL 77,78,78,77,77,78,77,78
      2 x m_ancho-140
      2 x m_alto-165
      SEPARACION

		DESARMAR SOLO SI tipo_gui=2
			 SEPARACION
          PERFIL 715
             1 x m_alto
          PERFIL 20 
             2 x m_alto+20
          M.OBRA  0.10
      FIN DESARME

		DESARMAR SOLO SI tipo_gui=3
          SEPARACION
          PERFIL 715
             1 x m_alto
          PERFIL 21
             2 x m_alto+20
          M.OBRA 0.10
      FIN DESARME

      DESARMAR SOLO SI dobletapa!=0
           PERFIL 715
              1 x m_alto
           M.OBRA 0.10
      FIN DESARME 




   VIDRIOS
      1 de m_ancho-171 x m_alto-171


/* Accesorios */
   PARTE AEF
      2 x (m_ancho-40)/1000
      2 x (m_alto-40)/1000
   PARTE ADC
      2 x (m_ancho-40)/1000
      2 x (m_alto-40)/1000
   PARTE T
      2 x (m_ancho-140)/1000
      2 x (m_alto-140)/1000
   PARTE UVW
      2 x (m_ancho-140)/1000
      2 x (m_alto-140)/1000
   PARTE A
      1 x 4
   PARTE D
      1 x 32
   PARTE GC
      1 x 1
   PARTE GF
      1 x 4
   DESARMAR SOLO SI m_alto>=473 .AND. m_alto<723
      PARTE DA-400
         1 x 1
   FIN DESARME
   DESARMAR SOLO SI m_alto>=723 .AND. m_alto<973
      PARTE DA-650
         1 x 1
   FIN DESARME
   DESARMAR SOLO SI m_alto>=973 .AND. m_alto<=1273
      PARTE DA-900
         1 x 1
   FIN DESARME
   DESARMAR SOLO SI m_alto>=1273 
      PARTE DA1200
         1 x 1
   FIN DESARME


PRODUCTO MOVPDB





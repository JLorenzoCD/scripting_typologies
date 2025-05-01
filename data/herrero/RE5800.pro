/* REVESTIMIENTO TUBULAR */
VARIABLE cant_t

DESARMAR SOLO SI direccion = 1
   /* HORIZONTAL */
   PERFIL 5800
      DESARMAR SOLO SI m_alto<=61
         1 x m_ancho
         CALCULOS
            cant_t:=1
         FIN CALCULOS
      FIN DESARME
      DESARMAR SOLO SI m_alto>61 .AND. m_alto<=120
         2 x m_ancho
         CALCULOS
            cant_t:=2
         FIN CALCULOS
      FIN DESARME
      DESARMAR SOLO SI m_alto>120
         DESARMAR SOLO SI (m_alto-120)/61 = INT((m_alto-120)/61)
            (m_alto-120)/61+2 x m_ancho
            CALCULOS
               cant_t:=(m_alto-120)/61+2
            FIN CALCULOS
         FIN DESARME
         DESARMAR SOLO SI (m_alto-120)/61 != INT((m_alto-120)/61)
            INT((m_alto-120)/61)+1+2 x m_ancho
            CALCULOS
               cant_t:=INT((m_alto-120)/61)+1+2
            FIN CALCULOS
         FIN DESARME
      FIN DESARME
FIN DESARME

DESARMAR SOLO SI direccion = 2
   /* VERTICAL */
   PERFIL 5800
      DESARMAR SOLO SI m_ancho<=94
         1 x m_alto
         CALCULOS
            cant_t:=1
         FIN CALCULOS
      FIN DESARME
      DESARMAR SOLO SI m_ancho>94 .AND. m_ancho<=170
         2 x m_alto
         CALCULOS
            cant_t:=2
         FIN CALCULOS
      FIN DESARME
      DESARMAR SOLO SI m_ancho>120
         DESARMAR SOLO SI (m_ancho-120)/61 = INT((m_ancho-120)/61)
            (m_ancho-120)/61+2 x m_alto
            CALCULOS
               cant_t:=(m_ancho-120)/61+2
            FIN CALCULOS
         FIN DESARME
         DESARMAR SOLO SI (m_ancho-120)/61 != INT((m_ancho-120)/61)
            INT((m_ancho-120)/61)+1+2 x m_alto
            CALCULOS
               cant_t:=INT((m_ancho-120)/61)+1+2
            FIN CALCULOS
         FIN DESARME
      FIN DESARME
FIN DESARME

/* ACCESORIOS */
PARTE D
   2 x cant_t

	M.OBRA (mor*m_ancho*m_alto)/1000000










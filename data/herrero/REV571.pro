
/* REVESTIMIENTO TUBULAR */
VARIABLE cant_t

DESARMAR SOLO SI direccion = 1
   /* HORIZONTAL */
   PERFIL 5701
      DESARMAR SOLO SI m_alto<=135
         1 x m_ancho
         CALCULOS
            cant_t:=1
         FIN CALCULOS
      FIN DESARME
      DESARMAR SOLO SI m_alto>135 .AND. m_alto<=290
         2 x m_ancho
         CALCULOS
            cant_t:=2
         FIN CALCULOS
      FIN DESARME
      DESARMAR SOLO SI m_alto>290
         DESARMAR SOLO SI (m_alto/135) = INT((m_alto)/135)
            m_alto/135+1 x m_ancho
            CALCULOS
               cant_t:=m_alto/135+1
            FIN CALCULOS
         FIN DESARME
         DESARMAR SOLO SI m_alto/135 != INT(m_alto/135)
            INT(m_alto/135)+1 x m_ancho
            CALCULOS
               cant_t:=INT(m_alto/135)+1
            FIN CALCULOS
         FIN DESARME
      FIN DESARME
FIN DESARME

DESARMAR SOLO SI direccion = 2
   /* VERTICAL */
   PERFIL 5701
      DESARMAR SOLO SI m_ancho<=135
         1 x m_alto
         CALCULOS
            cant_t:=1
         FIN CALCULOS
      FIN DESARME
      DESARMAR SOLO SI m_ancho>135 .AND. m_ancho<=290
         2 x m_alto
         CALCULOS
            cant_t:=2
         FIN CALCULOS
      FIN DESARME
      DESARMAR SOLO SI m_ancho>290
         DESARMAR SOLO SI m_ancho/135 = INT(m_ancho/135)
            m_ancho/135+1 x m_alto
            CALCULOS
               cant_t:=m_ancho/135+1
            FIN CALCULOS
         FIN DESARME
         DESARMAR SOLO SI m_ancho/135 != INT(m_ancho/135)
            INT(m_ancho/135)+1 x m_alto
            CALCULOS
               cant_t:=INT(m_ancho/135)+1
            FIN CALCULOS
         FIN DESARME
      FIN DESARME
FIN DESARME

/* ACCESORIOS */
PARTE D
   2 x cant_t
M.OBRA (mor*m_ancho*m_alto)/1000000







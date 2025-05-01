/* REVESTIMIENTO TUBULAR */
DESARMAR SOLO SI dir_3 = 1
   /* HORIZONTAL */
   PERFIL 207
      DESARMAR SOLO SI m_alto/95 = INT(m_alto/95)
         INT(m_alto/95) x m_ancho
      FIN DESARME
      DESARMAR SOLO SI m_alto/95 != INT(m_alto/95)
         INT(m_alto/95)+1 x m_ancho
      FIN DESARME
FIN DESARME

DESARMAR SOLO SI dir_3 = 2
   /* VERTICAL */
   PERFIL 5726
      DESARMAR SOLO SI m_ancho/95 = INT(m_ancho/95)
         INT(m_ancho/95) x m_alto
      FIN DESARME
      DESARMAR SOLO SI m_ancho/95 != INT(m_ancho/95)
         INT(m_ancho/95)+1 x m_alto
      FIN DESARME
FIN DESARME

M.OBRA (mor*m_ancho*m_alto)/1000000



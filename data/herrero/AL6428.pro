/* REVESTIMIENTO TUBULAR */
DESARMAR SOLO SI dir_3 = 1
   /* HORIZONTAL */
   PERFIL 6428
      DESARMAR SOLO SI m_alto/80 = INT(m_alto/80)
         INT(m_alto/80) x m_ancho
      FIN DESARME
      DESARMAR SOLO SI m_alto/80 != INT(m_alto/80)
         INT(m_alto/80)+1 x m_ancho
      FIN DESARME
FIN DESARME

DESARMAR SOLO SI dir_3 = 2
   /* VERTICAL */
   PERFIL 6428
      DESARMAR SOLO SI m_ancho/80 = INT(m_ancho/80)
         INT(m_ancho/80) x m_alto
      FIN DESARME
      DESARMAR SOLO SI m_ancho/80 != INT(m_ancho/80)
         INT(m_ancho/80)+1 x m_alto
      FIN DESARME
FIN DESARME

M.OBRA (mor*m_ancho*m_alto)/1000000




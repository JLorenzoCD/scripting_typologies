/* REVESTIMIENTO TUBULAR */
DESARMAR SOLO SI direccion = 1
   /* HORIZONTAL */
   PERFIL 5726
      DESARMAR SOLO SI m_alto/115 = INT(m_alto/115)
         INT(m_alto/115) x m_ancho
      FIN DESARME
      DESARMAR SOLO SI m_alto/115 != INT(m_alto/115)
         INT(m_alto/115)+1 x m_ancho
      FIN DESARME
FIN DESARME

DESARMAR SOLO SI direccion = 2
   /* VERTICAL */
   PERFIL 5726
      DESARMAR SOLO SI m_ancho/115 = INT(m_ancho/115)
         INT(m_ancho/115) x m_alto
      FIN DESARME
      DESARMAR SOLO SI m_ancho/115 != INT(m_ancho/115)
         INT(m_ancho/115)+1 x m_alto
      FIN DESARME
FIN DESARME

M.OBRA (mor*m_ancho*m_alto)/1000000




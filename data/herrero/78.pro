
/* REJILLA DE VENTILACION PARA APLICAR A DISTINTOS PRODUCTOS*/



    /* MARCO */
CORTES A 45
   PERFIL 148
      2 x m_ancho
      2 x m_alto

   PERFIL 126
CORTES A RECTO
      2 x m_ancho-20
CORTES A 45
      2 x m_alto-40



CORTES A RECTO
DESARMAR SOLO SI p127=1
   PERFIL 127
   DESARMAR SOLO SI INT((m_alto-24)/95)=((m_alto-24)/95)
      INT((m_alto-24)/95) x m_ancho -24
   FIN DESARME
   DESARMAR SOLO SI INT((m_alto-24)/95)!=((m_alto-24)/95)
      INT((m_alto-24)/95)+1 x m_ancho -24
   FIN DESARME
FIN DESARME


DESARMAR SOLO SI p127!=1
   PERFIL 153
   DESARMAR SOLO SI INT((m_alto-24)/45)=((m_alto-24)/45)
      INT((m_alto-24)/45) x m_ancho -24
   FIN DESARME
   DESARMAR SOLO SI INT((m_alto-24)/45)!=((m_alto-24)/45)
      INT((m_alto-24)/45)+1 x m_ancho -24
   FIN DESARME
FIN DESARME


 /* ACCESORIOS*/

PARTE B**
   1 x 4
PARTE D
   1 x 16

DESARMAR SOLO SI m_alto<500
   M.OBRA 0.5
FIN DESARME

DESARMAR SOLO SI m_alto>=500 .AND. m_alto<=1000
   M.OBRA 1.0
FIN DESARME

DESARMAR SOLO SI m_alto >1000
   M.OBRA 1.5
FIN DESARME





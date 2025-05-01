/* CUBREBANERA UMBRAL */
/* m_ancho = ancho inferior */
/* a_pared = ancho superior de pared a pared */
/* toalla  = lleva barra toallera */

CALCULOS
   a_pared:=if(a_pared=0,m_ancho-6,a_pared)
FIN CALCULOS

/* MARCO */
PERFIL 31
   1 x m_ancho-9
PERFIL 141
   1 x a_pared
PERFIL 143
   2 x m_alto-33.5

SEPARACION
CALCULOS
    m_ancho:=IF(m_ancho>a_pared,m_ancho,a_pared)
FIN CALCULOS

/* hojas */
CORTES A 45:
PERFIL 144
   4 x (m_ancho+18)/2
   4 x m_alto-64

CORTES A RECTO:
DESARMAR SOLO SI toalla>=1
   PERFIL 147
      toalla x (m_ancho+18)/2-55
FIN DESARME



VIDRIOS
   2 de (m_ancho+23)/2-50 x m_alto-64-50


/* ACCESORIOS */
PARTE C4
    1 x 4 	
PARTE GG
    4 x (m_ancho+23)/2/1000
    4 x (m_alto-68)/1000

PARTE AGM
    4 x (m_alto-68)/1000
    
PARTE AEH
    1 x 3

PARTE AEI
    1 x 4

PARTE ADL
    1 x 4

PARTE B
    1 x 8

PARTE D
    1 x 46

PARTE II
    1 x m_ancho/1000

DESARMAR SOLO SI toalla>=1
    PARTE RR
        2 x toalla 
    PARTE RRR
        4 x toalla
FIN DESARME

PARTE C40
    DESARMAR SOLO SI toalla=0
        1 x 2
    FIN DESARME
    DESARMAR SOLO SI toalla=1
        1 x 1
    FIN DESARME

/* MANO DE OBRA */
M.OBRA  1.5
    





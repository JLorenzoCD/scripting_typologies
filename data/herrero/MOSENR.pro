/* MOSQUITERO ENROLLABLE */


MOSQUITERO:
CALCULOS
   sup_fie:=m_ancho*m_alto/1000000
FIN CALCULOS

DESARMAR SOLO SI marco=1
   PERFIL T4020
      2 x m_ancho
      2 x m_alto
FIN DESARME

PERFIL CABEZA
   1 x m_ancho-5

PERFIL GUILAT
   2 x m_alto-55

PARTE KITARM
   1 x 1

DESARMAR SOLO SI sup_fie<=1
   PARTE A45
      1 x 2
FIN DESARME

DESARMAR SOLO SI sup_fie<=2 .AND. sup_fie>1
   PARTE B58
      1 x 2
FIN DESARME

DESARMAR SOLO SI sup_fie>2
   PARTE C75
      1 x 2
FIN DESARME

FIN MOSQUITERO



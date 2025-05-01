/* Ventana Corrediza */

CALCULOS
tra_n:=0
FIN CALCULOS

/* El perfil de la caja de Agua se dio de baja */

   VARIABLE perfil_2
   VARIABLE perfil_3

   CORTES A 45:
      PERFIL 691
         2 x m_ancho
         2 x m_alto
      SEPARACION
   CORTES A RECTO:
   PERFIL 44
         3 x m_ancho/3-99
  PERFIL 2
      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         3 x m_ancho/3-99
      FIN DESARME
      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         6 x m_ancho/3-99
      FIN DESARME
      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0 .AND. tra1=0
         3*(1+tra2) x m_ancho/3-99
      FIN DESARME
      /* Parantes laterales */
      PERFIL 53
         2 x m_alto-66
      /* Parantes Centrales */
      PERFIL 54
          4 x m_alto-66
      /* Guia Comun y tapacinta para 2,3,4 hojas */
      PRODUCTO GCOR
      VIDRIOS
         SEPARACION
         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            3 de m_ancho/3-82 x m_alto-173
         FIN DESARME
         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0 .AND. tra2=0
            3 de m_ancho/3-82 x tra1-99-16
            PANELES
            3 de m_ancho/3-82 x m_alto-tra1-74-16
         FIN DESARME
         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0 .AND. tra1=0
            3*(tra2+1) de m_ancho/3-82 x (m_alto-66-107-32*tra2)/(tra2+1)
         FIN DESARME
      CONJUNTO 900004
DESARMAR SOLO SI cubeta > 0
   PARTE cubeta
      1 x n_hojas
FIN DESARME

DESARMAR SOLO SI mosquitero=1
   CALCULOS
      m_aux_ancho:=m_ancho
      m_ancho:=m_aux_ancho/3*2-57
      m_aux_alto:=m_alto
      m_alto:=m_aux_alto-73
   FIN CALCULOS
   PRODUCTO MOSQUI
   CALCULOS
      m_ancho:=m_aux_ancho
      m_alto:=m_aux_alto
   FIN CALCULOS
FIN DESARME
         

m_cant_vid:=cant_vid()
m_2vid:=m2_vid()

PRODUCTO MOCORR




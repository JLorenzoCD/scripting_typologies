RUBRO: 1

   CORTES A 45:
   PERFIL 5

      2 x m_ancho
      2 x m_alto

   CORTES A RECTO:
      	DESARMAR SOLO SI tramosq>0

         PERFIL 90
           1 x m_ancho-64.5 
         PARTE N
           2 x m_ancho/1000
         M.OBRA 0.10
      		FIN DESARME

	        DESARMAR SOLO SI parmosq>0
         PERFIL 90
           1 x m_alto-64.5
         PARTE N
           2 x m_alto/1000
         M.OBRA 0.10
	        FIN DESARME


    /* Tela de mosquitero */
    TELA
        1 de m_alto x m_ancho

    /* Accesorios */
PARTE B
    1 x 4
PARTE D
    1 x 18
PARTE N
    2 x m_ancho/1000
    2 x m_alto/1000

DESARMAR SOLO SI tramosq>0
    PARTE I        
        1 x 4
FIN DESARME

DESARMAR SOLO SI parmosq>0
    PARTE I
        1 x 4
FIN DESARME
    DESARMAR SOLO SI lleva_rue=1
       PARTE L
           1 x 2
     M.OBRA 0.20
PARTE O
    2 x m_alto/1000


   FIN DESARME
M.OBRA 0.20

FIN RUBRO:




MOSQUITERO:
   CORTES A 45:
   PERFIL C6255

      2 x m_ancho
      2 x m_alto

   CORTES A RECTO:
      	DESARMAR SOLO SI tramosq>0

         PERFIL C6256
           1 x m_ancho-64.5 
         PARTE B9
           2 x m_ancho/1000
         M.OBRA 0.10
      		FIN DESARME

	        DESARMAR SOLO SI parmosq>0
         PERFIL C6256
           1 x m_alto-64.5
         PARTE B9
           2 x m_alto/1000
         M.OBRA 0.10
	        FIN DESARME


    /* Tela de mosquitero */
    TELA
        1 de m_alto x m_ancho

    /* Accesorios */
PARTE E73
    1 x 4
PARTE B9
    2 x m_ancho/1000
    2 x m_alto/1000

DESARMAR SOLO SI tramosq>0
    PARTE T1        
        1 x 4
FIN DESARME

DESARMAR SOLO SI parmosq>0
    PARTE T1
        1 x 4
FIN DESARME
    DESARMAR SOLO SI lleva_rue=1
       PARTE R43
           1 x 2
     M.OBRA 0.20
PARTE B70
    2 x m_alto/1000


   FIN DESARME
M.OBRA 0.20

FIN MOSQUITERO:



/* Puerta Mosquitera carioca */

/* tra1 = cantidad de traviesas centradas


/* Marco */
PERFIL 6577
    CORTES A 45:
       1 x m_ancho
    CORTES A 90 Y 45:        
       2 x m_alto


CORTES A 45:

/* Jambas - Hoja */
PERFIL 5822
    2 x m_alto-33

/* Zocalo y Cabezal - Hoja */
PERFIL 5822
    2 x m_ancho-52


DESARMAR SOLO SI tra1>0
    /* Travesaño centrados - Hoja */	
    PERFIL 5599
        tra1 x m_ancho-87
FIN DESARME


/* Sin travesanios */
DESARMAR SOLO SI tra1=0
    TELA
        1 de m_ancho-104 x m_alto-83
FIN DESARME


/* 1 travesanio */
DESARMAR SOLO SI tra1>0
    TELA
        tra1+1 de m_ancho-104 x (m_alto-83-38*tra1)/(1+tra1)
   DESARMAR SOLO SI tipo_rev>1
      SEGUN tipo_rev PERFIL nada,5701,5726
	INT(m_ancho/120) x 600
   FIN DESARME
FIN DESARME


/* Accesorios */
PARTE C
    1 x 2
PARTE B44
    1 x 1
PARTE H33
    1 x 3
PARTE LD
    1 x m_ancho/1000
    2 x m_alto/1000

/*Cerradura*/
PARTE P320
    1 x 1

                 
PARTE MANIJA
    1 x 1

DESARMAR SOLO SI cierra_p>0
    PARTE CIEPTA
        1 x 1
FIN DESARME


/* Tornillos de sujecion */
PARTE I
DESARMAR SOLO SI tra1=0 
    1 x 4
FIN DESARME
DESARMAR SOLO SI tra1>0 
    1 x 4+(2*tra1)
FIN DESARME


M.OBRA 0





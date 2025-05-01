/* VENTADA DE ABRIR EKONAL 2000 */

   CORTES A 45:
        /* MARCO */
                PERFIL C7277
                        1 x m_ancho
                   CORTES A 90 Y 45:
			2 x m_alto

DESARMAR SOLO SI n_hojas=1

        /* Ventana de una hoja */

         PERFIL C7280
CORTES A 45:
    1 x m_ancho-45
CORTES A 90 Y 45:
    2 x m_alto-27
PERFIL C7281
	CORTES A RECTO:
    1 x m_ancho-197
        /* contravidrio */
DESARMAR SOLO SI tra1=0
DESARMAR SOLO SI recto=1
	CORTES A RECTO:
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6225
	FIN DESARME
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6238
	FIN DESARME
	2 x m_ancho-197
	2 x m_alto-174
FIN DESARME

DESARMAR SOLO SI recto=0
	CORTES A 45:
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6232
	FIN DESARME
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6233
	FIN DESARME
	2 x m_ancho-197
	2 x m_alto-174
PARTE T96
	2 x INT((m_ancho-197)/200)+1
	2 x INT((m_alto-174)/200)+1

FIN DESARME


         VIDRIOS
                 n_hojas de m_ancho-207 x m_alto-184

FIN DESARME
DESARMAR SOLO SI tra1>0
PERFIL C7282
	1 x m_ancho-197
DESARMAR SOLO SI recto=1
	CORTES A RECTO:
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6225
	FIN DESARME
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6238
	FIN DESARME
	4 x m_ancho-197
	2 x tra1-100
	2 x m_alto-tra1-114
FIN DESARME

DESARMAR SOLO SI recto=0
	CORTES A 45:
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6232
	FIN DESARME
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6233
	FIN DESARME
	4 x m_ancho-197
	2 x tra1-100
	2 x m_alto-tra1-114
PARTE T96
	4 x INT((m_ancho-197)/200)+1
	2 x INT((tra1-100)/200)+1
	2 x INT((m_alto-tra1-114)/200)+1

FIN DESARME


         VIDRIOS
                 n_hojas de m_ancho-207 x tra1-110
	PANELES
                 n_hojas de m_ancho-207 x m_alto-tra1-114
		
FIN DESARME

FIN DESARME


/*************************************************

DESARMAR SOLO SI n_hojas=2
         PERFIL C7280
CORTES A 45:
    2 x m_ancho/2-25
CORTES A 90 Y 45:
               4 x m_alto-27
PERFIL C7281
	CORTES A RECTO:
		2 x m_ancho/2-177

PERFIL C7279
	1 x m_alto-55
        /* contravidrio */
DESARMAR SOLO SI tra1=0
DESARMAR SOLO SI recto=1
	CORTES A RECTO:
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6225
	FIN DESARME
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6238
	FIN DESARME
	4 x m_ancho/2-177
	4 x m_alto-174
FIN DESARME

DESARMAR SOLO SI recto=0
	CORTES A 45:
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6232
	FIN DESARME
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6233
	FIN DESARME
	4 x m_ancho/2-177
	4 x m_alto-174
PARTE T96
	2 x INT((m_ancho/2-177)/200)+1
	2 x INT((m_alto-174)/200)+1

FIN DESARME


         VIDRIOS
                 n_hojas de m_ancho/2-187 x m_alto-184

FIN DESARME
DESARMAR SOLO SI tra1>0
PERFIL C7282
	2 x m_ancho/2-177
DESARMAR SOLO SI recto=1
	CORTES A RECTO:
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6225
	FIN DESARME
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6238
	FIN DESARME
	8 x m_ancho/2-177
	4 x tra1-100
	4 x m_alto-tra1-114
PARTE T96
	8 x INT((m_ancho/2-177)/200)+1
	4 x INT((tra1-100)/200)+1
	4 x INT((m_alto-tra1-114)/200)+1

FIN DESARME

DESARMAR SOLO SI recto=0
	CORTES A 45:
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6232
	FIN DESARME
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6233
	FIN DESARME
	8 x m_ancho/2-177
	4 x tra1-100
	4 x m_alto-tra1-114
	PARTE T96
	8 x INT((m_ancho/2-177)/200)+1
	4 x INT((tra1-100)/200)+1
	4 x INT((m_alto-tra1-114)/200)+1

FIN DESARME


         VIDRIOS
                 n_hojas de m_ancho/2-187 x tra1-110
	PANELES
                 n_hojas de m_ancho/2-187 x m_alto-tra1-124

FIN DESARME

FIN DESARME


/***** 3 hojas


DESARMAR SOLO SI n_hojas=3

MENSAJE "Medidas no confirmadas por ALUAR !!!!"
MENSAJE "Maximo de hoja 800 x 2000 !!!!!"

         PERFIL C7280
CORTES A 45:
    3 x m_ancho/3-19
CORTES A 90 Y 45:
               6 x m_alto-27
PERFIL C7281
	CORTES A RECTO:
	 3 x m_ancho/3-170

PERFIL C7279
	2 x m_alto-55
        /* contravidrio */
DESARMAR SOLO SI tra1=0
DESARMAR SOLO SI recto=1
	CORTES A RECTO:
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6225
	FIN DESARME
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6238
	FIN DESARME
	6 x m_ancho/3-170
	6 x m_alto-174
FIN DESARME

DESARMAR SOLO SI recto=0
	CORTES A 45:
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6232
	FIN DESARME
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6233
	FIN DESARME
	6 x m_ancho/3-177
	6 x m_alto-174
PARTE T96
	3 x INT((m_ancho/3-177)/200)+1
	3 x INT((m_alto-174)/200)+1

FIN DESARME


         VIDRIOS
                 n_hojas de m_ancho/3-182x m_alto-184

FIN DESARME
DESARMAR SOLO SI tra1>0
PERFIL C7282
	3 x m_ancho/3-177
DESARMAR SOLO SI recto=1
	CORTES A RECTO:
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6225
	FIN DESARME
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6238
	FIN DESARME
	12 x m_ancho/3-177
	6 x tra1-100
	6 x m_alto-tra1-114
PARTE T96
	12 x INT((m_ancho/3-177)/200)+1
	6 x INT((tra1-100)/200)+1
	6 x INT((m_alto-tra1-114)/200)+1

FIN DESARME

DESARMAR SOLO SI recto=0
	CORTES A 45:
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6232
	FIN DESARME
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6233
	FIN DESARME
	12 x m_ancho/3-177
	6 x tra1-100
	6 x m_alto-tra1-114
	PARTE T96
	12 x INT((m_ancho/3-177)/200)+1
	6 x INT((tra1-100)/200)+1
	6 x INT((m_alto-tra1-114)/200)+1

FIN DESARME


         VIDRIOS
                 n_hojas de m_ancho/3-187 x tra1-110
	PANELES
                 n_hojas de m_ancho/3-187 x m_alto-tra1-124

FIN DESARME

FIN DESARME






        /* ACCESORIOS */
PARTE H62
       3 x n_hojas
PARTE A
       1 x 2
PARTE E70
       2 x n_hojas
PARTE H50
       1 x 1
PARTE H51
	1 x 1
PARTE E100
	1 x 2
PARTE T100
       1 x 4
PARTE H42
	2 x n_hojas-1
PARTE B30
       2 x (m_ancho-116)/1000
       2*n_hojas x (m_alto-116)/1000
PARTE B68
       2 x (m_ancho-116)/1000
       2*n_hojas x (m_alto-116)/1000
PARTE B80
       2 x (m_ancho-100)/1000
       2*n_hojas x (m_alto-100)/1000
PARTE B79
       2 x (m_ancho-100)/1000
       2*n_hojas x (m_alto-100)/1000
PARTE C14
	1 x m_ancho/1000


PRODUCTO MOABRI






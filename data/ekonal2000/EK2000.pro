/* VENTADA DE ABRIR EKONAL 2000 */
CALCULOS
   /* SI ESTA UNIFICADO, USA LAS VARIABLES DEL MARCO 
   DESARMAR SOLO SI unificado(1)!=0
      marco:=tmarco()
      tipo_patr:=ttrav()
   
      h_desc:=0
   
/*  tipo_patr:=0
/*if(marco=1,32,0)
   d_tra:=if (tipo_patr=1,0,5)
   m_em:=25
/*if(marco=1,48,32)
   m_et:=7
/*if (tipo_patr=1,5,7)
   m_dto_u:=m_em-m_et
   FIN DESARME

FIN CALCULOS

/* marco */

     CORTES A 45:
DESARMAR SOLO SI unificado(1)=0
   PERFIL C7277
      2 x m_ancho
      2 x m_alto 
FIN DESARME



DESARMAR SOLO SI unificado(1)!=0
   DESARMAR SOLO SI unificado(2) != 0
      m_alto:=m_alto+m_dto_u
   FIN DESARME
   DESARMAR SOLO SI unificado(4) != 0
      m_alto:=m_alto+m_dto_u
   FIN DESARME

   DESARMAR SOLO SI unificado(8) != 0
      m_ancho:=m_ancho+m_dto_u
   FIN DESARME

   DESARMAR SOLO SI unificado(16) != 0
      m_ancho:=m_ancho+m_dto_u

   FIN DESARME
FIN DESARME









/********
   CORTES A 45:

DESARMAR SOLO SI n_hojas=1

        /* Ventana de una hoja */

         PERFIL C7278
               2 x m_ancho-45
               2 x m_alto-45

        /* contravidrio */

DESARMAR SOLO SI recto=1
	CORTES A RECTO:
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6225
	FIN DESARME
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6238
	FIN DESARME
	2 x m_ancho-129
	2 x m_alto-140
FIN DESARME

DESARMAR SOLO SI recto=0
	CORTES A 45:
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6232
	FIN DESARME
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6233
	FIN DESARME
	2 x m_ancho-129
	2 x m_alto-129
PARTE T96
	2 x INT((m_ancho-100)/200)+1
	2 x INT((m_alto-100)/200)+1
FIN DESARME
	

         VIDRIOS
                 n_hojas de m_ancho-116 x m_alto-116

   

FIN DESARME
DESARMAR SOLO SI n_hojas=2 .AND. seg_hoja=0

       
         PERFIL C7278
               4 x m_ancho/2-25
               4 x m_alto-45

        /* contravidrio */

DESARMAR SOLO SI recto=1
	CORTES A RECTO:
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6225
	FIN DESARME
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6238
	FIN DESARME
	4 x m_ancho/2-80
	4 x m_alto-140
FIN DESARME

DESARMAR SOLO SI recto=0
	CORTES A 45:
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6232
	FIN DESARME
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6233
	FIN DESARME
	4 x m_ancho/2-80
	4 x m_alto-100
PARTE T96
	4 x INT((m_ancho/2-80)/200)+1
	4 x INT((m_alto-100)/200)+1

FIN DESARME
CORTES A RECTO:
PERFIL C7279
	1 x m_alto-100

         VIDRIOS
                 n_hojas de m_ancho/2-90 x m_alto-116

   

FIN DESARME


DESARMAR SOLO SI n_hojas=2 .AND. seg_hoja!=0

CORTES A 45:       
         PERFIL C7278
               2 x m_ancho/2-25
               2 x m_alto-45

        /* contravidrio */

DESARMAR SOLO SI recto=1
	CORTES A RECTO:
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6225
	FIN DESARME
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6238
	FIN DESARME
	2 x m_ancho/2-80
	2 x m_alto-140
	2 x m_ancho/2-40
	2 x m_alto-129
         
FIN DESARME

DESARMAR SOLO SI recto=0
	CORTES A 45:
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6232
	FIN DESARME
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6233
	FIN DESARME
	2 x m_ancho/2-80
	2 x m_alto-129
	2 x m_ancho/2-40
	2 x m_alto-60
PARTE T96
	2 x INT((m_ancho/2-80)/200)+1
	2 x INT((m_alto-100)/200)+1
	2 x INT((m_ancho/2-40)/200)+1
	2 x INT((m_alto-60)/200)+1

FIN DESARME

CORTES A RECTO:
PERFIL C6264
	1 x m_alto-100

         VIDRIOS
                 1 de m_ancho/2-90 x m_alto-116
                 1 de m_ancho/2-50 x m_alto-76

   

FIN DESARME

PERFIL C5989
		2 x (m_alto-335)/2

        /* ACCESORIOS */
DESARMAR SOLO SI seg_hoja>0
PARTE E71
	1 x 2
FIN DESARME
PARTE H61
       1 x n_hojas
DESARMAR SOLO SI seg_hoja=0
	1 x n_hojas
PARTE T135
	1 x n_hojas-1
FIN DESARME
PARTE A
       1 x 4
PARTE E69
       2 x n_hojas
DESARMAR SOLO SI seg_hoja=0
	2 x n_hojas
FIN DESARME
PARTE BLOQUE
	1 x 1
PARTE H79
	1 x 2
PARTE H86
       1 x 1
PARTE T131
       1 x 2
PARTE H43
	2 x n_hojas
PARTE H49
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



PRODUCTO MOABRI




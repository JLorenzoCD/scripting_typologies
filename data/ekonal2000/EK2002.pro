/* Ventana Proyectante */

CALCULOS

   /* SI ESTA UNIFICADO, USA LAS VARIABLES DEL MARCO 
   DESARMAR SOLO SI unificado(1)!=0
      amarco:=tmarco()
      DESARMAR SOLO SI amarco=0
          marco:=3
      FIN DESARME
      DESARMAR SOLO SI amarco!=0
         marco:=amarco
      FIN DESARME

      tipo_patr:=ttrav()
   
   m_em:=25
   m_et:=if (tipo_patr=1,12,17)
   m_dto_u:=m_em-m_et
   FIN DESARME
FIN CALCULOS

DESARMAR SOLO SI unificado(1)=0
CALCULOS
   tipo_patr:=1
FIN CALCULOS 
  CORTES A 45:
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

   /* Hojas */

   PERFIL C7278
      CORTES A 45:

      2 x m_ancho-45
      2 x m_alto-45


   /* Contravidrios */

DESARMAR SOLO SI corte=0   
CORTES A 45: 
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6232
	FIN DESARME 
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6233
	FIN DESARME 
      2 x m_ancho-122.5
      2 x m_alto-147.5
PARTE T96
      2 x INT((m_ancho-122.5)/200)+1
      2 x INT((m_alto-147.5)/200)+1

FIN DESARME
DESARMAR SOLO SI corte>0   
CORTES A RECTO: 	
	DESARMAR SOLO SI m_dvh=0
		PERFIL C6225
	FIN DESARME 
	DESARMAR SOLO SI m_dvh>0
		PERFIL C6238
	FIN DESARME 
      2 x m_ancho-122.5
      2 x m_alto-147.5
FIN DESARME



 


   VIDRIOS
      1 de m_ancho-129 x m_alto-129


  /*Accesorios*/

PARTE A  
         1 x 4
PARTE D 
         1 x 48
PARTE B30
         2 x (m_ancho-60)/1000
         2 x (m_alto-60)/1000
PARTE B68
         2 x (m_ancho-60)/1000
         2 x (m_alto-60)/1000
PARTE B80
         2 x (m_ancho-60)/1000
         2 x (m_alto-60)/1000
PARTE B79
         2 x (m_ancho-60)/1000
         2 x (m_alto-60)/1000
PARTE E69 
         1 x 4
PARTE H61
	1 x 2
PARTE H53
	1 x 1
PARTE H52
	1 x 1


PRODUCTO MOVPDB




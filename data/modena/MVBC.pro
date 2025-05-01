/* Ventana BANDEROLA */

PRODUCTO PMMODE


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
   
   m_desc:=0
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
      PERFIL C6216

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
   SEGUN cv_ext PERFIL C6235,C6215
		CORTES A 45:
      2 x m_ancho-39
      2 x m_alto-39
   SEPARACION
   
   /* Contravidrios */

   SEGUN contravid PERFIL C6230,C6231,C6232,C6257,C6212,C6217,C6225,C6226
	DESARMAR SOLO SI contravid <=4 
      2 x m_ancho-121
      2 x m_alto-121
	PARTE T96
      4 x INT((m_ancho-121)/300) + 2
      4 x INT((m_alto-121)/300) + 2
	FIN DESARME

CORTES A RECTO: 

	DESARMAR SOLO SI contravid >=5
      2 x m_ancho-121
      2 x m_alto-153
	FIN DESARME
	
   VIDRIOS
      1 de m_ancho-128 x m_alto-128

  /*Accesorios*/
   PARTE H53
         1 x 1
   PARTE E69
         1 x 4
   PARTE B67
         2 x (m_ancho-60)/1000
         2 x (m_alto-60)/1000
   PARTE B52
         2 x (m_ancho-20)/1000
         2 x (m_alto-20)/1000
   PARTE B68
         2 x (m_ancho-120)/1000
         2 x (m_alto-120)/1000

   DESARMAR SOLO SI espesor=6
      PARTE B29
   FIN DESARME
   DESARMAR SOLO SI espesor=5
      PARTE B30
   FIN DESARME
   DESARMAR SOLO SI espesor=4
      PARTE B31
   FIN DESARME
      2 x (m_ancho-120)/1000
      2 x (m_alto-120)/1000
   PARTE E69
      1 x 4
   PARTE H61
      1 x 2
   PARTE H52
      1 x 1
  
   DESARMAR SOLO SI taco_reg=1
   PARTE T88
      2 x 2+INT((m_ancho-200)/500)
      2 x 2+INT((m_alto-200)/500)
   FIN DESARME
   PARTE I
      2 x 2+INT((m_ancho-200)/500)
      2 x 2+INT((m_alto-200)/500)
   PARTE T95
      2 x 2+INT((m_ancho-200)/500)
      2 x 2+INT((m_alto-200)/500)

   PARTE T69
      1 x 2



PRODUCTO MAVPDB


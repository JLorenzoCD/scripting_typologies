 /* Venta adce abrir Oscilo Batiente de linea Modena  */


/* meto el premarco*/
PRODUCTO PMMODE

CALCULOS
   /* SI ESTA UNIFICADO, USA LAS VARIABLES DEL MARCO 
   DESARMAR SOLO SI unificado(1)!=0
      marco:=tmarco()
      tipo_patr:=ttrav()
   

   
      h_desc:=0
   
 /*  tipo_patr:=0
   m_desc:=0
/*if(marco=1,32,0)
   d_tra:=if (tipo_patr=1,0,5)
   m_em:=25
/*if(marco=1,48,32)
   m_et:=if (tipo_patr=1,12,17)
   m_dto_u:=m_em-m_et

   FIN DESARME

FIN CALCULOS

/* marco */




     CORTES A 45:
DESARMAR SOLO SI unificado(1)=0
   PERFIL C6216
      2 x m_ancho
      2 x m_alto 
/* accesorios del marco */
   PARTE B67
      2 x m_ancho/1000
      2 x m_alto/1000
   PARTE T69
      1 x 2
   PARTE E69
      1 x 4
   DESARMAR SOLO SI taco_reg=1
   PARTE T88
       2 x INT((m_ancho-200)/500)+2
       2 x INT((m_ancho-200)/500)+2
   FIN DESARME    
   PARTE I
       2 x INT((m_ancho-200)/500)+2
       2 x INT((m_ancho-200)/500)+2
   
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



DESARMAR SOLO SI n_hojas=1
/* ventana de 1 hoja */
   CORTES A 45:
   SEGUN cv_ext PERFIL C6235,C6215
      2 x m_ancho-39
      2 x m_alto-39


   SEGUN contravid PERFIL C6230,C6231,C6232,C6257,C6212,C6217,C6225,C6226 
   DESARMAR SOLO SI cv_ext = 1

   2 x m_ancho-124
        2 x m_alto-124
   FIN DESARME	
   DESARMAR SOLO SI cv_ext = 2
    CORTES A RECTO:
        2 x m_ancho-124
        2 x m_alto-160
   FIN DESARME
CORTES A RECTO:
   PERFIL C5989
     1 x m_alto/2-37 
   VIDRIOS
      1 de m_ancho-128 x m_alto-128

/* accesorios de la ventana*/

   DESARMAR SOLO SI m_ancho>=375 .AND. m_ancho<=530
      PARTE H4501
         1 x 1
      PARTE H4508
         1 x 1
      PARTE H4507
         1 x 1
      PARTE E69
         1 x 4
   FIN DESARME
	
   DESARMAR SOLO SI m_ancho>=531 .AND. m_ancho<=1100
	PARTE H4501
		1 x 1
   PARTE H4502
		1 x 1
   PARTE H4507
		1 x 1
	PARTE E69
      1 x 4
   FIN DESARME

   DESARMAR SOLO SI m_ancho>=1101 
   PARTE H4501
      1 x 1
   PARTE H4502
      1 x 1
   PARTE H4503
      1 x 1
   PARTE H4507
      1 x 1
   PARTE E69
      1 x 4
  FIN DESARME

FIN DESARME
   



DESARMAR SOLO SI n_hojas=2

/* ventana de 2 hojas */
   CORTES A 45:
   SEGUN cv_ext PERFIL C6235,C6215
      4 x m_ancho/2-23
      4 x m_alto-39

      CORTES A RECTO:

   PERFIL C6224 
   /* perfil de acople */
      1 x m_alto-96


   SEGUN contravid PERFIL C6230,C6231,C6232,C6257,C6212,C6217,C6225,C6226 

   DESARMAR SOLO SI cv_ext = 1
        4 x m_ancho-124
        4 x m_alto-124
   FIN DESARME	
   DESARMAR SOLO SI cv_ext = 2
    CORTES A RECTO:
        4 x m_ancho-124
        4 x m_alto-160
   FIN DESARME

   VIDRIOS
      2 de m_ancho/2-112 x m_alto-128

	   
/* accesorios de la ventana*/

   DESARMAR SOLO SI m_ancho>=730 .AND. m_ancho<=1060
	PARTE H4501
		1 x 1
        PARTE H4508
		1 x 1
        PARTE H4507
		1 x 1
	PARTE E69
                1 x 8
	PARTE H44
		1 x 1
	PARTE H49
		1 x 2
	PARTE H61
		1 x 2
	PARTE T98
		1 x 2
    FIN DESARME

   DESARMAR SOLO SI m_ancho>=1061 .AND. m_ancho<=2200
	PARTE H4501
		1 x 1
	PARTE H4502
		1 x 1
        PARTE H4504
                1 x 1
        PARTE H4507
		1 x 1
	PARTE H44
		1 x 1
	PARTE E69
                1 x 8
	PARTE H61
		1 x 2
	PARTE H49
		1 x 2
	PARTE T98
		1 x 2
   FIN DESARME

   DESARMAR SOLO SI m_ancho>=2201 .AND. m_ancho<=3400
   PARTE H4501
      1 x 1
        PARTE H4502
      1 x 1
        PARTE H4507
      1 x 1
        PARTE H4503
      1 x 1
        PARTE H4505
      1 x 1
	PARTE E69
      1 x 8
        PARTE H61
      1 x 2
        PARTE H44
      1 x 1
        PARTE H49
      1 x 2
        PARTE T98
      1 x 2
   FIN DESARME

PERFIL C5989 
   /* se usa como un accesorio */
   CORTES A RECTO:
   1 x m_alto/2-30
   1 x m_ancho/2

FIN DESARME


/* accesorios comunes de la ventana*/
   PARTE H79
      1 x 2
   PARTE BLOQUE
      1 x 2  
   DESARMAR SOLO SI cv_ext=2
      /* marco curvo */ 	
      PARTE T96
         2 x INT((m_ancho-200)/300)
         2 x INT((m_alto-200)/300)
   FIN DESARME
   PARTE B68
      1 x  (2 * m_ancho+ 2*n_hojas * m_alto)/1000 
   PARTE V
      1 x  (2 * m_ancho+ 2*n_hojas * m_alto)/1000  
   PARTE B52
      1 x (2*m_ancho+2*n_hojas*m_alto)/1000  
   PARTE H44
	1 x 1 
 
PRODUCTO MAABRI




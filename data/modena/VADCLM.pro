/* Venta adce abrir Doble Contacto de linea Modena  */

CALCULOS
o_bat:=0
FIN CALCULOS


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


/* meto el premarco*/
PRODUCTO PMMODE



DESARMAR SOLO SI n_hojas=1
/* ventana de 1 hoja */
   CORTES A 45:
   SEGUN cv_ext PERFIL C6235,C6215
      2 x m_ancho-40
      2 x m_alto-40


   SEGUN contravid PERFIL C6230,C6231,C6232,C6257,C6212,C6217,C6225,C6226

   DESARMAR SOLO SI cv_ext< = 1
       2 x m_ancho-124
       2 x m_alto-124
   FIN DESARME	
   DESARMAR SOLO SI cv_ext> = 2
	CORTES A RECTO:
       2 x m_ancho-124-25
       2 x m_alto-156
   FIN DESARME
	
   VIDRIOS
      1 de m_ancho-134 x m_alto-134

FIN DESARME



DESARMAR SOLO SI n_hojas=2
/* ventana de 2 hojas */
   CORTES A 45:
   SEGUN cv_ext PERFIL C6235,C6215
      4 x m_ancho/2-23
      4 x m_alto-39

   PERFIL C6224
   /* perfil de acople */
      CORTES A RECTO:
      1 x m_alto-96


   SEGUN contravid PERFIL C6230,C6231,C6232,C6257,C6212,C6217,C6225,C6226
   DESARMAR SOLO SI cv_ext< = 1
   4 x m_ancho/2-95
        4 x m_alto-124
   FIN DESARME	
   DESARMAR SOLO SI cv_ext> = 2
       CORTES A RECTO:
   4 x m_ancho/2-95
        4 x m_alto-156
   FIN DESARME

   VIDRIOS
      2 de m_ancho/2-112 x m_alto-134

FIN DESARME
   /*===================================================*/

DESARMAR SOLO SI n_hojas=3
/* ventana de 2 hojas */
   CORTES A 45:
   SEGUN cv_ext PERFIL C6235,C6215
      6 x m_ancho/3-17
      6 x m_alto-39

   PERFIL C6224
   /* perfil de acople */
      CORTES A RECTO:
      2 x m_alto-96


   SEGUN contravid PERFIL C6230,C6231,C6232,C6257,C6212,C6217,C6225,C6226
   DESARMAR SOLO SI cv_ext< = 1
        6 x m_ancho/3-101
        6 x m_alto-124
   FIN DESARME	
   DESARMAR SOLO SI cv_ext> = 2
	CORTES A RECTO:
        6 x m_ancho/3-101-25
        6 x m_alto-156
   FIN DESARME

   VIDRIOS
      3 de m_ancho/3-111 x m_alto-134

FIN DESARME


PERFIL C5989
   /* se usa como un accesorio */
   CORTES A RECTO:
   n_hojas x m_alto/2

/* accesorios de la ventana */
   PARTE H78
   2 x (n_hojas-1)
   PARTE H79
      1 x 2
   PARTE H44
      1 x n_hojas
   PARTE H47
      1 x 1
   PARTE BLOQUE
      1 x 2
   PARTE E69
      1 x 4*n_hojas
   PARTE H61
      2 x n_hojas
   DESARMAR SOLO SI cv_ext=1

      /* marco curvo */ 	
      PARTE T96
         2 x INT((m_ancho-200)/300)*n_hojas
         2 x INT((m_alto-200)/300)*n_hojas
   FIN DESARME
   PARTE T95
      2 x INT(m_ancho/300)
      2 x INT(m_alto/300)
   PARTE B68
      1 x (2 * m_ancho+2*n_hojas * m_alto)/1000
   PARTE V
      1 x  (2 * m_ancho+ 2*n_hojas * m_alto)/1000
   PARTE B52
      1 x (2*m_ancho+2*n_hojas*m_alto)/1000
   DESARMAR SOLO SI n_hojas=2
      PARTE H49
         1 x 2
      PARTE T98
         1 x 2
   FIN DESARME


PRODUCTO MAABRI






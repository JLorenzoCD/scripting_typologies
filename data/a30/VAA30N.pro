/* Ventana de abrir Doble Contacto de linea A30 NEW  */
/* meto el premarco*/
PRODUCTO PMA30N
/* marco */
 CORTES A 45:

CALCULOS
   o_bat:=0
FIN CALCULOS

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
   FIN DESARME
   m_desc:=0
/* if(marco=1,32,0)
   d_tra:=0
/*if (tipo_patr=1,0,5)
   m_em:=23
/* if(marco=1,48,32)
   m_et:=9
/*if (tipo_patr=1,12,17)
   m_dto_u:=m_em-m_et
   
FIN CALCULOS

DESARMAR SOLO SI unificado(1)=0
   CORTES A 45:
      SEGUN marco PERFIL C6055,C6059,C6051
      2 x m_ancho
      2 x m_alto
/* accesorios del marco */
   PARTE T69
      1 x 2
   PARTE E83
      1 x 4
   PARTE H78
      1 x 2
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
   SEGUN cv_ext PERFIL C6052,C6054
      2 x m_ancho-47
      2 x m_alto-47
   DESARMAR SOLO SI cv_ext< = 1
    SEGUN contravid PERFIL C6047,C6048,C6046,C6045 
      2 x m_ancho-137
      2 x m_alto-137
   FIN DESARME	
   CORTES A RECTO:
   DESARMAR SOLO SI cv_ext> = 2
    SEGUN contravid PERFIL C6047,C6048,C6046,C6045 
      2 x m_ancho-137
      2 x m_alto-181
   FIN DESARME
  
   VIDRIOS
      1 de m_ancho-137-13 x m_alto-137-13

FIN DESARME

DESARMAR SOLO SI n_hojas=2
/* ventana de 2 hojas */
   CORTES A 45:
   SEGUN cv_ext PERFIL C6052,C6054
      4 x m_ancho/2-26
      4 x m_alto-47

   PERFIL C6053 
   /* perfil de acople */
      CORTES A RECTO:
      1 x m_alto-112

   DESARMAR SOLO SI cv_ext< = 1
   SEGUN contravid PERFIL C6047,C6048,C6045,C6046 
        4 x m_ancho/2-116
        4 x m_alto-137
   FIN DESARME

   DESARMAR SOLO SI cv_ext> = 2
   SEGUN contravid PERFIL C6047,C6048,C6045,C6046 
        4 x m_ancho/2-116
        4 x m_alto-181
   FIN DESARME
   
   VIDRIOS
      2 de m_ancho/2-116-13 x m_alto-137-13

FIN DESARME

/*===========================================================*/

DESARMAR SOLO SI n_hojas=3

ADVERTENCIA "Medidas no confirmadas por ALUAR !!!!"
/* ventana de 3 hojas */
   CORTES A 45:
   SEGUN cv_ext PERFIL C6052,C6054
      6 x m_ancho/3-19
      6 x m_alto-47

   PERFIL C6053 
   /* perfil de acople */
      CORTES A RECTO:
      1 x m_alto-112

        DESARMAR SOLO SI cv_ext< = 1
   SEGUN contravid PERFIL C6047,C6048 
        6 x m_ancho/3-110
        6 x m_alto-137
        FIN DESARME

        DESARMAR SOLO SI cv_ext> = 2
   SEGUN contravid PERFIL C6045,C6046 
        6 x m_ancho/3-116
        6 x m_alto-181
        FIN DESARME
   
   VIDRIOS
      3 de m_ancho/3-116-13 x m_alto-137-13

FIN DESARME

           
PERFIL C5989 
   /* se usa como un accesorio */
   CORTES A RECTO:
   2 x m_alto/2
 
/* accesorios de la ventana*/
   PARTE H79
      2 x n_hojas
   PARTE H44
      1 x n_hojas-1+1
   PARTE H47
      1 x 1
   PARTE BLOQUE
      1 x 2  
   PARTE E83
      1 x 4*n_hojas
   DESARMAR SOLO SI taco_reg=1
   PARTE T88
      2 x INT(m_ancho/350)+1
      2 x INT(m_alto/350)+1
   FIN DESARME 
   PARTE T114
      2 x INT(m_ancho/350)+1
      2 x INT(m_alto/350)+1
   PARTE I
      2 x INT(m_ancho/350)+1
      2 x INT(m_alto/350)+1

   PARTE E76
      4 x n_hojas
   DESARMAR SOLO SI marco=3
   PARTE H105
   FIN DESARME
   DESARMAR SOLO SI marco=1 .OR. marco=2
   PARTE H61
   FIN DESARME
      2 x n_hojas

   DESARMAR SOLO SI cv_ext=1
      /* marco curvo */ 	
      PARTE T96
         2 x INT((m_ancho-200)/300)
         2 x INT((m_alto-200)/300)*n_hojas
   FIN DESARME
   PARTE B74
      n_hojas x (2 * m_ancho + m_alto)/1000 
   PARTE B31
      n_hojas x (2 * m_ancho + m_alto)/1000  
   PARTE B52
      n_hojas x (2 * m_ancho + m_alto)/1000  
   PARTE B68
      n_hojas x (2 * m_ancho + m_alto)/1000  

   DESARMAR SOLO SI n_hojas=3
      PARTE T119   
         1 x 4 
   FIN DESARME

 
PRODUCTO MAABRI




/* Ventana de abrir oscilibatiente de linea a-30 new  */
/* meto el premarco*/

PRODUCTO PMA30N
/* marco */
 CORTES A 45:


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
   m_desc:=
/* if(marco=1,32,0)
/*   d_tra:=if (tipo_patr=1,0,5)
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
   PARTE T131
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


   DESARMAR SOLO SI marco=1 .OR. marco=2
      PARTE H4501
         1 x 1
   FIN DESARME
   DESARMAR SOLO SI marco=3
      PARTE H107
         1 x 1
   FIN DESARME

   DESARMAR SOLO SI m_ancho>=365 .AND. m_ancho<=530
      PARTE H4508
         1 x 1
   FIN DESARME
	
   DESARMAR SOLO SI m_ancho>=531 .AND. m_ancho<=1100
      PARTE H4502
         1 x 1
   FIN DESARME

   DESARMAR SOLO SI m_ancho>=1101 
      PARTE H4502
         1 x 1
      PARTE H4503
         1 x 1
   FIN DESARME
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

   PERFIL C5989 
   /* se usa como un accesorio */
   CORTES A RECTO:
   1 x m_alto
 
/* accesorios de la ventana*/
   PARTE H44
      1 x n_hojas
   PARTE BLOQUE
      1 x 2  
   PARTE E83
      1 x 4*n_hojas
   PARTE T88
      DESARMAR SOLO SI taco_reg=1
      2 x INT(m_ancho/350)+1
      2 x INT(m_alto/350)+1
      FIN DESARME
   PARTE E76
      4 x n_hojas


DESARMAR SOLO SI n_hojas=2
        DESARMAR SOLO SI marco=3
   PARTE H105
        FIN DESARME
        DESARMAR SOLO SI marco=1 .OR. marco=2
   PARTE H61
        FIN DESARME
      2 x 1
FIN DESARME

DESARMAR SOLO SI cv_ext=1
      /* marco curvo */ 	
      PARTE T96
         2 x INT((m_ancho-200)/300)*n_hojas
         2 x INT((m_alto-200)/300)*n_hojas+2
FIN DESARME
   PARTE B74
      n_hojas x (2 * m_ancho + m_alto)/1000 
   PARTE B31
      n_hojas x (2 * m_ancho + m_alto)/1000  
   PARTE B52
      n_hojas x (2 * m_ancho + m_alto)/1000  
   PARTE B68
      n_hojas x (2 * m_ancho + m_alto)/1000  

DESARMAR SOLO SI n_hojas=2
      PARTE T119   
         1 x 2 
FIN DESARME

        PARTE H4507
		1 x 1
DESARMAR SOLO SI n_hojas=2
   DESARMAR SOLO SI marco=1 .OR. marco=2
      PARTE H4501
         1 x 1
   FIN DESARME
   DESARMAR SOLO SI marco=3
      PARTE H107
         1 x 1
   FIN DESARME

   DESARMAR SOLO SI m_ancho<=1060
      PARTE H4508
         1 x 1
      PARTE H49
         1 x 2
      PARTE T98
         1 x 2
   FIN DESARME

   DESARMAR SOLO SI m_ancho>=1061 .AND. m_ancho<=2200
      PARTE H4502
         1 x 1
      PARTE H49
         1 x 2
      PARTE T98
         1 x 2
   FIN DESARME

   DESARMAR SOLO SI m_ancho>=2201 
      PARTE H4502
         1 x 1
      PARTE H4503
         1 x 1
      PARTE H4505
         1 x 1
      PARTE H49
         1 x 2
      PARTE T98
         1 x 2
   FIN DESARME
FIN DESARME


PRODUCTO MAABRI





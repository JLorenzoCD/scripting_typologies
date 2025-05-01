/* VENTANA GUILLOTINA CON COMPENSADORES */


PRODUCTO PMGUIM

CALCULOS
   t_corte:=1
   par1:=0
   tra1:=0
   par2:=0
   tra_n:=0
   tra2:=0
   n_hojas:=2	
   e_desc:=if(contravid<=3,30,0)
FIN CALCULOS

/* Marco */
CORTES A RECTO:
PERFIL C6297
   1 x m_ancho
PERFIL C6298
   1 x m_ancho
PERFIL C6296
   2 x m_alto-42

/* Hoja Superior */
/* cabezal */
CORTES A 45:
   PERFIL C6295
      1 x m_ancho-111
/* zocalo */
   PERFIL C6293
      1 x m_ancho-111
/* jambas */
   PERFIL C6900
      2 x (m_alto/2)-11

DESARMAR SOLO SI contravid<=3
   CORTES A RECTO:
FIN DESARME
DESARMAR SOLO SI contravid>3
   CORTES A 45:
FIN DESARME
   SEGUN contravid PERFIL C6225,C6226,C6238,C6231,C6232,C6233
      2 x m_ancho-136
      2 x (m_alto/2)-46-e_desc

/* Hoja Inferior */
/* cabezal */
CORTES A 45:
   PERFIL C6294
      1 x m_ancho-91
/* zocalo */
   PERFIL C6295
      1 x m_ancho-91
/* jambas */
   PERFIL C6900
      2 x (m_alto/2)-8

DESARMAR SOLO SI contravid<=3
   CORTES A RECTO:
FIN DESARME
DESARMAR SOLO SI contravid>3
   CORTES A 45:
FIN DESARME

   SEGUN contravid PERFIL C6225,C6226,C6238,C6231,C6232,C6233
      2 x m_ancho-156
      2 x (m_alto/2)-46-e_desc

        /* TAPA COMPENSADORES */

        PERFIL C6299
                4 x m_alto/2
   VIDRIOS
      1 de m_ancho-141 x m_alto/2-58
      1 de m_ancho-161 x m_alto/2-58

DESARMAR SOLO SI mosquitero !=0

CORTES A 45:
        PERFIL C6255
                2 x m_ancho-44
                2 x m_alto-46

        TELA
                1 de m_ancho-44 x m_alto-46

        /* ACCESORIOS */

        PARTE R43
                1 x 4

        PARTE E73
                1 x 4


        PARTE B70
                2 x (m_alto-46)/1000

        PARTE N
                2 x (m_ancho-44)/1000
                2 x (m_alto-46)/1000
                              
FIN DESARME

/* ACCESORIOS */
        PARTE C-4
                1 x 4*m_ancho/1000 + (8*m_alto/1000)
        PARTE B31
                8 x (m_ancho+m_alto/2)/1000
        PARTE B76
                1 x (m_ancho-100)/1000
        PARTE BPV
                1 x (m_ancho-100)/1000
        PARTE E81
                1 x 8
        PARTE H116
                1 x 4
        PARTE H117
                1 x 4
        PARTE H119
                1 x 4
        PARTE H120
                1 x 1
        PARTE T15
                1 x 28
        PARTE T95
                2 x INT(m_ancho/330)+1
                2 x INT(m_alto/330)+1
        DESARMAR SOLO SI taco_reg=1
           PARTE T88
                2 x INT(m_ancho/330)+1
                2 x INT(m_alto/330)+1
	FIN DESARME
        PARTE I
                2 x INT(m_ancho/330)+1
                2 x INT(m_alto/330)+1

/* DEPENDE DEL ALTO */



DESARMAR SOLO SI m_alto<=850
      PARTE H118
     1 x 4
   FIN DESARME
DESARMAR SOLO SI m_alto>=851 .AND. m_alto<=1150
      PARTE H118
         1 x 4
   FIN DESARME
DESARMAR SOLO SI m_alto>=1151 .AND. m_alto<=1410
      PARTE H118
         1 x 4
   FIN DESARME
DESARMAR SOLO SI m_alto>=1411 .AND. m_alto<=1510
      PARTE H118
         1 x 4
   FIN DESARME

m_cant_vid:=cant_vid()
m_2vid:=m2_vid()

PRODUCTO MOCORR  












/* Puerta corrediza simple 3 hojas */
/* Premarco */
PRODUCTO PMA303

CALCULOS
   tra_n:=0
FIN CALCULOS

CORTES A RECTO:
/* Marco */
PERFIL C6081
   2  x m_ancho-47
PERFIL C6080
   2  x m_alto

/* Hojas */
/* Travesanios */

DESARMAR SOLO SI dvh=0
   PERFIL C6062
FIN DESARME
DESARMAR SOLO SI dvh=1
   PERFIL C6074
FIN DESARME
      2  x m_ancho/3+27
      1  x m_ancho/3+21

DESARMAR SOLO SI dvh=0
   PERFIL C6061
FIN DESARME
DESARMAR SOLO SI dvh=1
   PERFIL C6073
FIN DESARME
      2  x m_ancho/3+27
      1  x m_ancho/3+21
/* tra1= POSICION del travesanio */
DESARMAR SOLO SI tra1>0 .AND. tra2=0
	DESARMAR SOLO SI dvh=0
	   PERFIL C5996
	FIN DESARME
	DESARMAR SOLO SI dvh=1
	   PERFIL C5997
	FIN DESARME
      2  x m_ancho/3+75
      1  x m_ancho/3+75
   PARTE T18
      1 x 12

   PARTE T83
      1 x 12

   PARTE B31
     12  x (m_ancho/2-21-99)/1000

         
FIN DESARME

/* tra2= cantidad de traviesas, se suponen centradas */
DESARMAR SOLO SI tra2>0 .AND. tra1=0
	DESARMAR SOLO SI dvh=0
	   PERFIL C5996
	FIN DESARME
	DESARMAR SOLO SI dvh=1
	   PERFIL C5997
	FIN DESARME
      2*tra2 x m_ancho/3+27
      1*tra2 x m_ancho/3+21
   PARTE T18
      tra2 x 12

   PARTE T83
      tra2 x 12

   PARTE B31
      tra2*12  x (m_ancho/2-21+20)/1000



FIN DESARME

/* Parantes Laterales */
	DESARMAR SOLO SI dvh=0
           PERFIL C6034
	FIN DESARME
	DESARMAR SOLO SI dvh=1
           PERFIL C6071
	FIN DESARME
   2  x m_alto-86

/* Parantes Centrales */
	DESARMAR SOLO SI dvh=0
           PERFIL C6035
	FIN DESARME
	DESARMAR SOLO SI dvh=1
           PERFIL C6072
	FIN DESARME
        3 x m_alto-86
/*Parante central nuevo dibujo*/
       DESARMAR SOLO SI dvh=0
        PERFIL C6083
       FIN DESARME
       DESARMAR SOLO SI dvh=1
        PERFIL C6082
      FIN DESARME
        1 x m_alto-86

/* INTERIORES */
VIDRIOS
   DESARMAR SOLO SI tra1=0 .AND. tra2=0
      2 de m_ancho/3+27-98 x m_alto-86-155
      1 de m_ancho/3+21-98 x m_alto-86-155
  FIN DESARME

   /* tra1= posicion del travesanio */
   DESARMAR SOLO SI tra1>0
    VIDRIOS
    2 de m_ancho/3+27-98 x tra1-152-32.5+20
    1 de m_ancho/3+21-98 x tra1-152-32.5+20    
    PANELES
    2 de m_ancho/3+27-98 x m_alto-tra1-106-32.5+20
    1 de m_ancho/3+21-98 x m_alto-tra1-106-32.5+20
   FIN DESARME

   /* tra2= cantidad de traviesas, se suponen centradas */
   DESARMAR SOLO SI tra2>0
   2*(tra2+1) de m_ancho/3+27-98 x (m_alto-86-155-45*tra2)/(tra2+1)
   1*(tra2+1) de m_ancho/3+21-98 x (m_alto-86-155-45*tra2)/(tra2+1)
 FIN DESARME


/* ACCESORIOS */
PARTE I
   2 x 2+INT((m_ancho-300)/550)
   2 x 2+INT((m_alto-300)/550)

PARTE T114
   2 x 2+INT((m_ancho-300)/550)
   2 x 2+INT((m_alto-300)/550)

PARTE B31
   12  x (m_ancho/2-21-99)/1000
   12  x (m_alto-83-110)/1000

PARTE C13
   12  x (m_ancho/2-21)/1000
   12 x  (m_alto-83)/1000

SEGUN cierre PARTE H101,H102
   1 x 2

SEGUN rueda PARTE R46,R47
   1 x 6
DESARMAR SOLO SI taco_reg=1
PARTE T88
   2 x 2+INT((m_ancho-300)/550)
   2 x 2+INT((m_alto-300)/550)
FIN DESARME
PARTE T68
   1 x 3+INT((m_ancho-400)/600)

PARTE T69
   1 x 3+INT((m_ancho-400)/600)

PARTE T116
   1 x 4

PARTE T117
   1 x 4

PARTE T76
   1 x 2

PARTE T113
   1 x 2

PARTE T118
   1 x 8


MOSQUITERO:
DESARMAR SOLO SI mosquitero !=0
        PERFIL C6038
                2 x 2*m_ancho/3-12
                2 x m_alto-96
        PERFIL C6039
                2 x m_alto-109
        PARTE T21
                2 x INT((m_alto-120)/350)+1
        TELA
                1 de (m_ancho/3)*2-12 x m_alto-96

        DESARMAR SOLO SI tramosq!=0
        PERFIL C6256
                tramosq x 2*m_ancho/3-12-63
        FIN DESARME
        PARTE E73
               1 x 4
        PARTE D
               1 x 16
        PARTE B70
               2 x (m_alto-96)/1000
        PARTE R43
               1 x 6
        PARTE I
                4 x tramosq
    FIN DESARME
 FIN MOSQUITERO


m_cant_vid:=cant_vid()
m_2vid:=m2_vid()

PRODUCTO MACORR





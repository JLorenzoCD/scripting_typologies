/* Ventana CORREDIZA SIMPLE DOS HOJAS a30new */
                                       
/* Premarco */                          
PRODUCTO PMA30N
CORTES A RECTO:

CALCULOS
   tra_n:=0
   rueda:=if(rueda>2,2,rueda)
   cierre:=if(cierre>2,2,cierre)
FIN CALCULOS

/* Marco */
PERFIL C6037
   2  x m_ancho-45
PERFIL C6036
   2  x m_alto

PARTE T88
   DESARMAR SOLO SI taco_reg=1
      2 x 2+INT((m_ancho-200)/500)
      2 x 2+INT((m_alto-200)/500)
   FIN DESARME
PARTE T1
   2 x 2+INT((m_ancho-200)/500)
   2 x 2+INT((m_alto-200)/500)
PARTE T116
   1 x 8

/* Hojas */
DESARMAR SOLO SI n_hojas=2
/* Travesanios */
DESARMAR SOLO SI m_dvh=0
   PERFIL C6061
FIN DESARME
DESARMAR SOLO SI m_dvh=1
   PERFIL C6073
FIN DESARME
      4  x m_ancho/2-14

/* tra1= POSICION del travesanio */
DESARMAR SOLO SI tra1>0 .AND. tra2=0
        DESARMAR SOLO SI m_dvh=0
	   PERFIL C5996
	FIN DESARME
        DESARMAR SOLO SI m_dvh=1
	   PERFIL C5997
	FIN DESARME
      2  x m_ancho/2-96
   PARTE T18
      1 x 8
   PARTE T100
      1 x 8
   PARTE B31
      8  x (m_ancho/2-96+20)/1000
FIN DESARME

/* tra2= cantidad de traviesas, se suponen centradas */
DESARMAR SOLO SI tra2>0 .AND. tra1=0
        DESARMAR SOLO SI m_dvh=0
	   PERFIL C5996
	FIN DESARME
        DESARMAR SOLO SI m_dvh=1
	   PERFIL C5997
	FIN DESARME
      2*tra2 x m_ancho/2-96
   PARTE T18
      tra2 x 8
   PARTE T100
      tra2 x 8
   PARTE B31
      tra2*8  x (m_ancho/2-96+20)/1000
FIN DESARME

/* Parantes Laterales */
DESARMAR SOLO SI m_dvh=0
           PERFIL C6034
FIN DESARME
DESARMAR SOLO SI m_dvh=1
           PERFIL C6071
FIN DESARME
   2  x m_alto-86
/* Parantes Centrales */
DESARMAR SOLO SI m_dvh=0
           PERFIL C6035
FIN DESARME
DESARMAR SOLO SI m_dvh=1
           PERFIL C6072
FIN DESARME
   2  x m_alto-86

/* INTERIORES */
VIDRIOS
DESARMAR SOLO SI tra1=0 .AND. tra2=0
      2 de m_ancho/2-14-97 x m_alto-86-113
FIN DESARME
   /* tra1= posicion del travesanio */
DESARMAR SOLO SI tra1>0
      2 de m_ancho/2-14-97 x tra1-33-107+18
	PANELES
      2 de m_ancho/2-14-97 x m_alto-tra1-33-107+18
FIN DESARME
   /* tra2= cantidad de traviesas, se suponen centradas */
DESARMAR SOLO SI tra2>0
      2*(tra2+1) de m_ancho/2-14-97 x (m_alto-86-113-47*tra2)/(tra2+1)
FIN DESARME

/* ACCESORIOS */
PARTE T114
   2 x 2+INT((m_ancho-200)/500)
   2 x 2+INT((m_alto-200)/500)
PARTE B31
   8  x (m_ancho/2-14-90)/1000
   8  x (m_alto-86-110)/1000
PARTE C14
   8  x (m_ancho/2-14)/1000
PARTE C14
   6 x  (m_alto-86)/1000

SEGUN cierre PARTE H101,H102
   1 x 2
SEGUN rueda PARTE R46,R47
   1 x 4
PARTE T18
   2 x 2+INT((m_ancho-200)/500)
   2 x 2+INT((m_alto-200)/500)
   1 x 24
PARTE T130
   1 x 2+INT((m_ancho-200)/500)
PARTE T131
   1 x 2+INT((m_ancho-200)/500)
PARTE T117
   1 x 4
PARTE T118
   1 x 4
PARTE T132
   1 x 2
PARTE T112
   1 x 2
PARTE T122
   1 x 8


MOSQUITERO:
 DESARMAR SOLO SI mosquitero !=0
        PERFIL C6038
                2 x m_ancho/2+10
                2 x m_alto-96
        PERFIL C6039
                2 x m_alto-109
        PARTE T21
                2 x INT((m_alto-120)/350)+1
        TELA
                1 de m_ancho/2+10 x m_alto-96

        DESARMAR SOLO SI tramosq!=0
        PERFIL C6256
                tramosq x m_ancho/2+10-63
        FIN DESARME
        PARTE E73
               1 x 4
        PARTE D
               1 x 16
        PARTE B70
               2 x (m_alto-96)/1000
        PARTE R43
               1 x 4
        PARTE I
                4 x tramosq
    FIN DESARME
FIN MOSQUITERO:
FIN DESARME

/* vent. 2 hojas */



/* tres hojas laterales en misma guia */
DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=1

/* Travesanios */

DESARMAR SOLO SI m_dvh=0
   PERFIL C6061
FIN DESARME

DESARMAR SOLO SI m_dvh=1
   PERFIL C6073
FIN DESARME
      6 x m_ancho/3+13

/* tra1= POSICION del travesanio */
DESARMAR SOLO SI tra1>0 .AND. tra2=0
        DESARMAR SOLO SI m_dvh=0
	   PERFIL C5996
	FIN DESARME
        DESARMAR SOLO SI m_dvh=1
	   PERFIL C5997
	FIN DESARME
      3  x m_ancho/3+13-85
   PARTE T18
      1 x 12
   PARTE T100
      1 x 12
   PARTE B31
      12  x (m_ancho/3+13-85)/1000
FIN DESARME

/* tra2= cantidad de traviesas, se suponen centradas */
DESARMAR SOLO SI tra2>0 .AND. tra1=0
        DESARMAR SOLO SI m_dvh=0
	   PERFIL C5996
	FIN DESARME
        DESARMAR SOLO SI m_dvh=1
	   PERFIL C5997
	FIN DESARME
      3*tra2 x m_ancho/3+13-85
   PARTE T18
      tra2 x 4
   PARTE T100
      tra2 x 4
   PARTE B31
      tra2*3  x (m_ancho/3+13-85)/1000
FIN DESARME

/* Parantes Laterales */
        DESARMAR SOLO SI m_dvh=0
           PERFIL C6034
           	FIN DESARME
        DESARMAR SOLO SI m_dvh=1
           PERFIL C6071
	FIN DESARME
   2  x m_alto-86
/* Parantes Centrales */
        DESARMAR SOLO SI m_dvh=0
           PERFIL C6035
	FIN DESARME
        DESARMAR SOLO SI m_dvh=1
           PERFIL C6072
	FIN DESARME
   4  x m_alto-86

/* INTERIORES */
VIDRIOS
   DESARMAR SOLO SI tra1=0 .AND. tra2=0
      2 de m_ancho/3+13-131+18 x m_alto-94-105
      1 de m_ancho/3+13-116+18 x m_alto-94-105
   FIN DESARME
   /* tra1= posicion del travesanio */
   DESARMAR SOLO SI tra1>0
      2 de m_ancho/3+13-131+18 x tra1-33-105+18
      1 de m_ancho/3+13-116+18 x tra1-33-105+18
	PANELES
      2 de m_ancho/3+13-131+18 x m_alto-tra1-33-108+18
      1 de m_ancho/3+13-116+18 x m_alto-tra1-33-108+18
   FIN DESARME

   /* tra2= cantidad de traviesas, se suponen centradas */
   DESARMAR SOLO SI tra2>0
      2*(tra2+1) de m_ancho/3+13-131+18 x (m_alto-105-94-47*tra2)/(tra2+1)
      1*(tra2+1) de m_ancho/3+13-116+18 x (m_alto-105-94-47*tra2)/(tra2+1)
   FIN DESARME

	/* ACCESORIOS */
        PARTE T114
	   2 x 2+INT((m_ancho-300)/550)
	   2 x 2+INT((m_alto-300)/550)
	PARTE B31
           8  x (m_ancho/3+13)/1000
           8  x (m_alto-106-94)/1000
        PARTE C14
           12  x (m_ancho/3+13)/1000
	PARTE C14
	   8 x  (m_alto-83)/1000
        SEGUN cierre PARTE H101,H102
	   1 x 2
        SEGUN rueda PARTE R46,R47
	   1 x 6
	PARTE T18
	   2 x 2+INT((m_ancho-300)/550)
	   2 x 2+INT((m_alto-300)/550)
	   1 x 12
   PARTE T130
	   1 x 2
	PARTE T131
	   1 x 2
   PARTE T117
      1 x 4
   PARTE T118
      1 x 4
	PARTE T132
	   1 x 4
	PARTE T112
	   1 x 2
   PARTE T100
	   1 x 4
   PARTE T122
      1 x 4


MOSQUITERO:
 DESARMAR SOLO SI mosquitero !=0
        PERFIL C6038
                2 x m_ancho/3+45
                2 x m_alto-96
        PERFIL C6039
                2 x m_alto-109
        PARTE T21
                2 x INT((m_alto-120)/350)+1
        TELA
                1 de m_ancho/3+45 x m_alto-96

        DESARMAR SOLO SI tramosq!=0
        PERFIL C6256
                tramosq x m_ancho/3+45-63
        FIN DESARME
        PARTE E73
               1 x 4
        PARTE D
               1 x 16
        PARTE B70
               2 x (m_alto-96)/1000
        PARTE R43
               1 x 4
        PARTE I
                4 x tramosq
    FIN DESARME
FIN MOSQUITERO:
FIN DESARME 


/* ventana de 3 hojas laterales en la misma guia*/









/* tres hojas laterales en misma guia  1/4  */
DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=3

/* Travesanios */

DESARMAR SOLO SI m_dvh=0
   PERFIL C6061
FIN DESARME

DESARMAR SOLO SI m_dvh=1
   PERFIL C6073
FIN DESARME
      2 x (m_ancho+39)/2
      4 x (m_ancho+39)/4

/* tra1= POSICION del travesanio */
DESARMAR SOLO SI tra1>0 .AND. tra2=0
        DESARMAR SOLO SI m_dvh=0
	   PERFIL C5996
	FIN DESARME
        DESARMAR SOLO SI m_dvh=1
	   PERFIL C5997
	FIN DESARME
      1 x (m_ancho+39)/2-85
      2 x (m_ancho+39)/4-85
   PARTE T18
      1 x 12
   PARTE T100
      1 x 12
   PARTE B31
      12  x (m_ancho/3+13-85)/1000
FIN DESARME

/* tra2= cantidad de traviesas, se suponen centradas */
DESARMAR SOLO SI tra2>0 .AND. tra1=0
        DESARMAR SOLO SI m_dvh=0
	   PERFIL C5996
	FIN DESARME
        DESARMAR SOLO SI m_dvh=1
	   PERFIL C5997
	FIN DESARME
      tra2 x (m_ancho+39)/2-85
      2*tra2 x (m_ancho+39)/4-85
   PARTE T18
      tra2 x 4
   PARTE T100
      tra2 x 4
   PARTE B31
      tra2*3  x (m_ancho/3+13-85)/1000
FIN DESARME

/* Parantes Laterales */
  DESARMAR SOLO SI m_dvh=0
     PERFIL C6034
  FIN DESARME
  DESARMAR SOLO SI m_dvh=1
     PERFIL C6071
  FIN DESARME
   2  x m_alto-86
/* Parantes Centrales */
        DESARMAR SOLO SI m_dvh=0
           PERFIL C6035
	FIN DESARME
        DESARMAR SOLO SI m_dvh=1
           PERFIL C6072
	FIN DESARME
   4  x m_alto-86

/* INTERIORES */
VIDRIOS
   DESARMAR SOLO SI tra1=0 .AND. tra2=0
      2 de (m_ancho+39)/4-131+18 x m_alto-94-105
      1 de (m_ancho+39)/2-116+18 x m_alto-94-105

   FIN DESARME
   /* tra1= posicion del travesanio */
   DESARMAR SOLO SI tra1>0
      2 de (m_ancho+39)/4-131+18 x tra1-33-105+18
      1 de (m_ancho+39)/2-116+18 x tra1-33-105+18
	PANELES
      2 de (m_ancho+39)/4-131+18 x m_alto-tra1-33-108+18
      1 de (m_ancho+39)/2-116+18 x m_alto-tra1-33-108+18
   FIN DESARME

   /* tra2= cantidad de traviesas, se suponen centradas */
   DESARMAR SOLO SI tra2>0
      2*(tra2+1) de (m_ancho+39)/4-131+18 x (m_alto-105-94-47*tra2)/(tra2+1)
      1*(tra2+1) de (m_ancho+39)/2-116+18 x (m_alto-105-94-47*tra2)/(tra2+1)
   FIN DESARME

	/* ACCESORIOS */
        PARTE T114
	   2 x 2+INT((m_ancho-300)/550)
	   2 x 2+INT((m_alto-300)/550)
	PARTE B31
           8  x (m_ancho/3+13)/1000
           8  x (m_alto-106-94)/1000
        PARTE C14
           12  x (m_ancho/3+13)/1000
	PARTE C14
	   8 x  (m_alto-83)/1000
        SEGUN cierre PARTE H101,H102
	   1 x 2
        SEGUN rueda PARTE R46,R47
	   1 x 6
	PARTE T18
	   2 x 2+INT((m_ancho-300)/550)
	   2 x 2+INT((m_alto-300)/550)
	   1 x 12
   PARTE T130
	   1 x 2
	PARTE T131
	   1 x 2
  PARTE T117
     1 x 6
  PARTE T118
      1 x 6
	PARTE T132
	   1 x 4
	PARTE T112
	   1 x 2
        PARTE T100
	   1 x 4
        PARTE T122
           1 x 4


MOSQUITERO:
 DESARMAR SOLO SI mosquitero !=0
        PERFIL C6038
                4 x (m_ancho+135)/4
                4 x m_alto-96
        PERFIL C6039
                2 x m_alto-109
        PARTE T21
                2 x INT((m_alto-120)/350)+1
        TELA
                2 de (m_ancho+135)/4 x m_alto-96

        DESARMAR SOLO SI tramosq!=0
        PERFIL C6256
                tramosq x (m_ancho+135)/4-63
        FIN DESARME
        PARTE E73
               2 x 4
        PARTE D
               2 x 16
        PARTE B70
               4 x (m_alto-96)/1000
        PARTE R43
               2 x 4
        PARTE I
                8 x tramosq
    FIN DESARME
FIN MOSQUITERO:
FIN DESARME 

/* ventana de 3 hojas laterales en la misma guia*/











/* tres hojas lateral y central en misma guia */
DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=2

/* Travesanios */
        DESARMAR SOLO SI m_dvh=0
           PERFIL C6061
	FIN DESARME
        DESARMAR SOLO SI m_dvh=1
           PERFIL C6073
	FIN DESARME
      6  x m_ancho/3-19

/* tra1= POSICION del travesanio */
DESARMAR SOLO SI tra1>0 .AND. tra2=0
        DESARMAR SOLO SI m_dvh=0
	   PERFIL C5996
	FIN DESARME
        DESARMAR SOLO SI m_dvh=1
	   PERFIL C5997
	FIN DESARME
      3  x m_ancho/3-19-85
   PARTE T18
      1 x 12
   PARTE T100
      1 x 12
   PARTE B31
      12  x (m_ancho/3-19)/1000
FIN DESARME
   PERFIL C5965
      1 x m_alto-86
/* tra2= cantidad de traviesas, se suponen centradas */
DESARMAR SOLO SI tra2>0 .AND. tra1=0
        DESARMAR SOLO SI m_dvh=0
	   PERFIL C5996
	FIN DESARME
        DESARMAR SOLO SI m_dvh=1
	   PERFIL C5997
	FIN DESARME
      3*tra2 x m_ancho/3-19
   PARTE T18
      tra2 x 4
   PARTE T100
      tra2 x 4
   PARTE B31
      tra2*3  x (m_ancho/3-19)/1000
FIN DESARME

/* Parantes Laterales */
        DESARMAR SOLO SI m_dvh=0
           PERFIL C6034
	FIN DESARME
        DESARMAR SOLO SI m_dvh=1
           PERFIL C6071
	FIN DESARME
   4  x m_alto-86
/* Parantes Centrales */
        DESARMAR SOLO SI m_dvh=0
           PERFIL C6035
	FIN DESARME
        DESARMAR SOLO SI m_dvh=1
           PERFIL C6072
	FIN DESARME
   2  x m_alto-86
/* INTERIORES */

VIDRIOS
   DESARMAR SOLO SI tra1=0 .AND. tra2=0
      3 de m_ancho/3-19-116+18 x m_alto-94-105
   FIN DESARME

   /* tra1= posicion del travesanio */
   DESARMAR SOLO SI tra1>0
      3 de m_ancho/3-19-116+18 x tra1-33-105+18
	PANELES
      3 de m_ancho/3-19-116+18 x m_alto-tra1-33-108+18
   FIN DESARME

   /* tra2= cantidad de traviesas, se suponen centradas */
   DESARMAR SOLO SI tra2>0
      3*(tra2+1) de m_ancho/3-19-116+18 x (m_alto-105-94-47*tra2)/(tra2+1)
   FIN DESARME

	/* ACCESORIOS */
        PARTE T114
	   2 x 2+INT((m_ancho-300)/550)
	   2 x 2+INT((m_alto-300)/550)
	PARTE B31
           8  x (m_ancho/3-19)/1000
           8  x (m_alto-106-94)/1000
        PARTE C14
           12  x (m_ancho/3-19)/1000
	PARTE C14
	   8 x  (m_alto-83)/1000
        SEGUN cierre PARTE H101,H102
	   1 x 3
        SEGUN rueda PARTE R46,R47
	   1 x 6
	PARTE T18
	   2 x 2+INT((m_ancho-300)/550)
	   2 x 2+INT((m_alto-300)/550)
	   1 x 12
   PARTE T130
	   1 x 2
	PARTE T131
	   1 x 2
  PARTE T117
     1 x 6
  PARTE T118
	   1 x 8
	PARTE T132
	   1 x 4
	PARTE T112
	   1 x 2
        PARTE T100
	   1 x 4
        PARTE T122
           1 X 12

MOSQUITERO:
DESARMAR SOLO SI mosquitero !=0
        PERFIL C6038
                2 x m_ancho/3+3
                2 x m_alto-96
        PERFIL C6039
                2 x m_alto-109
        PARTE T21
                2 x INT((m_alto-120)/350)+1
        TELA
                1 de m_ancho/3+3 x m_alto-96

        DESARMAR SOLO SI tramosq!=0
        PERFIL C6256
                tramosq x m_ancho/3+3-63
        FIN DESARME
        PARTE E73
               1 x 4
        PARTE D
               1 x 16
        PARTE B70
               2 x (m_alto-96)/1000
        PARTE R43
               1 x 4
        PARTE I
                4 x tramosq
    FIN DESARME
FIN MOSQUITERO:
FIN DESARME 

/* ventana de 3 hojas lateral y central en la misma guia*/



DESARMAR SOLO SI n_hojas=4
/* Travesanios */
        DESARMAR SOLO SI m_dvh=0
           PERFIL C6061
	FIN DESARME
        DESARMAR SOLO SI m_dvh=1
           PERFIL C6073
	FIN DESARME
      8  x m_ancho/4+1
   PERFIL C5965
      1 x m_alto-86 

/* tra1= POSICION del travesanio */
DESARMAR SOLO SI tra1>0 .AND. tra2=0
        DESARMAR SOLO SI m_dvh=0
	   PERFIL C5996
	FIN DESARME
        DESARMAR SOLO SI m_dvh=1
	   PERFIL C5997
	FIN DESARME
      4  x m_ancho/4+1-85
   PARTE T18
      1 x 16
   PARTE T100
      1 x 16
   PARTE B31
      16  x (m_ancho/4+1)/1000
         
FIN DESARME
/* tra2= cantidad de traviesas, se suponen centradas */
DESARMAR SOLO SI tra2>0 .AND. tra1=0
        DESARMAR SOLO SI m_dvh=0
	   PERFIL C5996
	FIN DESARME
        DESARMAR SOLO SI m_dvh=1
	   PERFIL C5997
	FIN DESARME
      4*tra2 x m_ancho/4+1-85
   PARTE T18
      tra2 x 4
   PARTE T100
      tra2 x 4
   PARTE B31
      tra2*4  x (m_ancho/4+1)/1000
FIN DESARME
/* Parantes Laterales */
        DESARMAR SOLO SI m_dvh=0
           PERFIL C6034
	FIN DESARME
        DESARMAR SOLO SI m_dvh=1
           PERFIL C6071
	FIN DESARME
   4  x m_alto-86
/* Parantes Centrales */
        DESARMAR SOLO SI m_dvh=0
           PERFIL C6035
	FIN DESARME
        DESARMAR SOLO SI m_dvh=1
           PERFIL C6072
	FIN DESARME
   4  x m_alto-86
SEPARACION
/* INTERIORES */
VIDRIOS
   DESARMAR SOLO SI tra1=0 .AND. tra2=0
      4 de m_ancho/4+1-98 x m_alto-94-105
   FIN DESARME
   /* tra1= posicion del travesanio */
   DESARMAR SOLO SI tra1>0
      4 de m_ancho/4+1-98 x tra1-33-105+18
	PANELES
      4 de m_ancho/4+1-98 x m_alto-tra1-33-108+18
   FIN DESARME
   /* tra2= cantidad de traviesas, se suponen centradas */
   DESARMAR SOLO SI tra2>0
      4*(tra2+1) de m_ancho/4+1-98 x (m_alto-105-94-47*tra2)/(tra2+1)
   FIN DESARME

	/* ACCESORIOS */
        PARTE T114
           4 x 2+INT((m_ancho-300)/550)
	   4 x 2+INT((m_alto-300)/550)
	PARTE B31
           16  x (m_ancho/4+1)/1000
           16  x (m_alto-106-94)/1000
        PARTE C14
           16  x (m_ancho/4+1)/1000
	PARTE C14
	   12 x  (m_alto-83)/1000
        SEGUN cierre PARTE H101,H102
           1 x 3
        SEGUN rueda PARTE R46,R47
	   1 x 8
	PARTE T18
	   4 x 2+INT((m_ancho-300)/550)
	   4 x 2+INT((m_alto-300)/550)
	   1 x 28
   PARTE T130
	   1 x 4
	PARTE T131
	   1 x 2
   PARTE T118
	   1 x 16
	PARTE T132
	   1 x 2
	PARTE T78
	   1 x 2
        PARTE T100
	   1 x 4
        PARTE T122
           1 x 16

MOSQUITERO:
 DESARMAR SOLO SI mosquitero !=0
        PERFIL C6038
                4 x m_ancho/4+1
                4 x m_alto-96
        PERFIL C6039
                2 x m_alto-109
        PARTE T21
                2 x INT((m_alto-120)/350)+1
        TELA
                2 de m_ancho/4+1 x m_alto-96

        DESARMAR SOLO SI tramosq!=0
        PERFIL C6256
                2*tramosq x m_ancho/4+1-63
        FIN DESARME
        PARTE E73
               2 x 4
        PARTE D
               2 x 16
        PARTE B70
               4 x (m_alto-96)/1000
        PARTE R43
               2 x 4
        PARTE I
                8 x tramosq
    FIN DESARME
FIN MOSQUITERO:
FIN DESARME 

/* ventana de 4 hojas */




m_cant_vid:=cant_vid()
m_2vid:=m2_vid()

PRODUCTO MACORR





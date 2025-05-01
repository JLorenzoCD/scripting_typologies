/* PERTA Corrediza  3 Hojas*/

PRODUCTO PMGUIM

CALCULOS
   tra_n:=0
  
FIN CALCULOS

DESARMAR SOLO SI n_hojas=3
CORTES A RECTO:

   /* MARCO */
   PERFIL C6240
      2 x m_ancho - 42
   PERFIL C6241
      2 x m_alto

DESARMAR SOLO SI m_dvh=0  
      PERFIL C6204
FIN DESARME
DESARMAR SOLO SI m_dvh=1  
      PERFIL C6249
FIN DESARME

        3 x m_ancho/3-3

DESARMAR SOLO SI m_dvh=0
      PERFIL C6209
FIN DESARME
DESARMAR SOLO SI m_dvh=1  
      PERFIL C6252
FIN DESARME
         3 x m_ancho/3-3

      /* tra1 = posicion al eje de la unica traviesa */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
DESARMAR SOLO SI m_dvh=0  
      PERFIL C6239
FIN DESARME
DESARMAR SOLO SI m_dvh=1  
      PERFIL C6253
FIN DESARME
            3 x m_ancho/3-47
         
	PARTE I
            1 x 12
         PARTE T95
            1 x 12
         PARTE B60
            6 x (m_ancho/3-5)/1000
      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0 .AND. tra1=0
DESARMAR SOLO SI m_dvh=0  
      PERFIL C6239
FIN DESARME
DESARMAR SOLO SI m_dvh=1  
      PERFIL C6253
FIN DESARME

            3*tra2 x m_ancho/3-47

         PARTE I
            1 x 12*tra2
         PARTE T95
            1 x 12*tra2
         PARTE B60
            6*tra2 x (m_ancho/3-5)/1000
      FIN DESARME

DESARMAR SOLO SI m_dvh=0  
      PERFIL C6207
FIN DESARME
DESARMAR SOLO SI m_dvh=1  
      PERFIL C6250
FIN DESARME
      
       3 x m_alto - 79

DESARMAR SOLO SI m_dvh=0  
      PERFIL C6203
FIN DESARME
DESARMAR SOLO SI m_dvh=1  
      PERFIL C6248
FIN DESARME
      
         2 x m_alto - 79

DESARMAR SOLO SI m_dvh=0  
      PERFIL C6208
FIN DESARME
DESARMAR SOLO SI m_dvh=1  
      PERFIL C6251
FIN DESARME
 

       1 x m_alto - 79



      DESARMAR SOLO SI mosquitero!=0
         SEPARACION
         /* Horizontales */
         PERFIL C6255
            CORTES A 45:
            2 x (m_ancho/3*2)
            CORTES A RECTO:
         DESARMAR SOLO SI tramosq>0
            PERFIL C6256
               tramosq x  [(m_ancho/3)x2]-63
            PARTE I
               tramosq x 4
            PARTE N
               tramosq*2 x {[(m_ancho/3)x2]-63}/1000
         FIN DESARME
         /* Verticales */
         PERFIL C6255
         CORTES A 45:
            2 x m_alto-82
         CORTES A RECTO:
         PERFIL C6228
            1 x m_alto
         PARTE T21
            1 x 2+INT((m_alto-100)/250)
         PARTE C3
            1 x 2
         PARTE E73
            1 x 4
         PARTE D
            1 x 16
         PARTE R43
            1 x 2
         PARTE N
            2 x [(m_ancho/3)x2]/1000
            2 x (m_alto-82)/1000
         PARTE B9
            2 x (m_alto-82)/1000

         TELA
            1 de (m_ancho/3)*2 x m_alto-82
        
      FIN DESARME       /*  Mosquitero */

      VIDRIOS
         
         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            3 de m_ancho/3-3-52 x m_alto-245+20
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            VIDRIOS
       3 de m_ancho/3-3-52 x tra1-140-16.5
            PANELES
       3 de m_ancho/3-3-52 x m_alto-tra1-36-49.5-16.5
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            3*(tra2+1) de m_ancho/3-3-52 x (m_alto-225-33*tra2)/(tra2+1)
         FIN DESARME

      /* MECANISMO */
      PARTE D
         1 x 36    
      SEGUN rueda PARTE R39,R40,R41,R42
         1 x 6
      SEGUN cierre PARTE H56,H102_MODENA,H60
         1 x 2
      PARTE I
         1 x 12
      PARTE T90
         1 x 6
      PARTE T89
         1 x 6
      PARTE T93
         1 x 3
      PARTE C14
         12 x (m_ancho/3-27)/1000
         8 x (m_alto-79)/1000
      PARTE B60
         6 x (m_ancho/3-27)/1000
         6 x (m_alto-160)/1000
      PARTE T69
         1 x 2+INT((m_ancho-200)/500)
	DESARMAR SOLO SI taco_reg=1
      PARTE T88
         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
	FIN DESARME
      PARTE I
         2 x 2+INT((m_ancho-200)/500)
         2 x 2+INT((m_alto-200)/500)
      PARTE T91
         1 x 4
      PARTE T92
         1 x 4
      PARTE T94
         1 x 2+INT((m_ancho-200)/500)


    
m_cant_vid:=cant_vid()
m_2vid:=m2_vid()

PRODUCTO MACORR




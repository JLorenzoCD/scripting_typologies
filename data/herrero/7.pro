/* Puerta Corrediza ALTERNATIVA C/ 44/53/54*/

   VARIABLE perfil_2
   VARIABLE perfil_3

        CORTES A 45

   PERFIL 690
      2 x m_ancho
      2 x m_alto

        CORTES A RECTO

   /* Ventanas de 2 Hojas */
   DESARMAR SOLO SI n_hojas=2

      PERFIL 44
         2 x m_ancho/2-109


      DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2=0
         PERFIL 2
            2 x m_ancho/2-109
      FIN DESARME

      /* tra1= POSICION del primer travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
         PERFIL 2
            4 x m_ancho/2-109
         PARTE I
            1 x 4
         PARTE J
            1 x 4
         PARTE QRS
            4 x (m_ancho/2-100)/1000
      FIN DESARME

      /* tra_n= POSICION del segundo travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
         PERFIL 2
            6 x m_ancho/2-109
         PARTE I
            1 x 8
         PARTE J
            1 x 8
         PARTE QRS
            8 x (m_ancho/2-100)/1000
      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0 .AND. tra1=0 .AND. tra_n=0
         PERFIL 2
            2+2*tra2 x m_ancho/2-109
         PARTE I
            1 x 4*tra2
         PARTE J
            1 x 4*tra2
         PARTE QRS
            4*tra2 x (m_ancho/2-100)/1000

      FIN DESARME


      /* Parantes laterales */
      PERFIL 53
         2 x m_alto-42

      /* Parantes Centrales */
      PERFIL 54
          2 x m_alto-42

      VIDRIOS

        

         DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2=0
            2 de m_ancho/2-91 x m_alto-149
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
            2 de m_ancho/2-91 x tra1-87-16
            PANELES
            2 de m_ancho/2-91 x m_alto-tra1-62-16
         FIN DESARME

         /* tra_n posicion del segundo travesanio */
         DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
            2 de m_ancho/2-91 x tra1-87-16
            PANELES
            2 de m_ancho/2-91 x tra_n-tra1-16-16
            OTROS INTERIORES
            2 de m_ancho/2-91 x m_alto-tra_n-62-16
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2>0
            2*(tra2+1) de m_ancho/2-91 x (m_alto-149-32*tra2)/(tra2+1)
         FIN DESARME

      /* MECANISMO */

      PARTE C2
         1 x 4
      PARTE D
         1 x 36    
      PARTE 1042
         1 x 1
      PARTE I
         1 x 12
      PARTE J
         1 x 12
      PARTE AGN
         1 x 4
      PARTE AGV
         1 x 4 
      PARTE ABD
         1 x 2
      PARTE H
         8 x (m_ancho/2-100)/1000
         6 x (m_alto-66)/1000
      PARTE QRS
         4 x (m_ancho/2-100)/1000
         4 x (m_alto-66-100)/1000

   FIN DESARME   /* Puertas de Dos Hojas */


   /* Puertas de 3 Hojas Tipo de guia "A"*/

	DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=1

      PERFIL 44 
         3 x m_ancho/3-111


      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         PERFIL 2
            3 x m_ancho/3-111
      FIN DESARME

      /* tra1= POSICION del primer travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
         PERFIL 2
            6 x m_ancho/3-111
         PARTE I
            1 x 12
         PARTE J
            1 x 12
         PARTE QRS
            6 x (m_ancho/3-97)/1000

      FIN DESARME

      /* tra_n= POSICION del segundo travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
         PERFIL 2
            9 x m_ancho/3-111
         PARTE I
            1 x 18
         PARTE J
            1 x 18
         PARTE QRS
            12 x (m_ancho/3-97)/1000

      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2>0
         PERFIL 2
            2*(2+tra2) x m_ancho/3-111
         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-97)/1000
      FIN DESARME


      /* Parantes laterales */
      PERFIL 53
         4 x m_alto-42

      /* Parantes Centrales */
      PERFIL 54
          2 x m_alto-42
      PERFIL 19
          1 x m_alto-42

      VIDRIOS

         SEPARACION

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            3 de m_ancho/3-94 x m_alto-149
         FIN DESARME

         /* tra1= posicion del primer travesanio */
         DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
            3 de m_ancho/3-94 x tra1-87-16
         PANELES
            3 de m_ancho/3-94 x m_alto-tra1-62-16
         FIN DESARME

         /* tra_n= posicion del segundo travesanio */
         DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
            3 de m_ancho/3-94 x tra1-87-16
            PANELES
            3 de m_ancho/3-94 x tra_n-tra1-16-16
            OTROS INTERIORES
            3 de m_ancho/3-94 x m_alto-tra_n-62-16
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2>0
            3*(tra2+1) de m_ancho/3-94 x (m_alto-149-32*tra2)/(tra2+1)
         FIN DESARME

   FIN DESARME   /* Puertas de Tres Hojas Guia A */

   /* Puertas de Tres Hojas Tipo de Guia 'B' */

	DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=2

       PERFIL 44
         3 x m_ancho/3-92


      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         PERFIL 2
            3 x m_ancho/3-92
      FIN DESARME

      /* tra1= POSICION del primer travesanio */
         DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
         PERFIL 2
            6 x m_ancho/3-92
         PARTE I
            1 x 12
         PARTE J
                1 x 12
         PARTE QRS
            12 x (m_ancho/3-81)/1000

      FIN DESARME

      /* tra_n= POSICION del segundo travesanio */
         DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
         PERFIL 2
            9 x m_ancho/3-92
         PARTE I
            1 x 18
         PARTE J
                1 x 18
         PARTE QRS
            24 x (m_ancho/3-81)/1000

      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2>0
         PERFIL 2
            3*(2+tra2) x m_ancho/3-92
         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-92)/1000
      FIN DESARME


      /* Parantes laterales */
      PERFIL 53
         2 x m_alto-42

      /* Parantes Centrales */
      PERFIL 54
          4 x m_alto-42

      VIDRIOS

         SEPARACION

         DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2=0
            3 de m_ancho/3-74 x m_alto-149
         FIN DESARME

         /* tra1= posicion del primer travesanio */
         DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
            3 de m_ancho/3-74 x tra1-87-16
            PANELES
            3 de m_ancho/3-74 x m_alto-tra1-62-16
         FIN DESARME

         /* tra_n= posicion del segundo travesanio */
         DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
            3 de m_ancho/3-74 x tra1-87-16
            PANELES
            3 de m_ancho/3-74 x tra_n-tra1-16-16
            OTROS INTERIORES
            3 de m_ancho/3-74 x m_alto-tra_n-62-16
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2>0
            3*(tra2+1) de m_ancho/3-74 x (m_alto-149-32*tra2)/(tra2+1)
         FIN DESARME

   FIN DESARME   /* Puertas de Tres Hojas Guia B*/


   DESARMAR SOLO SI n_hojas=3

      PARTE C2
         1 x 6
      PARTE D
         1 x 36    
   DESARMAR SOLO SI guia_3h=1
      PARTE 1042
         1 x 1
   FIN DESARME
   DESARMAR SOLO SI guia_3h=2
      PARTE 1042
         1 x 2
   FIN DESARME

      PARTE I
         1 x 18
      PARTE J
         1 x 18
      PARTE AGN
         1 x 6
      PARTE AGV
	 1 x 6	
      PARTE ABD
         1 x 4
      PARTE H
         12 x (m_ancho/3-80)/1000
         8 x (m_alto-66)/1000
      PARTE QRS
         6 x (m_ancho/3-80)/1000
         6 x (m_alto-66-100)/1000
   FIN DESARME   /* Ventanas de tres Hojas */


   /* Puertas de 4 hojas*/   
      
   DESARMAR SOLO SI n_hojas=4

      PERFIL 44
         4 x m_ancho/4-99


      DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2=0
         PERFIL 2
            4 x m_ancho/4-99
      FIN DESARME

      /* tra1= POSICION del primer travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
         PERFIL 2
            8 x m_ancho/4-99
         PARTE I
            1 x 8
         PARTE J
            1 x 8
         PARTE QRS
            8 x (m_ancho/4-99)/1000
      FIN DESARME

      /* tra_n= POSICION del segundo travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
         PERFIL 2
            12 x m_ancho/4-99
         PARTE I
            1 x 24
         PARTE J
            1 x 24
         PARTE QRS
            16 x (m_ancho/4-99)/1000
      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2>0
         PERFIL 2
            4*tra2+4 x m_ancho/4-99
         PARTE I
            1 x 8*tra2
         PARTE J
            1 x 8*tra2
         PARTE QRS
            8*tra2 x (m_ancho/4-99)/1000

      FIN DESARME


      /* Parantes laterales */
      PERFIL 53
         4 x m_alto-42

      /* Parantes Centrales */
      PERFIL 54
          4 x m_alto-42

      /* Cierre Central para Puertas de 4 hojas */
      PERFIL 19
         1 x m_alto-42

      VIDRIOS

         SEPARACION

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            4 de m_ancho/4-81 x m_alto-149
         FIN DESARME

         /* tra1= posicion del primer travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra_n=0 .AND. tra2=0
            4 de m_ancho/4-81 x tra1-87-16
           PANELES
            4 de m_ancho/4-81 x m_alto-tra1-62-16
         FIN DESARME

         /* tra_n= posicion del segundo travesanio */
      DESARMAR SOLO SI tra1>0 .AND. tra_n>0 .AND. tra2=0
            4 de m_ancho/4-81 x tra1-87-16
            PANELES
            4 de m_ancho/4-81 x tra_n-tra1-16-16
            OTROS INTERIORES
            4 de m_ancho/4-81 x m_alto-tra_n-62-16
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra1=0 .AND. tra_n=0 .AND. tra2>0
            4*(tra2+1) de m_ancho/4-81 x (m_alto-149-32*tra2)/(tra2+1)
         FIN DESARME

      PARTE C2
         1 x 8
      PARTE D
         1 x 36    
      PARTE 1042
         1 x 2
      PARTE I
         1 x 24
      PARTE J
         1 x 24
      PARTE AGN
         1 x 8
      PARTE AGV
	 1 x 8
      PARTE ABD
         1 x 4
      PARTE H
         16 x (m_ancho/4-84)/1000
         12 x (m_alto-66)/1000
      PARTE QRS
         8 x (m_ancho/4-84)/1000
         8 x (m_alto-66-100)/1000

   FIN DESARME   /* Puertas de Cuatro Hojas*/

         
m_cant_vid:=cant_vid()
m_2vid:=m2_vid()

PRODUCTO MOCORR         
         


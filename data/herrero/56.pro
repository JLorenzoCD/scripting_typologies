/* Ventana Corrediza ALTERNATIVA C/ 44/53/54*/

CALCULOS
tra_n:=0
FIN CALCULOS

   VARIABLE perfil_2
   VARIABLE perfil_3

   PERFIL 690
      2 x m_ancho
      2 x m_alto

   SEPARACION

   /* Ventanas de 2 Hojas */
   DESARMAR SOLO SI n_hojas=2

      PERFIL 44
         2 x m_ancho/2-109

      PERFIL 2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         2 x m_ancho/2-109
      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         4 x m_ancho/2-109
         PARTE I
            1 x 4
         PARTE J
            1 x 4
         PARTE QRS
            4 x (m_ancho/2-100)/1000

      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0
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

         SEPARACION

         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            2 de m_ancho/2-91 x m_alto-149
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            2 de m_ancho/2-91 x tra1-87-16
         PANELES
            2 de m_ancho/2-91 x m_alto-tra1-62-16
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            2*(tra2+1) de m_ancho/2-91 x (m_alto-149-32*tra2)/(tra2+1)
         FIN DESARME


      /* MECANISMO */

      PARTE B**
         1 x 4
      PARTE D
         1 x 36    
      PARTE 1088
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
         PARTE C2CR
            1 x 4
      PARTE H
         8 x (m_ancho/2-100)/1000
         6 x (m_alto-66)/1000
      PARTE QRS
         4 x (m_ancho/2-100)/1000
         4 x (m_alto-66-100)/1000


   FIN DESARME   /* Ventanas de Dos Hojas */


   /* Ventanas de 3 Hojas */

        DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=1

      PERFIL 44 
         3 x m_ancho/3-111

      PERFIL 2

                 DESARMAR SOLO SI tra1=0 .AND. tra2=0
         3 x m_ancho/3-111
                 FIN DESARME

      /* tra1= POSICION del travesanios */
                 DESARMAR SOLO SI tra1>0 .AND. tra2=0
         6 x m_ancho/3-111

         PARTE I
            1 x 6
         PARTE J
            1 x 6
         PARTE QRS
            6 x (m_ancho/3-111)/1000


                 FIN DESARME

              /* tra2= cantidad de traviesas, se suponen centradas */
                 DESARMAR SOLO SI tra2>0 .AND. tra1=0
                 2*(2+tra2) x m_ancho/3-111

                  PARTE I
                    1 x 6*tra2
                  PARTE J
                    1 x 6*tra2
                  PARTE QRS
                    6*tra2 x (m_ancho/3-111)/1000


                 FIN DESARME


      /* Parantes laterales */
                  PERFIL 53
                   4 x m_alto-42

      /* Parantes Centrales */
                  PERFIL 54
                   2 x m_alto-42

       /* encuentro central */
                  PERFIL 19
                   1 x m_alto-42

                 VIDRIOS

                 DESARMAR SOLO SI tra1=0 .AND. tra2=0
            3 de m_ancho/3-93 x m_alto-149
                 FIN DESARME

         /* tra1= posicion del travesanio */
                 DESARMAR SOLO SI tra1>0 .AND. tra2=0
            3 de m_ancho/3-93 x tra1-87-16
            PANELES
            3 de m_ancho/3-93 x m_alto-tra1-62-16

         PARTE I
            1 x 6
         PARTE J
            1 x 6
         PARTE QRS
            6 x (m_ancho/3-81)/1000


                 FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
                 DESARMAR SOLO SI tra2>0 .AND. tra1=0
            3*(tra2+1) de m_ancho/3-93 x (m_alto-149-32*tra2)/(tra2+1)

         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-93)/1000


                 FIN DESARME

   /* MECANISMO */

                 DESARMAR SOLO SI n_hojas=3
      PARTE B
         1 x 4
      PARTE D
         1 x 36    
      PARTE 1088
         1 x 2
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
         PARTE C2CR
            1 x 6
      PARTE H
         12 x (m_ancho/3-80)/1000
         8 x (m_alto-66)/1000
      PARTE QRS
         6 x (m_ancho/3-80)/1000
         6 x (m_alto-66-100)/1000



                 FIN DESARME   /* Ventanas de Tres Hojas Guia A */
        FIN DESARME
   /* Tipo de Guia 'B' */

        DESARMAR SOLO SI n_hojas=3 .AND. guia_3h=2

                PERFIL 44
                 3 x m_ancho/3-93

                PERFIL 2

                DESARMAR SOLO SI tra1=0 .AND. tra2=0
         3 x m_ancho/3-93
                FIN DESARME

      /* tra1= POSICION del travesanios */
                DESARMAR SOLO SI tra1>0 .AND. tra2=0
         6 x m_ancho/3-93

         PARTE I
            1 x 6
         PARTE J
            1 x 6
         PARTE QRS
            6 x (m_ancho/3-81)/1000

                FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
                DESARMAR SOLO SI tra2>0 .AND. tra1=0
         3*(2+tra2) x m_ancho/3-93

         PARTE I
            1 x 6*tra2
         PARTE J
            1 x 6*tra2
         PARTE QRS
            6*tra2 x (m_ancho/3-81)/1000


                FIN DESARME


      /* Parantes laterales */
      PERFIL 53
         2 x m_alto-42

      /* Parantes Centrales */
      PERFIL 54
          4 x m_alto-42
      VIDRIOS

                DESARMAR SOLO SI tra1=0 .AND. tra2=0
            3 de m_ancho/3-75 x m_alto-149
                FIN DESARME

         /* tra1= posicion del travesanio */
                DESARMAR SOLO SI tra1>0
            3 de m_ancho/3-75 x tra1-87-16
            PANELES
            3 de m_ancho/3-75 x m_alto-tra1-62-16
                FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
                DESARMAR SOLO SI tra2>0
            3*(tra2+1) de m_ancho/3-75 x (m_alto-149-32*tra2)/(tra2+1)
                FIN DESARME

   /* MECANISMO */

                DESARMAR SOLO SI n_hojas=3
      PARTE B
         1 x 4
      PARTE D
         1 x 36    
      PARTE 1088
         1 x 2
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
         PARTE C2CR
            1 x 6
      PARTE H
         12 x (m_ancho/3-80)/1000
         8 x (m_alto-66)/1000
      PARTE QRS
         6 x (m_ancho/3-80)/1000
         6 x (m_alto-66-100)/1000


                FIN DESARME   /* Ventanas de Tres Hojas Guia B*/
        FIN DESARME
         
   DESARMAR SOLO SI n_hojas=4

      PERFIL 44                  
         4 x m_ancho/4-103

      PERFIL 2

      DESARMAR SOLO SI tra1=0 .AND. tra2=0
         4 x m_ancho/4-103  
      FIN DESARME

      /* tra1= POSICION del travesanios */
      DESARMAR SOLO SI tra1>0 .AND. tra2=0
         8 x m_ancho/4-103

         PARTE I
            1 x 8
         PARTE J
            1 x 8
         PARTE QRS
            8 x (m_ancho/4-103)/1000


      FIN DESARME

      /* tra2= cantidad de traviesas, se suponen centradas */
      DESARMAR SOLO SI tra2>0 .AND. tra1=0
         4*(2+tra2) x m_ancho/4-103  
         PARTE I
            1 x 8*tra2
         PARTE J
            1 x 8*tra2
         PARTE QRS
            8*tra2 x (m_ancho/4-103)/1000


      FIN DESARME


		/* Parantes laterales */
      PERFIL 53
         4 x m_alto-42

      /* Parantes Centrales */
      PERFIL 54
          4 x m_alto-42

      /* Cierre Central para ventanas de 4 hojas */
      PERFIL 19
         1 x m_alto-42

      VIDRIOS

        
         DESARMAR SOLO SI tra1=0 .AND. tra2=0
            4 de m_ancho/4-85 x m_alto-149
         FIN DESARME

         /* tra1= posicion del travesanio */
         DESARMAR SOLO SI tra1>0
            4 de m_ancho/4-85 x tra1-87-16
            PANELES
            4 de m_ancho/4-85 x m_alto-tra1-62-16
         FIN DESARME

         /* tra2= cantidad de traviesas, se suponen centradas */
         DESARMAR SOLO SI tra2>0
            4*(tra2+1) de m_ancho/4-85 x (m_alto-149-32*tra2)/(tra2+1)
         FIN DESARME


      /* MECANISMO */
      PARTE B
         1 x 4
      PARTE D
         1 x 36    
      PARTE 1088
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
         PARTE C2CR
            1 x 8

      PARTE H
         16 x (m_ancho/4-84)/1000
         12 x (m_alto-66)/1000
      PARTE QRS
         8 x (m_ancho/4-84)/1000
         8 x (m_alto-66-100)/1000


   FIN DESARME   /* Ventanas de Cuatro Hojas*/

m_cant_vid:=cant_vid()
m_2vid:=m2_vid()
         
PRODUCTO MOCORR         
         



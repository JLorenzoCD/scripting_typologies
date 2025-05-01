/* Puerta de Rebatir */
/* Marco */

CALCULOS
tra2:=0
FIN CALCULOS

   PERFIL 10
      CORTES A 45:
      1 x m_ancho
      CORTES A 90 Y 45:
      2 x m_alto
      
   CORTES A RECTO:

   /* Puertas de una hoja */

DESARMAR SOLO SI n_hojas=1

   /* NO Lleva travesanio intermedio */
      
         PERFIL 11
            2 x m_ancho-208
     
      /* Batientes y Tapajuntas */
      PERFIL 39
         2 x m_alto-33
      PERFIL 41
         2 x m_alto-33
DESARMAR SOLO SI xtra=0
      /* Contravidrios */
	DESARMAR SOLO SI tra1=0 .AND. par1=0
      PERFIL 8
         /* NO lleva travesanio */
         
            4 x m_ancho-233
            4 x m_alto-213

    DESARMAR SOLO SI xtra=0
	VIDRIOS

        DESARMAR SOLO SI tipo_rev=1
                1 de m_ancho-213 x m_alto-213
        FIN DESARME
        DESARMAR SOLO SI tipo_rev=2
                PRODUCTO REVET , 1 de m_ancho-213 x m_alto-213
        FIN DESARME
        DESARMAR SOLO SI tipo_rev=3
                PRODUCTO REV688, 1 de m_ancho-213 x m_alto-213
        FIN DESARME
     FIN DESARME

     FIN DESARME
         /* LLEVA TRAVESANIO */

        DESARMAR SOLO SI tra1!=0 .AND. par1=0
       
     PERFIL 11
	 tra1 x m_ancho-208
     PERFIL 23 
	 tra1 x m_ancho-208
     PERFIL 8
   4*(tra1+1) x m_ancho-208-25 
   4*(tra1+1) x (m_alto-213-90*tra1)/(tra1+1)
        
      VIDRIOS
           DESARMAR SOLO SI tipo_rev=1
             tra1+1 de m_ancho-215 x (m_alto-220-tra1*97)/(tra1+1)
           FIN DESARME
           DESARMAR SOLO SI tipo_rev=2
         PRODUCTO REVET , tra1+1 de m_ancho-215 x (m_alto-220-tra1*97)/(tra1+1)
           FIN DESARME
           DESARMAR SOLO SI tipo_rev=3
         PRODUCTO REV688, tra1+1 de m_ancho-215 x (m_alto-220-tra1*97)/(tra1+1)
           FIN DESARME

         FIN DESARME

         DESARMAR SOLO SI tra1=0 .AND. par1!=0
      
     PERFIL 11
	 par1 x m_alto-213
     PERFIL 23 
	 par1 x m_alto-213
     PERFIL 8
   4*(par1+1) x (m_ancho-par1*115-233)/(par1+1)
   4*(par1+1) x m_alto-213
                  
                VIDRIOS
       DESARMAR SOLO SI tipo_rev=1
       par1+1 de (m_ancho-215-97*par1)/(par1+1) x m_alto-220
       FIN DESARME
       DESARMAR SOLO SI tipo_rev=2
       PRODUCTO REVET , par1+1 de (m_ancho-215-97*par1)/(par1+1) x m_alto-220
       FIN DESARME
       DESARMAR SOLO SI tipo_rev=3
       PRODUCTO REV688, par1+1 de (m_ancho-215-97*par1)/(par1+1) x m_alto-220
       FIN DESARME

       FIN DESARME

	DESARMAR SOLO SI tra1>0 .AND. par1>0
      
     PERFIL 11
	          tra1 x m_ancho-208
	 par1*(tra1+1) x (m_alto-90*tra1-213)/(tra1+1)
     PERFIL 23 
                  tra1 x m_ancho-208
	 par1*(tra1+1) x (m_alto-90*tra1-213)/(tra1+1)
     PERFIL 8
                     
 (4*(tra1+1))*(par1+1) x (m_ancho-208-115*par1)/(par1+1)
 (4*(par1+1))*(tra1+1) x (m_alto-90*tra1-213)/(tra1+1)
     	             	
         VIDRIOS
         DESARMAR SOLO SI tipo_rev=1
     (tra1+1)*(par1+1) de (m_ancho-210-97*par1)/(par1+1) x (m_alto-220-tra1*97)/(tra1+1)  
         FIN DESARME
         DESARMAR SOLO SI tipo_rev=2
     PRODUCTO REVET , (tra1+1)*(par1+1) de (m_ancho-210-97*par1)/(par1+1) x (m_alto-220-tra1*97)/(tra1+1)  
         FIN DESARME
         DESARMAR SOLO SI tipo_rev=3
     PRODUCTO REV688, (tra1+1)*(par1+1) de (m_ancho-210-97*par1)/(par1+1) x (m_alto-220-tra1*97)/(tra1+1)  
         FIN DESARME

       FIN DESARME
FIN DESARME               
      /* Lleva travesanio principal */

	DESARMAR SOLO SI xtra>0
	
         PERFIL 11
            1 x m_ancho-208
         PERFIL 23
            1 x m_ancho-208

	DESARMAR SOLO SI tipo_rev=1
     	VIDRIOS
		1 de m_ancho-213 x xtra-152
	FIN DESARME
        	DESARMAR SOLO SI tipo_rev = 2
            PRODUCTO REVET , 1 de m_ancho-213 x xtra-152 
        	FIN DESARME
        	DESARMAR SOLO SI tipo_rev = 3
            PRODUCTO REV688, 1 de m_ancho-213 x xtra-152
        	FIN DESARME
	

	DESARMAR SOLO SI tra1=0 .AND. par1=0

         PERFIL 8
         /* lleva travesanio xtra */
            8 x m_ancho-233
            4 x xtra-45-100
            4 x m_alto-xtra-45-113


  PANELES

         1 de m_ancho-213 x m_alto-xtra-45-120

	FIN DESARME
      
         /* LLEVA TRAVESANIO */

        DESARMAR SOLO SI tra1!=0 .AND. par1=0
       
     PERFIL 11
	 tra1 x m_ancho-208
     PERFIL 23 
	 tra1 x m_ancho-208
     PERFIL 8
   4*(tra1+1) x m_ancho-208-25 
   4*(tra1+1) x (m_alto-xtra-45-115-90*tra1)/(tra1+1)
            4 x m_ancho-233	
            4 x xtra-100-45

   PANELES
     
           tra1+1 de m_ancho-213 x (m_alto-xtra-45-117-tra1*97)/(tra1+1)

         FIN DESARME

         DESARMAR SOLO SI tra1=0 .AND. par1!=0
      
     PERFIL 11
	 par1 x m_alto-xtra-45-113
     PERFIL 23 
	 par1 x m_alto-xtra-45-113
     PERFIL 8
   4*(par1+1) x (m_ancho-par1*115-208)/(par1+1)
   4*(par1+1) x m_alto-xtra-45-113
            4 x m_ancho-233
            4 x xtra-100-45
  		PANELES
       par1+1 de (m_ancho-210-97*par1)/(par1+1) x m_alto-xtra-45-113-7
         FIN DESARME

	DESARMAR SOLO SI tra1>0 .AND. par1>0
      
     PERFIL 11
	          tra1 x m_ancho-208
	 par1*(tra1+1) x (m_alto-xtra-45-90*tra1-113)/(tra1+1)
     PERFIL 23 
                  tra1 x m_ancho-208
	 par1*(tra1+1) x (m_alto-xtra-45-90*tra1-113)/(tra1+1)
     PERFIL 8
                     4 x m_ancho-233
                     4 x xtra-113-45
 (4*(tra1+1))*(par1+1) x (m_ancho-208-115*par1)/(par1+1)
 (4*(par1+1))*(tra1+1) x (m_alto-xtra-45-90*tra1-113)/(tra1+1)
     	             	
         PANELES
     (tra1+1)*(par1+1) de (m_ancho-210-97*par1)/(par1+1) x (m_alto-xtra-45-117-tra1+97)/(tra1+1)  
                     
       FIN DESARME
  
FIN DESARME
   

     /* MECANISMO PUERTA DE UNA HOJA */
      PARTE A
         1 x 2
      PARTE D
         1 x 30
      PARTE C6
         1 x 3
      PARTE 1101
          1 x 1
      
      DESARMAR SOLO SI manijon>1
        SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
            1 x 2
      FIN DESARME
        PARTE MANIJA
         1 x 1

      DESARMAR SOLO SI cierra_p>0
         PARTE CIEPTA        
            1 x 1
      FIN DESARME

      DESARMAR SOLO SI caja_p=1
        PARTE CAJAP
           1 x 1
      FIN DESARME

      PARTE H 
         1 x m_ancho/1000
         4 x m_alto/1000

      PARTE T
	    2 x (m_ancho-180)/1000
	    2 x (m_alto-223)/1000	
         DESARMAR SOLO SI tra1!=0
         /* LLEVA TRAVESANIO */
            4*tra1 x (m_ancho-180)/1000
         FIN DESARME
         DESARMAR SOLO SI par1!=0
         /* NO LLEVA TRAVESANIO */
            4*par1 x (m_alto-180)/1000
         FIN DESARME
 PARTE UVW
	    2 x (m_ancho-180)/1000
	    2 x (m_alto-223)/1000 
         DESARMAR SOLO SI tra1!=0
         /* LLEVA TRAVESANIO */
            4*tra1 x (m_ancho-180)/1000
         FIN DESARME
         DESARMAR SOLO SI par1!=0
         /* NO LLEVA TRAVESANIO */
            4*par1 x (m_alto-180)/1000
         FIN DESARME

     
      PARTE C5
                    1 x 8+4*tra1+4*par1
        


	FIN DESARME


/* Puertas de una Hoja */

   /* =================================================== */


   /* Puertas de dos hoja */
DESARMAR SOLO SI n_hojas=2
   /* Batientes y Tapajuntas */
      PERFIL 39
         4 x m_alto-33
      PERFIL 41
         2 x m_alto-33
      PERFIL 42
         2 x m_alto-33
   DESARMAR SOLO SI xtra=0

      /* Contravidrios */
  /* NO Lleva travesanio intermedio */
      PERFIL 11
            4 x m_ancho/2-184
      PERFIL 8
         /* NO lleva travesanio */
      DESARMAR SOLO SI tra1=0 .AND. par1=0
            8 x m_ancho/2-209
            8 x m_alto-213
          VIDRIOS
          DESARMAR SOLO SI tipo_rev=1
               2 de m_ancho/2-194 x m_alto-220
          FIN DESARME
          DESARMAR SOLO SI tipo_rev=2
               PRODUCTO REVET , 2 de m_ancho/2-194 x m_alto-220
          FIN DESARME
          DESARMAR SOLO SI tipo_rev=3
               PRODUCTO REV688, 2 de m_ancho/2-194 x m_alto-220
          FIN DESARME

      FIN DESARME
      DESARMAR SOLO SI tra1>0 .AND. par1=0
       PERFIL 11
		2*tra1 x m_ancho/2-184
       PERFIL 23
            2*tra1 x m_ancho/2-184
       PERFIL 8
		4*(tra1+1) x m_ancho/2-209
		4*(tra1+1) x (m_alto-213-90)/2

       VIDRIOS
              DESARMAR SOLO SI tipo_rev=1  
		2*(tra1+1) de m_ancho/2-194 x (m_alto-213-7-97*tra1)/(tra1+1)
              FIN DESARME
              DESARMAR SOLO SI tipo_rev=2  
                PRODUCTO REVET , 2*(tra1+1) de m_ancho/2-194 x (m_alto-213-7-97*tra1)/(tra1+1)
              FIN DESARME
              DESARMAR SOLO SI tipo_rev=3  
                PRODUCTO REV688, 2*(tra1+1) de m_ancho/2-194 x (m_alto-213-7-97*tra1)/(tra1+1)
              FIN DESARME
      FIN DESARME

      DESARMAR SOLO SI par1>0 .AND. tra1=0
	 PERFIL 11
		2*par1 x m_alto-213
	 PERFIL 23
		2*par1 x m_alto-213
	 PERFIL 8 
		2*4*(par1+1) x (m_ancho/2-209-115*par1)/(par1+1)
		2*4*(par1+1) x m_alto-213	
	 VIDRIOS
         DESARMAR SOLO SI tipo_rev=1
		2*(par1+1) de (m_ancho/2-194-97*par1)/(par1+1) x m_alto-213-7
         FIN DESARME
         DESARMAR SOLO SI tipo_rev=2
               PRODUCTO REVET , 2*(par1+1) de (m_ancho/2-194-97*par1)/(par1+1) x m_alto-213-7
         FIN DESARME
         DESARMAR SOLO SI tipo_rev=3
               PRODUCTO REV688, 2*(par1+1) de (m_ancho/2-194-97*par1)/(par1+1) x m_alto-213-7
         FIN DESARME

      FIN DESARME
      DESARMAR SOLO SI tra1!=0 .AND. par1!=0
	 PERFIL 11
		2*tra1 x m_ancho/2-184
		2*par1*(tra1+1) x (m_alto-213-90*tra1)/(tra1+1)
	 PERFIL 23
            2*tra1 x m_ancho/2-184
		2*par1*(tra1+1) x (m_alto-213-90*tra1)/(tra1+1)
	 PERFIL 8
		8*(par1+1)*(tra1+1) x (m_ancho/2-209-115*par1)/(par1+1)
		8*(par1+1)*(tra1+1) x (m_alto-213-90*tra1)/(tra1+1)
	 VIDRIOS
         DESARMAR SOLO SI tipo_rev=1
		2*(par1+1)*(tra1+1) de (m_ancho/2-194-97*par1)/(par1+1) x (m_alto-213-7-97*tra1)/(tra1+1)
         FIN DESARME
         DESARMAR SOLO SI tipo_rev=2
                PRODUCTO REVET , 2*(par1+1)*(tra1+1) de (m_ancho/2-194-97*par1)/(par1+1) x (m_alto-213-7-97*tra1)/(tra1+1)
         FIN DESARME
         DESARMAR SOLO SI tipo_rev=3
                PRODUCTO REV688, 2*(par1+1)*(tra1+1) de (m_ancho/2-194-97*par1)/(par1+1) x (m_alto-213-7-97*tra1)/(tra1+1)
         FIN DESARME

      FIN DESARME
   FIN DESARME
            
     /* Lleva travesanio intermedio */
   DESARMAR SOLO SI xtra>0
         PERFIL 11
            6 x m_ancho/2-184
         PERFIL 23
            2 x m_ancho/2-184
	   PERFIL 8
	      8 x m_ancho/2-209
	      8 x xtra-100-45
      DESARMAR SOLO SI tra1=0 .AND. par1=0
         PERFIL 8  
          8 x m_ancho/2-209
          8 x m_alto-xtra-113-45
	   
         DESARMAR SOLO SI tipo_rev=1
        VIDRIOS
     	   2 de m_ancho/2-194 x xtra-45-100-7
         FIN DESARME
            DESARMAR SOLO SI tipo_rev = 2
        PRODUCTO REVET ,2 de m_ancho/2-194 x xtra-45-100-7 
            FIN DESARME
            DESARMAR SOLO SI tipo_rev = 3
        PRODUCTO REV688,2 de m_ancho/2-194 x xtra-45-100-7
            FIN DESARME
       PANELES    
  	   2 de m_ancho/2-194 x m_alto-xtra-113-45-7	
      FIN DESARME
 
         /* LLEVA TRAVESANIO */
      DESARMAR SOLO SI tra1!=0 .AND. par1=0
	   PERFIL 11
	    2*tra1 x m_ancho/2-189
	   PERFIL 23
	    2*tra1 x m_ancho/2-189
	   PERFIL 8
	    2*4*(tra1+1) x m_ancho/2-209
	    2*4*(tra1+1) x (m_alto-xtra-45-113-90*tra1)/(tra1+1)
       
         DESARMAR SOLO SI tipo_rev=1
        VIDRIOS
     	   2 de m_ancho/2-194 x xtra-45-100-7
         FIN DESARME
            DESARMAR SOLO SI tipo_rev = 2
        PRODUCTO REVET , 2 de m_ancho/2-194 x xtra-45-100-7
            FIN DESARME
            DESARMAR SOLO SI tipo_rev = 3
        PRODUCTO REV688, 2 de m_ancho/2-194 x xtra-45-100-7
            FIN DESARME
         PANELES
         2*(tra1+1) de m_ancho/2-194 x (m_alto-xtra-tra1*97-113-45-7)/(tra1+1)
      FIN DESARME
   DESARMAR SOLO SI par1!=0 .AND. tra1=0
	PERFIL 11
	 2*par1 x m_alto-xtra-45-113 
	PERFIL 23
	 2*par1 x m_alto-xtra-45-113
	PERFIL 8 
	 2*4*(par1+1) x m_ancho/2-209-90*par1
	 2*4*(par1+1) x m_alto-xtra-45-113-90*par1
        
      DESARMAR SOLO SI tipo_rev=1
      VIDRIOS
     	 2 de m_ancho/2-194 x xtra-45-100-7
      FIN DESARME 
         DESARMAR SOLO SI tipo_rev = 2
          PRODUCTO REVET , 2 de m_ancho/2-194 x xtra-45-100-7
         FIN DESARME
         DESARMAR SOLO SI tipo_rev = 3
          PRODUCTO REV688, 2 de m_ancho/2-194 x xtra-45-100-7
         FIN DESARME
        PANELES    
  	 2*(par1+1) de (m_ancho/2-194-97*par1)/(par1+1) x m_alto-xtra-113-45-7-97*tra1	
   FIN DESARME
      
   DESARMAR SOLO SI par1!=0 .AND. tra1!=0
	PERFIL 11
	 2*tra1 x m_ancho/2-184
	 2*par1*(tra1+1) x (m_alto-xtra-45-113-90*tra1)/(tra1+1)
	PERFIL 23
         2*tra1 x m_ancho/2-184
	 2*par1*(tra1+1) x (m_alto-xtra-45-113-90*tra1)/(tra1+1)
	PERFIL 8 
	 2*4*(par1+1)*(tra1+1) x (m_ancho/2-209-90*par1)/(par1+1)
	 2*4*(par1+1)*(tra1+1) x (m_alto-xtra-45-113-90*tra1)/(tra1+1)
        
      DESARMAR SOLO SI tipo_rev=1
       VIDRIOS
     	 2 de m_ancho/2-194 x xtra-45-100-7
      FIN DESARME
      DESARMAR SOLO SI tipo_rev = 2
          PRODUCTO REVET , 2 de m_ancho/2-194 x xtra-45-100-7
      FIN DESARME
      DESARMAR SOLO SI tipo_rev = 3
          PRODUCTO REV688, 2 de m_ancho/2-194 x xtra-45-100-7
      FIN DESARME
        PANELES    
  	   2*(par1+1)*(tra1+1) de (m_ancho/2-194-97*par1)/(par1+1) x (m_alto-xtra-113-45-7-97*tra1)/(tra1+1)	
   FIN DESARME

		  FIN DESARME

      /* MECANISMO PUERTA DE DOS HOJAS */
      PARTE A
         1 x 2
      PARTE D
         1 x 16
      PARTE C6
         1 x 6
      PARTE 1101
         1 x 1
      PARTE PASADO  
         1 x 2
      DESARMAR SOLO SI manijon>1
        SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
            1 x 4
      FIN DESARME
        PARTE MANIJA
         1 x 1

      DESARMAR SOLO SI cierra_p>0
         PARTE CIEPTA        
            1 x 2
      FIN DESARME

      DESARMAR SOLO SI caja_p>0
        PARTE CAJAP
           1 x 2
      FIN DESARME
      PARTE H
         1 x m_ancho/1000
         5 x m_alto/1000

      PARTE AA
         2 x m_alto/1000

      PARTE T
         DESARMAR SOLO SI tra1!=0
         /* LLEVA TRAVESANIO */
            8 x (m_ancho/2-170)/1000
            4 x (m_alto-270)/1000
         FIN DESARME
         DESARMAR SOLO SI tra1=0
         /* NO LLEVA TRAVESANIO */
            4 x (m_ancho/2-170)/1000
            4 x (m_alto-180)/1000
         FIN DESARME
		PARTE UVW
         DESARMAR SOLO SI tra1!=0
         /* LLEVA TRAVESANIO */
            8 x (m_ancho/2-170)/1000
            4 x (m_alto-270)/1000
         FIN DESARME
         DESARMAR SOLO SI tra1=0
         /* NO LLEVA TRAVESANIO */
            4 x (m_ancho/2-170)/1000
            4 x (m_alto-180)/1000
         FIN DESARME

      PARTE C5
         DESARMAR SOLO SI tra1!=0
            1 x 24
         FIN DESARME
         DESARMAR SOLO SI tra1=0
            1 x 16
         FIN DESARME

      
  FIN DESARME
 /* Puertas de Dos Hojas */

/*=======================================================*/

   /* Porton de tres hojas */

DESARMAR SOLO SI n_hojas=3
  
	   /* Batientes y Tapajuntas */
     	 PERFIL 39
        	 6 x m_alto-33
      	 PERFIL 41
         	 3 x m_alto-33
         PERFIL 42
         	 3 x m_alto-33
 DESARMAR SOLO SI xtra=0
  /* NO Lleva travesanio intermedio */

         PERFIL 11
                 6 x m_ancho/3-198
 /* NO lleva travesanio */
         
      DESARMAR SOLO SI tra1=0 .AND. par1=0
         PERFIL 8
            12 x m_ancho/3-223
            12 x m_alto-213
          VIDRIOS
             DESARMAR SOLO SI tipo_rev=1
               3 de m_ancho/3-205 x m_alto-220
             FIN DESARME
             DESARMAR SOLO SI tipo_rev=2
               PRODUCTO REVET , 3 de m_ancho/3-205 x m_alto-220
             FIN DESARME
             DESARMAR SOLO SI tipo_rev=3
               PRODUCTO REV688, 3 de m_ancho/3-205 x m_alto-220
             FIN DESARME

      FIN DESARME
      DESARMAR SOLO SI tra1>0 .AND. par1=0
          PERFIL 11
          3*tra1 x m_ancho/3-198
          PERFIL 23
          3*tra1 x m_ancho/3-198
          PERFIL 8
          12*(tra1+1) x m_ancho/3-223
          12*(tra1+1) x (m_alto-213-90*tra1)/(tra1+1)

          VIDRIOS
          DESARMAR SOLO SI tipo_rev=1
          3*(tra1+1) de m_ancho/3-205 x m_alto-213-7-97*tra1
          FIN DESARME
          DESARMAR SOLO SI tipo_rev=2
          PRODUCTO REVET , 3*(tra1+1) de m_ancho/3-205 x m_alto-213-7-97*tra1
          FIN DESARME
          DESARMAR SOLO SI tipo_rev=3
          PRODUCTO REV688, 3*(tra1+1) de m_ancho/3-205 x m_alto-213-7-97*tra1
          FIN DESARME

      FIN DESARME

      DESARMAR SOLO SI par1>0 .AND. tra1=0
          PERFIL 11
          3*par1 x m_alto-213
          PERFIL 23
          3*par1 x m_alto-213
          PERFIL 8
          3*4*(par1+1) x (m_ancho/3-223-115*par1)/(par1+1)
          3*4*(par1+1) x m_alto-213
          VIDRIOS
          DESARMAR SOLO SI tipo_rev=1
          3*(par1+1) de (m_ancho/3-205-97*par1)/(par1+1) x m_alto-213-7
          FIN DESARME
          DESARMAR SOLO SI tipo_rev=2
          PRODUCTO REVET , 3*(par1+1) de (m_ancho/3-205-97*par1)/(par1+1) x m_alto-213-7
          FIN DESARME
          DESARMAR SOLO SI tipo_rev=3
          PRODUCTO REV688, 3*(par1+1) de (m_ancho/3-205-97*par1)/(par1+1) x m_alto-213-7
          FIN DESARME

      FIN DESARME
      DESARMAR SOLO SI tra1!=0 .AND. par1!=0
          PERFIL 11
          3*tra1 x m_ancho/3-198
          3*par1*(tra1+1) x (m_alto-213-90*tra1)/(tra1+1)
          PERFIL 23
          3*tra1 x m_ancho/3-198
          3*par1*(tra1+1) x (m_alto-213-90*tra1)/(tra1+1)
          PERFIL 8
          12*(par1+1)*(tra1+1) x (m_ancho/3-223-115*par1)/(par1+1)
          12*(par1+1)*(tra1+1) x (m_alto-213-90*tra1)/(tra1+1)
          VIDRIOS
          DESARMAR SOLO SI tipo_rev=1
          3*(par1+1)*(tra1+1) de (m_ancho/3-205-97*par1)/(par1+1) x (m_alto-213-7-97*tra1)/(tra1+1)
          FIN DESARME
          DESARMAR SOLO SI tipo_rev=2
          PRODUCTO REVET , 3*(par1+1)*(tra1+1) de (m_ancho/3-205-97*par1)/(par1+1) x (m_alto-213-7-97*tra1)/(tra1+1)
          FIN DESARME
          DESARMAR SOLO SI tipo_rev=3
          PRODUCTO REV688, 3*(par1+1)*(tra1+1) de (m_ancho/3-205-97*par1)/(par1+1) x (m_alto-213-7-97*tra1)/(tra1+1)
          FIN DESARME

      FIN DESARME
   FIN DESARME
     /* Lleva travesanio intermedio */
   DESARMAR SOLO SI xtra>0
         PERFIL 11
            9 x m_ancho/3-198
         PERFIL 23
            3 x m_ancho/3-198
         PERFIL 8
           24 x m_ancho/3-223
           12 x xtra-100-45
           12 x m_alto-xtra-45-113
      DESARMAR SOLO SI tra1=0 .AND. par1=0
         PERFIL 8  
           24 x m_ancho/3-223
           24 x m_alto-xtra-113-45
	   
         DESARMAR SOLO SI tipo_rev=1
         VIDRIOS
     	   3 de m_ancho/3-205 x xtra-45-100-7
         FIN DESARME
            DESARMAR SOLO SI tipo_rev = 2
             PRODUCTO REVET , 3 de m_ancho/3-205 x xtra-45-100-7
            FIN DESARME
            DESARMAR SOLO SI tipo_rev = 3
             PRODUCTO REV688, 3 de m_ancho/3-205 x xtra-45-100-7
            FIN DESARME
           PANELES
            3 de m_ancho/3-205 x m_alto-xtra-113-45-7
      FIN DESARME
 
         /* LLEVA TRAVESANIO */
      DESARMAR SOLO SI tra1!=0 .AND. par1=0
          PERFIL 11
           3*tra1 x m_ancho/3-198
          PERFIL 23
           3*tra1 x m_ancho/3-198
          PERFIL 8
           3*4*(tra1+1) x m_ancho/3-223
           3*4*(tra1+1) x (m_alto-xtra-45-113-90*tra1)/(tra1+1)
       
         DESARMAR SOLO SI tipo_rev=1
          VIDRIOS
     	   3 de m_ancho/3-205 x xtra-45-100-7
         FIN DESARME
            DESARMAR SOLO SI tipo_rev = 2
             PRODUCTO REVET , 3 de m_ancho/3-205 x xtra-45-100-7
            FIN DESARME
            DESARMAR SOLO SI tipo_rev = 3
             PRODUCTO REV688, 3 de m_ancho/3-205 x xtra-45-100-7
            FIN DESARME
             PANELES
              3*(tra1+1) de m_ancho/3-205 x (m_alto-xtra-tra1*97-113-45-7)/(tra1+1)
      FIN DESARME
      DESARMAR SOLO SI par1!=0 .AND. tra1=0
       PERFIL 11
        3*par1 x m_alto-xtra-45-113
       PERFIL 23
        3*par1 x m_alto-xtra-45-113
       PERFIL 8
        3*4*(par1+1) x m_ancho/3-223-90*par1
        3*4*(par1+1) x m_alto-xtra-45-113-90*par1
        
         DESARMAR SOLO SI tipo_rev=1
       VIDRIOS
        3 de m_ancho/3-205 x xtra-45-100-7
         FIN DESARME
            DESARMAR SOLO SI tipo_rev = 2
          PRODUCTO REVET , 3 de m_ancho/3-205 x xtra-45-100-7
            FIN DESARME
            DESARMAR SOLO SI tipo_rev = 3
          PRODUCTO REV688, 3 de m_ancho/3-205 x xtra-45-100-7
            FIN DESARME
        PANELES    
          3*(par1+1) de (m_ancho/3-198-97*par1)/(par1+1) x m_alto-xtra-113-45-7-97*tra1
      FIN DESARME
      
      DESARMAR SOLO SI par1!=0 .AND. tra1!=0
	PERFIL 11
	 3*tra1 x m_ancho/3-198
	 3*par1*(tra1+1) x (m_alto-xtra-45-113-90*tra1)/(tra1+1)
	PERFIL 23
     3*tra1 x m_ancho/3-198
	 3*par1*(tra1+1) x (m_alto-xtra-45-113-90*tra1)/(tra1+1)
	PERFIL 8 
	 3*4*(par1+1)*(tra1+1) x (m_ancho/3-223-90*par1)/(par1+1)
	 3*4*(par1+1)*(tra1+1) x (m_alto-xtra-45-113-90*tra1)/(tra1+1)
        
         DESARMAR SOLO SI tipo_rev=1
       VIDRIOS
        3 de m_ancho/3-205 x xtra-45-100-7
         FIN DESARME
            DESARMAR SOLO SI tipo_rev = 2
          PRODUCTO REVET , 3 de m_ancho/3-205 x xtra-45-100-7
            FIN DESARME
            DESARMAR SOLO SI tipo_rev = 3
          PRODUCTO REV688, 3 de m_ancho/3-205 x xtra-45-100-7
            FIN DESARME
        PANELES    
  	   3*(par1+1)*(tra1+1) de (m_ancho/3-205-97*par1)/(par1+1) x (m_alto-xtra-113-45-7-97*tra1)/(tra1+1)	
      FIN DESARME
   FIN DESARME
       
      /* MECANISMO PORTON DE TRES HOJAS */
      PARTE A
         1 x 2
      PARTE D
         1 x 16
      PARTE C6
         1 x 9
      PARTE 1101
         1 x 1
      PARTE PASADO  
         1 x 4
      DESARMAR SOLO SI manijon>1
      SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
         1 x 4
      FIN DESARME
      PARTE MANIJA
         1 x 1
      DESARMAR SOLO SI cierra_p>0
      PARTE CIERRAPUERA
         1 x 1
      FIN DESARME

      DESARMAR SOLO SI caja_p>0
      PARTE CAJAP
         1 x 1
      FIN DESARME
      PARTE H
         1 x m_ancho/1000
         5 x m_alto/1000
      PARTE AA
         2 x m_alto/1000
      PARTE T
      DESARMAR SOLO SI tra1!=0
         /* LLEVA TRAVESANIO */
        8 x (m_ancho/2-170)/1000
        4 x (m_alto-270)/1000
      FIN DESARME
      DESARMAR SOLO SI tra1=0
         /* NO LLEVA TRAVESANIO */
        4 x (m_ancho/2-170)/1000
        4 x (m_alto-180)/1000
      FIN DESARME

      PARTE UVW
      DESARMAR SOLO SI tra1!=0
         /* LLEVA TRAVESANIO */
        8 x (m_ancho/2-170)/1000
        4 x (m_alto-270)/1000
      FIN DESARME
      DESARMAR SOLO SI tra1=0
         /* NO LLEVA TRAVESANIO */
        4 x (m_ancho/2-170)/1000
        4 x (m_alto-180)/1000
      FIN DESARME

      PARTE C5
     DESARMAR SOLO SI tra1!=0
        1 x 24
     FIN DESARME
     DESARMAR SOLO SI tra1=0
        1 x 16
     FIN DESARME


     FIN DESARME /* Porton de tres Hojas */

 

PRODUCTO MOPUER







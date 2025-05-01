VARIABLE aux_x
VARIABLE aux_y
VARIABLE ctablas



/* PUERTA DE REBATIR CON TABLERO TUBULAR

/* xtra = posicion de la traviesa principal
/* tra1 = cantidad de traviesas centradas respecto al xtra
/* par1 = cantidad de parantes centrados respecto al xtra

/* El revestimiento automatico solo funciona cuando hay un xtra!!!!

/* e_desc = espesor del travesa¤o o parante
/* d_vid = espesor del travesa¤o o parante con descuento del vidrio incluido*/
      	CALCULOS
	e_desc:=if(tipo_patr=1,63,20)
	d_vid:=if(tipo_patr=1,70,27)
	tra2:=0
	FIN CALCULOS

                                                                                                                                                      /* Marco */
/*MARCO
 PERFIL 211
    CORTES A 45:
       1 x m_ancho
    CORTES A 90 Y 45:        
       2 x m_alto
DESARMAR SOLO SI n_hojas=1
	CORTES A RECTO:
	/* Parantes - Hoja */
	PERFIL 213
	 2 x m_alto-33
	/* Zocalo y Cabezal - Hoja */
	PERFIL 212
         2 x m_ancho-211
   CORTES A RECTO:
/* Tiene travesaño principal*/
        DESARMAR SOLO SI xtra!=0
    /* Travesaño principal - Hoja */
        PERFIL 208
          1 x m_ancho-211
	/* Contravidrios */
        SEGUN contravid PERFIL 205,206
         2 x m_ancho-236
         2 x xtra-33-82
         PARTE T
         2 x (m_ancho-236)/1000
         2 x (xtra-33-82)/1000
		PARTE UVW
         2 x (m_ancho-236)/1000
         2 x (xtra-33-82)/1000
                DESARMAR SOLO SI tipo_rev=1
                VIDRIOS
            1 de m_ancho-218 x xtra-33-82-7
                FIN DESARME
                DESARMAR SOLO SI tipo_rev=2
                                PRODUCTO REVET , 1 de m_ancho-218 x xtra-33-82-7
                FIN DESARME
                DESARMAR SOLO SI tipo_rev=3
                                PRODUCTO REV688, 1 de m_ancho-218 x xtra-33-82-7
                FIN DESARME
                DESARMAR SOLO SI tipo_rev=4
                                PRODUCTO REVE1 , 1 de m_ancho-218 x xtra-33-82-7
                FIN DESARME

	/* No tiene travesanios centrados */
                DESARMAR SOLO SI tra1=0
                        DESARMAR SOLO SI par1=0
			/* No tiene parantes centrados */
	 		/* Contravidrios */
                SEGUN contravid PERFIL 205,206
                    2 x m_ancho-236
                    2 x m_alto-xtra-33-105
				PARTE T
                    2 x (m_ancho-236)/1000
                    2 x (m_alto-xtra-33-105)/1000
				PARTE UVW
                    2 x (m_ancho-236)/1000
                    2 x (m_alto-xtra-33-105)/1000

				PANELES
                    1 de m_ancho-218 x m_alto-xtra-33-105-7

                        FIN DESARME
                        DESARMAR SOLO SI par1>0
			/* tiene parantes centrados */
                SEGUN tipo_patr PERFIL 208,209
                    par1 x m_alto-xtra-33-105
                SEGUN contravid PERFIL 205,206
                     2*(par1+1) x (m_ancho-236-(e_desc+25)*par1)/(par1+1)
                     2*(par1+1) x m_alto-xtra-33-105
                PARTE T
                     2*(par1+1) x (m_ancho-236-(e_desc+25)*par1)/(par1+1)/1000
                     2*(par1+1) x (m_alto-xtra-33-105)/1000
                PARTE UVW
                     2*(par1+1) x (m_ancho-236-(e_desc+25)*par1)/(par1+1)/1000
                     2*(par1+1) x (m_alto-xtra-33-105)/1000

				PANELES
                     par1+1 de (m_ancho-218-d_vid*par1)/(par1+1) x m_alto-xtra-33-105-7

                        FIN DESARME
                FIN DESARME
	/* Tiene travesanios centrados */
                DESARMAR SOLO SI tra1>0
            SEGUN tipo_patr PERFIL 208,209
                tra1 x m_ancho-211
                        DESARMAR SOLO SI par1=0
			/* No tiene parantes centrados */
	 		/* Contravidrios */
                SEGUN contravid PERFIL 205,206
                     2*(tra1+1) x m_ancho-236
                     2*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)
                PARTE T
                     2*(tra1+1) x (m_ancho-236)/1000
                     2*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)/1000
                PARTE UVW
                     2*(tra1+1) x (m_ancho-236)/1000
                     2*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)/1000

				PANELES
                     tra1+1 de m_ancho-218 x (m_alto-xtra-33-105-d_vid*tra1)/(tra1+1)
                        FIN DESARME
                        DESARMAR SOLO SI par1>0
			/* tiene parantes centrados */
                SEGUN tipo_patr PERFIL 208,209
                    par1*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)
                SEGUN contravid PERFIL 205,206
                     2*(par1+1)*(tra1+1) x (m_ancho-236-(e_desc-25)*par1)/(par1+1)
                     2*(par1+1)*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)
                PARTE T
                     2*(par1+1)*(tra1+1) x (m_ancho-236-(e_desc-25)*par1)/(par1+1)/1000
                     2*(par1+1)*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)/1000
                PARTE UVW
                     2*(par1+1)*(tra1+1) x (m_ancho-236-(e_desc-25)*par1)/(par1+1)/1000
                     2*(par1+1)*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)/1000

				PANELES
(tra1+1)*(par1+1) de (m_ancho-218-d_vid*par1)/(par1+1) x (m_alto-xtra-33-105-d_vid*tra1)/(tra1+1)

                        FIN DESARME
                FIN DESARME
        FIN DESARME
       

/* NO Tiene travesaño principal*/
        DESARMAR SOLO SI xtra=0

	/* No tiene travesanios centrados */
                 DESARMAR SOLO SI tra1=0
                        DESARMAR SOLO SI par1=0
			/* No tiene parantes centrados */
	 		/* Contravidrios */
                        SEGUN contravid PERFIL 205,206
                                2 x m_ancho-236
                                2 x m_alto-82-105
                        PARTE T
                                2 x (m_ancho-236)/1000
                                2 x (m_alto-82-105)/1000
                        PARTE UVW
                                2 x (m_ancho-236)/1000
                                2 x (m_alto-82-105)/1000

                                DESARMAR SOLO SI tipo_rev=1                                            
                                        VIDRIOS
                                        1 de m_ancho-183 x m_alto-159
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 2
                                        PRODUCTO REVET , 1 de m_ancho-183 x m_alto-159
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                                        PRODUCTO REV688, 1 de m_ancho-183 x m_alto-159
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 4
                                        PRODUCTO REVE1 , 1 de m_ancho-183 x m_alto-159
                                FIN DESARME
                        FIN DESARME

                        DESARMAR SOLO SI par1>0

        		/* tiene parantes centrados */

                SEGUN tipo_patr PERFIL 208,209
                    par1 x m_alto-82-105

                SEGUN contravid PERFIL 205,206
                     2*(par1+1) x (m_ancho-223-e_desc*par1)/(par1+1)
                     2*(par1+1) x m_alto-82-105
                PARTE T
                     2*(par1+1) x (m_ancho-223-e_desc*par1)/(par1+1)/1000
                     2*(par1+1) x (m_alto-82-105)/1000
                PARTE UVW
                     2*(par1+1) x (m_ancho-223-e_desc*par1)/(par1+1)/1000
                     2*(par1+1) x (m_alto-82-105)/1000

                   VIDRIOS
                                DESARMAR SOLO SI tipo_rev=1                                            
                                par1+1 de (m_ancho-218)/(par1+1) x m_alto-82-105
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 2
                                       PRODUCTO REVET ,par1+1 de (m_ancho-218)/(par1+1) x m_alto-82-105
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                                       PRODUCTO REV688, par1+1 de (m_ancho-218)/(par1+1) x m_alto-82-105
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 4
                                        PRODUCTO REVE1 , par1+1 de (m_ancho-218)/(par1+1) x m_alto-82-105
                                FIN DESARME
                        FIN DESARME
                FIN DESARME
           

	/* Tiene travesanios centrados */
                DESARMAR SOLO SI tra1>0
            SEGUN tipo_patr PERFIL 208,209
               tra1 x m_ancho-211

                        DESARMAR SOLO SI par1=0
			/* No tiene parantes centrados */
	 		/* Contravidrios */
                SEGUN contravid PERFIL 205,206
                     2*(tra1+1) x m_ancho-236
                     2*(tra1+1) x (m_alto-88-105-e_desc*tra1)/(tra1+1)
                PARTE T
                     2*(tra1+1) x (m_ancho-236)/1000
                     2*(tra1+1) x (m_alto-88-105-e_desc*tra1)/(tra1+1)/1000
                PARTE UVW
                     2*(tra1+1) x (m_ancho-236)/1000
                     2*(tra1+1) x (m_alto-88-105-e_desc*tra1)/(tra1+1)/1000

                 /*     FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 1                                            
				VIDRIOS
                    tra1+1 de m_ancho-218 x (m_alto-82-105-d_vid*tra1)/(tra1+1)
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 2
                                        PRODUCTO REVET , tra1+1 de m_ancho-218 x (m_alto-82-105-d_vid*tra1)/(tra1+1)
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                                        PRODUCTO REV688, tra1+1 de m_ancho-218 x (m_alto-82-105-d_vid*tra1)/(tra1+1)
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 4
                                        PRODUCTO REVE1 , tra1+1 de m_ancho-218 x (m_alto-82-105-d_vid*tra1)/(tra1+1)
                                FIN DESARME
                        FIN DESARME
                        DESARMAR SOLO SI par1>0
			/* tiene parantes centrados */
                SEGUN tipo_patr PERFIL 208,209
                    par1*(tra1+1) x (m_alto-82-105-e_desc*tra1)/(tra1+1)

                SEGUN contravid PERFIL 205,206
                     2*(par1+1)*(tra1+1) x (m_ancho-236-e_desc*par1)/(par1+1)
                     2*(par1+1)*(tra1+1) x (m_alto-82-105-e_desc*tra1)/(tra1+1)

                PARTE T
                     2*(par1+1)*(tra1+1) x (m_ancho-236-e_desc*par1)/(par1+1)/1000
                     2*(par1+1)*(tra1+1) x (m_alto-82-105-e_desc*tra1)/(tra1+1)/1000

                PARTE UVW
                     2*(par1+1)*(tra1+1) x (m_ancho-236-e_desc*par1)/(par1+1)/1000
                     2*(par1+1)*(tra1+1) x (m_alto-82-105-e_desc*tra1)/(tra1+1)/1000
                CALCULOS
                     vid_h:=(m_ancho-218-d_vid*par1)/(par1+1)
                     vid_v:=(m_alto-82-105-d_vid*tra1)/(tra1+1)
                FIN CALCULOS
                   VIDRIOS
                                DESARMAR SOLO SI tipo_rev=1    
                        (par1+1)*(tra1+1) de vid_h x vid_v
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev=2    
                       PRODUCTO REVET , (par1+1)*(tra1+1) de vid_h x vid_v
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev=3    
                       PRODUCTO REV688, (par1+1)*(tra1+1) de vid_h x vid_v
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev=4    
                       PRODUCTO REVE1 , (par1+1)*(tra1+1) de vid_h x vid_v
                                FIN DESARME
                        FIN DESARME
                FIN DESARME
        FIN DESARME
/* Accesorios */
	PARTE A
     1 x 2
   PARTE D
	 1 x 16
   PARTE C84
     1 x 3
   PARTE AEL
     1 x m_ancho/1000
     2 x m_alto/1000
/*Cerradura*/
   PARTE MANIJA
     1 x 1
/* Tornillos de sujecion */
   PARTE C5
     1 x 8+4*tra1+4*par1+4*tra1*par1
        DESARMAR SOLO SI xtra>0
     1 x 4
        FIN DESARME
        DESARMAR SOLO SI tipo_patr=1
               PARTE AHC
                1 x INT(8+4*tra1+4*par1+4*tra1*par1)
                DESARMAR SOLO SI xtra>0
                1 x 4
                FIN DESARME
                DESARMAR SOLO SI tipo_patr=2
                        PARTE AHB
                        1 x 8+4*tra1+4*par1+4*tra1*par1
                        DESARMAR SOLO SI xtra>0
                        1 x 4
                        FIN DESARME
                FIN DESARME
        FIN DESARME
   PARTE T
     2 x m_ancho/1000 + m_alto/1000
   PARTE UVW
     2 x m_ancho/1000 + m_alto/1000
   PARTE AHC
     4 x INT(m_alto/1000)

   SEGUN tipo_cerr PARTE 3001,2284,5006
         1 x 1

        DESARMAR SOLO SI manijon>1
        SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
         1 x 2
        FIN DESARME
        DESARMAR SOLO SI cierra_p!=0
        PARTE CIEPTA
        1 x 1
        FIN DESARME
        DESARMAR SOLO SI caja_p!=0
        PARTE CAJAP
        1 x 1
        FIN DESARME
FIN DESARME



      /*-----------------------------------------------------------*/

/* Puerta de 2 hojas*/

DESARMAR SOLO SI n_hojas=2
	CORTES A RECTO:
	/* Parantes - Hoja */
	PERFIL 213
     4 x m_alto-33
	/* Zocalo y Cabezal - Hoja */
	PERFIL 212
         4 x m_ancho/2-185
    PERFIL 214
         2 x m_alto-33
   CORTES A RECTO:
/* Tiene travesaño principal*/
        DESARMAR SOLO SI xtra!=0
    /* Travesaño principal - Hoja */
        PERFIL 208
          2 x m_ancho/2-185
	/* Contravidrios */
        SEGUN contravid PERFIL 205,206
         4 x m_ancho/2-210
         4 x xtra-33-82
         PARTE T
         4 x (m_ancho/2-210)/1000
         4 x (xtra-33-82)/1000
		PARTE UVW
         4 x (m_ancho/2-210)/1000
         4 x (xtra-33-82)/1000
        
                DESARMAR SOLO SI tipo_rev=1
                VIDRIOS
            2 de m_ancho/2-192 x xtra-33-82-7
                FIN DESARME
                DESARMAR SOLO SI tipo_rev=2 .OR. tipo_rev=3 .OR. tipo_rev=4
                        DESARMAR SOLO SI tipo_rev=2
               PRODUCTO REVET , 2 de m_ancho/2-192 x xtra-33-82-7
                        FIN DESARME
                        DESARMAR SOLO SI tipo_rev=3
               PRODUCTO REV688, 2 de m_ancho/2-192 x xtra-33-82-7
                        FIN DESARME
                        DESARMAR SOLO SI tipo_rev=4
               PRODUCTO REVE1 , 2 de m_ancho/2-192 x xtra-33-82-7
                        FIN DESARME
                FIN DESARME
        
	/* No tiene travesanios centrados */
                DESARMAR SOLO SI tra1=0
                        DESARMAR SOLO SI par1=0
			/* No tiene parantes centrados */
	 		/* Contravidrios */
                SEGUN contravid PERFIL 205,206
                    4 x m_ancho/2-210
                    4 x m_alto-xtra-33-105
				PARTE T
                    4 x (m_ancho/2-210)/1000
                    4 x (m_alto-xtra-33-105)/1000
				PARTE UVW
                    4 x (m_ancho/2-210)/1000
                    4 x (m_alto-xtra-33-105)/1000
                        
				PANELES
                    2 de m_ancho/2-192 x m_alto-xtra-33-105-7
                        
                        FIN DESARME
                        DESARMAR SOLO SI par1>0
			/* tiene parantes centrados */
                SEGUN tipo_patr PERFIL 208,209
                   2*par1 x m_alto-xtra-33-105
                SEGUN contravid PERFIL 205,206
                    2*2*(par1+1) x (m_ancho/2-210-(e_desc+25)*par1)/(par1+1)
                    2*2*(par1+1) x m_alto-xtra-33-105
                PARTE T
                     2*2*(par1+1) x (m_ancho/2-210-(e_desc+25)*par1)/(par1+1)/1000
                     2*2*(par1+1) x (m_alto-xtra-33-105)/1000
                PARTE UVW
                     2*2*(par1+1) x (m_ancho/2-210-(e_desc+25)*par1)/(par1+1)/1000
                     2*2*(par1+1) x (m_alto-xtra-33-105)/1000
				PANELES
                     2*(par1+1) de (m_ancho/2-192-d_vid*par1)/(par1+1) x m_alto-xtra-33-105-7

                        FIN DESARME
                FIN DESARME
	/* Tiene travesanios centrados */
                DESARMAR SOLO SI tra1>0
            SEGUN tipo_patr PERFIL 208,209
                2*tra1 x m_ancho/2-185
                        DESARMAR SOLO SI par1=0
			/* No tiene parantes centrados */
	 		/* Contravidrios */
                SEGUN contravid PERFIL 205,206
                     2*2*(tra1+1) x m_ancho/2-210
                     2*2*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)
                PARTE T
                     2*2*(tra1+1) x (m_ancho/2-210)/1000
                     2*2*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)/1000
                PARTE UVW
                     2*2*(tra1+1) x (m_ancho/2-210)/1000
                     2*2*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)/1000

				PANELES
                     2*(tra1+1) de m_ancho/2-192 x (m_alto-xtra-33-105-d_vid*tra1)/(tra1+1)
                        FIN DESARME
                        DESARMAR SOLO SI par1>0
			/* tiene parantes centrados */
                SEGUN tipo_patr PERFIL 208,209
                    2*par1*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)
                SEGUN contravid PERFIL 205,206
                     2*2*(par1+1)*(tra1+1) x (m_ancho/2-210-(e_desc-25)*par1)/(par1+1)
                     2*2*(par1+1)*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)
                PARTE T
                     2*2*(par1+1)*(tra1+1) x (m_ancho/2-210-(e_desc-25)*par1)/(par1+1)/1000
                     2*2*(par1+1)*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)/1000
                PARTE UVW
                     2*2*(par1+1)*(tra1+1) x (m_ancho/2-210-(e_desc-25)*par1)/(par1+1)/1000
                     2*2*(par1+1)*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)/1000

				PANELES
2*(tra1+1)*(par1+1) de (m_ancho/2-192-d_vid*par1)/(par1+1) x (m_alto-xtra-33-105-d_vid*tra1)/(tra1+1)

                        FIN DESARME
                FIN DESARME
        FIN DESARME

/* NO Tiene travesaño principal*/
        DESARMAR SOLO SI xtra=0

	/* No tiene travesanios centrados */
                DESARMAR SOLO SI tra1=0
                        DESARMAR SOLO SI par1=0
			/* No tiene parantes centrados */
	 		/* Contravidrios */
                SEGUN contravid PERFIL 205,206
                     4 x m_ancho/2-210
                     4 x m_alto-82-105
                PARTE T
                     4 x (m_ancho/2-210)/1000
                     4 x (m_alto-82-105)/1000
                PARTE UVW
                     4 x (m_ancho/2-210)/1000
                     4 x (m_alto-82-105)/1000

                                DESARMAR SOLO SI tipo_rev=1
                             VIDRIOS
                                             2 de m_ancho/2-192 x m_alto-159
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 2
                            PRODUCTO REVET , 2 de m_ancho/2-192 x m_alto-159
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                            PRODUCTO REV688, 2 de m_ancho/2-192 x m_alto-159
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 4
                            PRODUCTO REVE1 , 2 de m_ancho/2-192 x m_alto-159
                                FIN DESARME

                        FIN DESARME

                        DESARMAR SOLO SI par1>0
			/* tiene parantes centrados */
                SEGUN tipo_patr PERFIL 208,209
                     2*par1 x m_alto-82-105
                SEGUN contravid PERFIL 205,206
                     2*2*(par1+1) x (m_ancho/2-210-e_desc*par1)/(par1+1)
                     2*2*(par1+1) x m_alto-82-105
                PARTE T
                     2*2*(par1+1) x (m_ancho/2-210-e_desc*par1)/(par1+1)/1000
                     2*2*(par1+1) x (m_alto-82-105)/1000
                PARTE UVW
                     2*2*(par1+1) x (m_ancho/2-210-e_desc*par1)/(par1+1)/1000
                     2*2*(par1+1) x (m_alto-82-105)/1000

                                DESARMAR SOLO SI tipo_rev=1
                                VIDRIOS
                                             2*(par1+1) de (m_ancho/2-192)/(par1+1) x m_alto-82-105
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev=2
                            PRODUCTO REVET , 2*(par1+1) de (m_ancho/2-192)/(par1+1) x m_alto-82-105 
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev=3
                            PRODUCTO REV688, 2*(par1+1) de (m_ancho/2-192)/(par1+1) x m_alto-82-105
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev=4
                            PRODUCTO REVE1 , 2*(par1+1) de (m_ancho/2-192)/(par1+1) x m_alto-82-105
                                FIN DESARME
                        FIN DESARME
                FIN DESARME

	/* Tiene travesanios centrados */
                DESARMAR SOLO SI tra1>0
            SEGUN tipo_patr PERFIL 208,209
               2*tra1 x m_ancho/2-185
                        DESARMAR SOLO SI par1=0
			/* No tiene parantes centrados */
	 		/* Contravidrios */
                SEGUN contravid PERFIL 205,206
                     2*2*(tra1+1) x m_ancho/2-210
                     2*2*(tra1+1) x (m_alto-88-105-e_desc*tra1)/(tra1+1)
                PARTE T
                     2*2*(tra1+1) x (m_ancho/2-210)/1000
                     2*2*(tra1+1) x (m_alto-88-105-e_desc*tra1)/(tra1+1)/1000
                PARTE UVW
                     2*2*(tra1+1) x (m_ancho/2-210)/1000
                     2*2*(tra1+1) x (m_alto-88-105-e_desc*tra1)/(tra1+1)/1000

                                VIDRIOS
                                DESARMAR SOLO SI tipo_rev=1
                                    2*(tra1+1) de m_ancho/2-192 x (m_alto-82-105-d_vid*tra1)/(tra1+1)
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 2
                                   PRODUCTO REVET , 2*(tra1+1) de m_ancho/2-192 x (m_alto-82-105-d_vid*tra1)/(tra1+1)
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                                   PRODUCTO REV688, 2*(tra1+1) de m_ancho/2-192 x (m_alto-82-105-d_vid*tra1)/(tra1+1)
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 4
                                   PRODUCTO REVE1 , 2*(tra1+1) de m_ancho/2-192 x (m_alto-82-105-d_vid*tra1)/(tra1+1)
                                FIN DESARME
                        FIN DESARME
                        DESARMAR SOLO SI par1>0
			/* tiene parantes centrados */
                SEGUN tipo_patr PERFIL 208,209
                    2*par1*(tra1+1) x (m_alto-82-105-e_desc*tra1)/(tra1+1)
                SEGUN contravid PERFIL 205,206
                     2*2*(par1+1)*(tra1+1) x (m_ancho/2-210-e_desc*par1)/(par1+1)
                     2*2*(par1+1)*(tra1+1) x (m_alto-82-105-e_desc*tra1)/(tra1+1)
                PARTE T
                     2*2*(par1+1)*(tra1+1) x (m_ancho/2-210-e_desc*par1)/(par1+1)/1000
                     2*2*(par1+1)*(tra1+1) x (m_alto-82-105-e_desc*tra1)/(tra1+1)/1000
                PARTE UVW
                     2*2*(par1+1)*(tra1+1) x (m_ancho/2-210-e_desc*par1)/(par1+1)/1000
                     2*2*(par1+1)*(tra1+1) x (m_alto-82-105-e_desc*tra1)/(tra1+1)/1000

                CALCULOS
                rev_h:=(m_ancho/2-192-d_vid*par1)/(par1+1)
                rev_v:=(m_alto-82-105-d_vid*tra1)/(tra1+1)
                FIN CALCULOS

                              VIDRIOS

                                DESARMAR SOLO SI tipo_rev=1
                             2*(par1+1)*(tra1+1) de rev_h x rev_v
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 2
                            PRODUCTO REVET , 2*(par1+1)*(tra1+1) de rev_h x rev_v
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                            PRODUCTO REV688, 2*(par1+1)*(tra1+1) de rev_h x rev_v
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 4
                            PRODUCTO REVE1 , 2*(par1+1)*(tra1+1) de rev_h x rev_v
                                FIN DESARME
                        FIN DESARME
                FIN DESARME
        FIN DESARME
        DESARMAR SOLO SI n_hojas=2
/* Accesorios */
	PARTE A
     1 x 2
   PARTE D
	 1 x 16
   PARTE C84
     1 x 6
   PARTE AEL
     1 x m_ancho/1000
     4 x m_alto/1000
/*Cerradura*/
   PARTE PASADOR
     1 x 2
   PARTE MANIJA
     1 x 1
/* Tornillos de sujecion */
   PARTE C5
     2 x 8+4*tra1+4*par1+4*tra1*par1
                DESARMAR SOLO SI xtra>0
                        2 x 4
                FIN DESARME
                DESARMAR SOLO SI tipo_patr=1
                        PARTE AHC
                        2 x INT(8+4*tra1+4*par1+4*tra1*par1)
                        DESARMAR SOLO SI xtra>0
                                2 x 4
                        FIN DESARME
                        DESARMAR SOLO SI tipo_patr=2
                                PARTE AHB
                        2 x 8+4*tra1+4*par1+4*tra1*par1
                                DESARMAR SOLO SI xtra>0
                                        2 x 4
                                FIN DESARME
                        FIN DESARME
                FIN DESARME
                        PARTE T
                        4 x m_ancho/1000 + m_alto/1000
                        PARTE UVW
                        4 x m_ancho/1000 + m_alto/1000
                        PARTE AHC
                        6 x INT(m_alto/1000)
                        SEGUN tipo_cerr PARTE 3001,2284,5006
                        1 x 1
                DESARMAR SOLO SI manijon>1
                        SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
                        1 x 2
                FIN DESARME
                DESARMAR SOLO SI cierra_p!=0
                        PARTE CIEPTA
                        1 x 2
                FIN DESARME
                DESARMAR SOLO SI caja_p!=0
        PARTE CAJAP
     1 x 2
                FIN DESARME
        FIN DESARME
FIN DESARME


      /*-----------------------------------------------------------*/

DESARMAR SOLO SI n_hojas=3
	CORTES A RECTO:
	/* Parantes - Hoja */
	PERFIL 213
     6 x m_alto-33
	/* Zocalo y Cabezal - Hoja */
	PERFIL 212
         6 x m_ancho/3-177
    PERFIL 214
         3 x m_alto-33
   CORTES A RECTO:
/* Tiene travesaño principal*/
        DESARMAR SOLO SI xtra!=0
    /* Travesaño principal - Hoja */
        PERFIL 208
          3 x m_ancho/3-177
	/* Contravidrios */
        SEGUN contravid PERFIL 205,206
         6 x m_ancho/3-202
         6 x xtra-33-82
         PARTE T
         6 x (m_ancho/3-202)/1000
         6 x (xtra-33-82)/1000
		PARTE UVW
         6 x (m_ancho/3-202)/1000
         6 x (xtra-33-82)/1000
      
                DESARMAR SOLO SI tipo_rev=1
                VIDRIOS
            3 de m_ancho/3-184 x xtra-33-82-7
                FIN DESARME
                DESARMAR SOLO SI tipo_rev=2 .OR. tipo_rev=3 .OR. tipo_rev=4
                        DESARMAR SOLO SI tipo_rev=2
               PRODUCTO REVET , 3 de m_ancho/3-184 x xtra-33-82-7
                        FIN DESARME
                        DESARMAR SOLO SI tipo_rev=3
               PRODUCTO REV688, 3 de m_ancho/3-184 x xtra-33-82-7
                        FIN DESARME
                        DESARMAR SOLO SI tipo_rev=4
               PRODUCTO REVE1 , 3 de m_ancho/3-184 x xtra-33-82-7
                        FIN DESARME
                FIN DESARME
      
	/* No tiene travesanios centrados */
                DESARMAR SOLO SI tra1=0
                        DESARMAR SOLO SI par1=0
			/* No tiene parantes centrados */
	 		/* Contravidrios */
                SEGUN contravid PERFIL 205,206
                    6 x m_ancho/3-202
                    6 x m_alto-xtra-33-105
				PARTE T
                    6 x (m_ancho/3-202)/1000
                    6 x (m_alto-xtra-33-105)/1000
				PARTE UVW
                    6 x (m_ancho/3-202)/1000
                    6 x (m_alto-xtra-33-105)/1000
      
				PANELES
                    3 de m_ancho/3-184 x m_alto-xtra-33-105-7
      
                        FIN DESARME
                        DESARMAR SOLO SI par1>0
			/* tiene parantes centrados */
                SEGUN tipo_patr PERFIL 208,209
                   3*par1 x m_alto-xtra-33-105
                SEGUN contravid PERFIL 205,206
                    3*2*(par1+1) x (m_ancho/3-202-(e_desc+25)*par1)/(par1+1)
                    3*2*(par1+1) x m_alto-xtra-33-105
                PARTE T
                     3*2*(par1+1) x (m_ancho/3-202-(e_desc+25)*par1)/(par1+1)/1000
                     3*2*(par1+1) x (m_alto-xtra-33-105)/1000
                PARTE UVW
                     3*2*(par1+1) x (m_ancho/3-202-(e_desc+25)*par1)/(par1+1)/1000
                     3*2*(par1+1) x (m_alto-xtra-33-105)/1000
      
				PANELES
                     3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x m_alto-xtra-33-105-7
                        FIN DESARME
                FIN DESARME
	/* Tiene travesanios centrados */
                DESARMAR SOLO SI tra1>0
            SEGUN tipo_patr PERFIL 208,209
                3*tra1 x m_ancho/3-177
                        DESARMAR SOLO SI par1=0
			/* No tiene parantes centrados */
	 		/* Contravidrios */
                SEGUN contravid PERFIL 205,206
                     3*2*(tra1+1) x m_ancho/3-202
                     3*2*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)
                PARTE T
                     3*2*(tra1+1) x (m_ancho/3-202)/1000
                     3*2*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)/1000
                PARTE UVW
                     3*2*(tra1+1) x (m_ancho/3-202)/1000
                     3*2*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)/1000
      				PANELES
                     3*(tra1+1) de m_ancho/3-184 x (m_alto-xtra-33-105-d_vid*tra1)/(tra1+1)
      
                        FIN DESARME
                        DESARMAR SOLO SI par1>0
			/* tiene parantes centrados */
                SEGUN tipo_patr PERFIL 208,209
                    3*par1*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)
                SEGUN contravid PERFIL 205,206
                     3*2*(par1+1)*(tra1+1) x (m_ancho/3-202-(e_desc-25)*par1)/(par1+1)
                     3*2*(par1+1)*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)
                PARTE T
                     3*2*(par1+1)*(tra1+1) x (m_ancho/3-202-(e_desc-25)*par1)/(par1+1)/1000
                     3*2*(par1+1)*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)/1000
                PARTE UVW
                     3*2*(par1+1)*(tra1+1) x (m_ancho/3-202-(e_desc-25)*par1)/(par1+1)/1000
                     3*2*(par1+1)*(tra1+1) x (m_alto-xtra-33-105-e_desc*tra1)/(tra1+1)/1000
      
				PANELES
3*(tra1+1)*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x (m_alto-xtra-33-105-d_vid*tra1)/(tra1+1)
      
                        FIN DESARME
                FIN DESARME
        FIN DESARME

/* NO Tiene travesaño principal*/
        DESARMAR SOLO SI xtra=0

	/* No tiene travesanios centrados */
                DESARMAR SOLO SI tra1=0
                        DESARMAR SOLO SI par1=0
			/* No tiene parantes centrados */
	 		/* Contravidrios */
                SEGUN contravid PERFIL 205,206
                     6 x m_ancho/3-202
                     6 x m_alto-82-105
                PARTE T
                     6 x (m_ancho/3-202)/1000
                     6 x (m_alto-82-105)/1000
                PARTE UVW
                     6 x (m_ancho/3-202)/1000
                     6 x (m_alto-82-105)/1000
            
                                DESARMAR SOLO SI tipo_rev=1
                    VIDRIOS
                    3 de m_ancho/3-184 x m_alto-159
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 2
                            PRODUCTO REVET , 3 de m_ancho/3-184 x m_alto-159
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                            PRODUCTO REV688, 3 de m_ancho/3-184 x m_alto-159
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 4
                            PRODUCTO REVE1 , 3 de m_ancho/3-184 x m_alto-159
                                FIN DESARME
                                        
            
                        FIN DESARME

                        DESARMAR SOLO SI par1>0
			/* tiene parantes centrados */
                SEGUN tipo_patr PERFIL 208,209
                     3*par1 x m_alto-82-105
                SEGUN contravid PERFIL 205,206
                     3*2*(par1+1) x (m_ancho/3-202-e_desc*par1)/(par1+1)
                     3*2*(par1+1) x m_alto-82-105
                PARTE T
                     3*2*(par1+1) x (m_ancho/3-202-e_desc*par1)/(par1+1)/1000
                     3*2*(par1+1) x (m_alto-82-105)/1000
                PARTE UVW
                     3*2*(par1+1) x (m_ancho/3-202-e_desc*par1)/(par1+1)/1000
                     3*2*(par1+1) x (m_alto-82-105)/1000
            
                                DESARMAR SOLO SI tipo_rev=1
                    VIDRIOS
                3*(par1+1) de (m_ancho/3-184)/(par1+1) x m_alto-82-105
                                FIN DESARME
                                        DESARMAR SOLO SI tipo_rev = 2
                            PRODUCTO REVET , 3*(par1+1) de (m_ancho/3-184)/(par1+1) x m_alto-82-105 
                                        FIN DESARME
                                        DESARMAR SOLO SI tipo_rev = 3
                            PRODUCTO REV688, 3*(par1+1) de (m_ancho/3-184)/(par1+1) x m_alto-82-105
                                        FIN DESARME
                                        DESARMAR SOLO SI tipo_rev = 4
                            PRODUCTO REVE1 , 3*(par1+1) de (m_ancho/3-184)/(par1+1) x m_alto-82-105
                                        FIN DESARME
                                        
                                FIN DESARME
                        FIN DESARME

	/* Tiene travesanios centrados */
                        DESARMAR SOLO SI tra1>0
            SEGUN tipo_patr PERFIL 208,209
               3*tra1 x m_ancho/3-177
                                DESARMAR SOLO SI par1=0
			/* No tiene parantes centrados */
	 		/* Contravidrios */
                SEGUN contravid PERFIL 205,206
                     3*2*(tra1+1) x m_ancho/3-202
                     3*2*(tra1+1) x (m_alto-88-105-e_desc*tra1)/(tra1+1)
                PARTE T
                     3*2*(tra1+1) x (m_ancho/3-202)/1000
                     3*2*(tra1+1) x (m_alto-88-105-e_desc*tra1)/(tra1+1)/1000
                PARTE UVW
                     3*2*(tra1+1) x (m_ancho/3-202)/1000
                     3*2*(tra1+1) x (m_alto-88-105-e_desc*tra1)/(tra1+1)/1000
            
                                        DESARMAR SOLO SI tipo_rev=1
                                        VIDRIOS
                     3*(tra1+1) de m_ancho/3-184 x (m_alto-82-105-d_vid*tra1)/(tra1+1)
                                        FIN DESARME
                                                DESARMAR SOLO SI tipo_rev = 2
                            PRODUCTO REVET , 3*(tra1+1) de m_ancho/3-184 x (m_alto-82-105-d_vid*tra1)/(tra1+1)
                                                FIN DESARME
                                                DESARMAR SOLO SI tipo_rev = 3
                            PRODUCTO REV688, 3*(tra1+1) de m_ancho/3-184 x (m_alto-82-105-d_vid*tra1)/(tra1+1)
                                                FIN DESARME
                                                DESARMAR SOLO SI tipo_rev = 4
                            PRODUCTO REVE1 , 3*(tra1+1) de m_ancho/3-184 x (m_alto-82-105-d_vid*tra1)/(tra1+1)
                                                FIN DESARME
                                FIN DESARME
                        FIN DESARME
                        DESARMAR SOLO SI par1>0
			/* tiene parantes centrados */
                SEGUN tipo_patr PERFIL 208,209
                    3*par1*(tra1+1) x (m_alto-82-105-e_desc*tra1)/(tra1+1)
                SEGUN contravid PERFIL 205,206
                     3*2*(par1+1)*(tra1+1) x (m_ancho/3-202-e_desc*par1)/(par1+1)
                     3*2*(par1+1)*(tra1+1) x (m_alto-82-105-e_desc*tra1)/(tra1+1)
                PARTE T
                     3*2*(par1+1)*(tra1+1) x (m_ancho/3-202-e_desc*par1)/(par1+1)/1000
                     3*2*(par1+1)*(tra1+1) x (m_alto-82-105-e_desc*tra1)/(tra1+1)/1000
                PARTE UVW
                     3*2*(par1+1)*(tra1+1) x (m_ancho/3-202-e_desc*par1)/(par1+1)/1000
                     3*2*(par1+1)*(tra1+1) x (m_alto-82-105-e_desc*tra1)/(tra1+1)/1000

                         CALCULOS
                         vid_h:=(m_ancho/3-184-d_vid*par1)/(par1+1)
                         vid_v:=(m_alto-82-105-d_vid*tra1)/(tra1+1)
                         FIN CALCULOS
                                DESARMAR SOLO SI tipo_rev=1
                    VIDRIOS
                                3*(par1+1)*(tra1+1) de vid_h x vid_v
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 2
                            PRODUCTO REVET , 3*(par1+1)*(tra1+1) de vid_h x vid_v
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                            PRODUCTO REV688, 3*(par1+1)*(tra1+1) de vid_h x vid_v
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 4
                            PRODUCTO REVE1 , 3*(par1+1)*(tra1+1) de vid_h x vid_v
                                FIN DESARME
                                                    
                        FIN DESARME
                FIN DESARME
        FIN DESARME
        DESARMAR SOLO SI n_hojas=3
/* Accesorios */
	PARTE A
     1 x 2
   PARTE D
	 1 x 16
   PARTE C84
     1 x 6
   PARTE AEL
     1 x m_ancho/1000
     6 x m_alto/1000
/*Cerradura*/
   PARTE PASADOR
     1 x 4
   PARTE MANIJA
     1 x 1
/* Tornillos de sujecion */
   PARTE C5
     3 x 8+4*tra1+4*par1+4*tra1*par1
                DESARMAR SOLO SI xtra>0
     3 x 4
                FIN DESARME
                DESARMAR SOLO SI tipo_patr=1
   PARTE AHC
     3 x INT(8+4*tra1+4*par1+4*tra1*par1)
                        DESARMAR SOLO SI xtra>0
     3 x 4
                        FIN DESARME
                        DESARMAR SOLO SI tipo_patr=2
   PARTE AHB
     3 x 8+4*tra1+4*par1+4*tra1*par1
                                DESARMAR SOLO SI xtra>0
     3 x 4
                                FIN DESARME
                        FIN DESARME
                FIN DESARME
   PARTE T
     6 x m_ancho/1000 + m_alto/1000
   PARTE UVW
     6 x m_ancho/1000 + m_alto/1000
   PARTE AHC
     6 x INT(m_alto/1000)
     
   SEGUN tipo_cerr PARTE 3001,2284,5006
     1 x 1
     
                DESARMAR SOLO SI manijon>1
        SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
     1 x 2
                FIN DESARME
                DESARMAR SOLO SI cierra_p!=0
    PARTE CIEPTA
     1 x 1
                FIN DESARME
                DESARMAR SOLO SI caja_p!=0
        PARTE CAJAP
     1 x 1
                FIN DESARME
        FIN DESARME


PRODUCTO MOPUER




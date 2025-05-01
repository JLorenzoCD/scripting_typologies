/* PUERTA DE REBATIR CON TRAVIESAS VARIABLES */

/* xtra = posicion de la traviesa principal.
/* tra1 = Posicion del primer travesaño.
/* tra2 = Posicion del 2do travesaño.
/* tra3 = Posicion del 3er travesaño.
/* par1 = cantidad de parantes centrados respecto al xtra.
/* d_vid = descuento del vidrio segun el tipo de travesa¤o que se utilice.
/* j_desc = descuento desde el xtra al tra1.
/* e_desc = descuento segun que tipo de travesa¤o se utilice.

/* El revestimiento automatico solo funciona cuando hay un xtra!!!!
/* y va desde el xtra para abajo

/* e_desc = espesor del travesa¤o o parante
/* d_vid = espesor del travesa¤o o parante con descuento del vidrio incluido*/
      	CALCULOS
    e_desc:=if(tipo_patr=1,66,20)
    d_vid:=if(tipo_patr=1,73,27)
    j_desc:=if(tipo_patr=1,33,10)
	FIN CALCULOS

/* Marco */
PERFIL 211
    CORTES A 45:
       1 x m_ancho
    CORTES A 90 Y 45:        
       2 x m_alto


/* puerta de una hoja */
DESARMAR SOLO SI n_hojas = 1


	CORTES A RECTO:
	   /* Parantes - Hoja */
   PERFIL 213
          2 x m_alto-33
	   /* Zocalo y Cabezal - Hoja */
   PERFIL 212
          2 x m_ancho-211
	
	/* Tiene travesaño principal*/
	DESARMAR SOLO SI xtra>0
	
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
           DESARMAR SOLO SI tipo_rev=2 .OR. tipo_rev=3 .OR.tipo_rev=4
	        CALCULOS
	            m_aux_ancho:=m_ancho
                m_ancho:=m_aux_ancho-218
	            m_aux_alto:=m_alto
                m_alto:=xtra-33-82-7
	        FIN CALCULOS
	        DESARMAR SOLO SI tipo_rev = 2
	            PRODUCTO REVET
	        FIN DESARME
	        DESARMAR SOLO SI tipo_rev = 3
	            PRODUCTO REV688
	        FIN DESARME
                DESARMAR SOLO SI tipo_rev = 4
                    PRODUCTO REVE1
	        FIN DESARME
	        CALCULOS
	            m_ancho:=m_aux_ancho
	            m_alto:=m_aux_alto
	        FIN CALCULOS
	   FIN DESARME
	
		/* No tiene travesanios */
		DESARMAR SOLO SI tra1=0
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 205,206
                        2 x m_ancho-236
                        2 x m_alto-xtra-33-105-7
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
                             2*(par1+1) x (m_ancho-236-e_desc*par1)/(par1+1)/1000
                             2*(par1+1) x (m_alto-xtra-33-105)/1000
					PARTE UVW
                             2*(par1+1) x (m_ancho-236-e_desc*par1)/(par1+1)/1000
                             2*(par1+1) x (m_alto-xtra-33-105)/1000
					PANELES
                             par1+1 de (m_ancho-218-d_vid*par1)/(par1+1) x m_alto-xtra-33-105-7
	
				FIN DESARME
		FIN DESARME
	
		/* Tiene UN travesanio */
		DESARMAR SOLO SI tra1>0 .AND. tra2=0
                SEGUN tipo_patr PERFIL 208,209
                    1 x m_ancho-211
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 205,206
                                4 x m_ancho-236
                                2 x tra1-xtra-33-j_desc
                                2 x m_alto-tra1-j_desc-105
                   PARTE T
                                4 x (m_ancho-236)/1000
                                2 x (tra1-xtra-33-j_desc)/1000
                                2 x (m_alto-tra1-105-j_desc)/1000
					PARTE UVW
                                4 x (m_ancho-236)/1000
                                2 x (tra1-xtra-33-j_desc)/1000
                                2 x (m_alto-tra1-105-j_desc)/1000
					PANELES
                                1 de m_ancho-218 x tra1-33-xtra-j_desc-7
					OTROS INTERIORES
                                1 de m_ancho-218 x m_alto-tra1-105-j_desc-7
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 208,209
                              par1 x tra1-xtra-33-j_desc
                              par1 x m_alto-tra1-105-j_desc
                    SEGUN contravid PERFIL 205,206
                        4*(par1+1) x (m_ancho-236-(e_desc+25)*par1)/(par1+1)
                        2*(par1+1) x tra1-xtra-33-j_desc
                        2*(par1+1) x m_alto-tra1-105-j_desc
					PARTE T
                        4*(par1+1) x (m_ancho-236-e_desc*par1)/(par1+1)/1000
                        2*(par1+1) x (tra1-xtra-33-j_desc)/1000
                        2*(par1+1) x (m_alto-tra1-105-j_desc)/1000
					PARTE UVW
                        4*(par1+1) x (m_ancho-236-e_desc*par1)/(par1+1)/1000
                        2*(par1+1) x (tra1-xtra-33-j_desc)/1000
                        2*(par1+1) x (m_alto-tra1-105-j_desc)/1000
					PANELES
                        (par1+1) de (m_ancho-218-d_vid*par1)/(par1+1) x tra1-xtra-33-j_desc-7
					OTROS INTERIORES
                        (par1+1) de (m_ancho-218-d_vid*par1)/(par1+1) x m_alto-tra1-105-j_desc-7
	
				FIN DESARME
		 FIN DESARME
	
	
		/* Tiene DOS travesanios */
         DESARMAR SOLO SI tra1>0 .AND. tra2>0
               SEGUN tipo_patr PERFIL 208,209
                    2 x m_ancho-211
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 205,206
                                6 x m_ancho-236
                                2 x tra1-xtra-33-j_desc
                                2 x tra2-tra1-e_desc
                                2 x m_alto-tra2-105-j_desc
					PARTE T
                                6 x (m_ancho-236)/1000
                                2 x (tra1-xtra-66)/1000
                                2 x (tra2-tra1-e_desc)/1000
                                2 x (m_alto-tra2-105-33)/1000
					PARTE UVW
                                6 x (m_ancho-236)/1000
                                2 x (tra1-xtra-66)/1000
                                2 x (tra2-tra1-e_desc)/1000
                                2 x (m_alto-tra2-105-33)/1000
					PANELES
                                1 de m_ancho-218 x tra1-xtra-33-j_desc-7
					OTROS INTERIORES
                                1 de m_ancho-218 x tra2-tra1-d_vid
                                1 de m_ancho-218 x m_alto-tra2-105-j_desc-7
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 208,209
                              par1 x tra1-xtra-33-j_desc
                              par1 x tra2-tra1-e_desc
                              par1 x m_alto-tra2-105-j_desc
	
                    SEGUN contravid PERFIL 205,206
                                6*(par1+1) x (m_ancho-236-(e_desc+25)*par1)/(par1+1)
                                2*(par1+1) x tra1-xtra-33-j_desc
                                2*(par1+1) x tra2-tra1-e_desc
                                2*(par1+1) x m_alto-tra2-105-j_desc
                    PARTE T
                                6*(par1+1) x (m_ancho-236-e_desc*par1)/(par1+1)/1000
                                2*(par1+1) x (tra1-xtra-66)/1000
                                2*(par1+1) x (tra2-tra1-e_desc)/1000
                                2*(par1+1) x (m_alto-tra2-105-33)/1000
					PARTE UVW
                                6*(par1+1) x (m_ancho-236-e_desc*par1)/(par1+1)/1000
                                2*(par1+1) x (tra1-xtra-66)/1000
                                2*(par1+1) x (tra2-tra1-e_desc)/1000
                                2*(par1+1) x (m_alto-tra2-105-33)/1000
					PANELES
                        (par1+1) de (m_ancho-218-d_vid*par1)/(par1+1) x tra1-xtra-33-j_desc-7
					OTROS INTERIORES
                        (par1+1) de (m_ancho-218-d_vid*par1)/(par1+1) x tra2-tra1-d_vid
                        (par1+1) de (m_ancho-218-d_vid*par1)/(par1+1) x m_alto-tra2-105-j_desc-7
	
				FIN DESARME
		 FIN DESARME
	
	FIN DESARME
	


	/* NO Tiene travesaño principal*/
	DESARMAR SOLO SI xtra=0
	
		/* No tiene travesanios */
		 DESARMAR SOLO SI tra1=0
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 205,206
                    4 x m_ancho-236
                        4 x m_alto-187
					PARTE T
                    2 x (m_ancho-236)/1000
                   2 x (m_alto-187)/1000
					PARTE UVW
                    2 x (m_ancho-236)/1000
                   2 x (m_alto-187)/1000
	
		 			DESARMAR SOLO SI tipo_rev=1
			        VIDRIOS
                        1 de m_ancho-218 x m_alto-187-7
	  		      FIN DESARME
                                   DESARMAR SOLO SI tipo_rev=2 .OR. tipo_rev=3 .OR. tipo_rev=4
			        CALCULOS
			            m_aux_ancho:=m_ancho
                        m_ancho:=m_aux_ancho-218
			            m_aux_alto:=m_alto
                        m_alto:=m_alto-187-7
	                FIN CALCULOS
			        DESARMAR SOLO SI tipo_rev = 2
			            PRODUCTO REVET
			        FIN DESARME
			        DESARMAR SOLO SI tipo_rev = 3
			            PRODUCTO REV688
			        FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 4
                                    PRODUCTO REVE1
			        FIN DESARME
			        CALCULOS
			            m_ancho:=m_aux_ancho
			            m_alto:=m_aux_alto
			        FIN CALCULOS
			    	FIN DESARME
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 2O8,209
                              par1 x m_alto-187
                    SEGUN contravid PERFIL 205,206
                         2*(par1+1) x (m_ancho-236-(e_desc+25)*par1)/(par1+1)
                                4*(par1+1) x m_alto-187
					PARTE T
                         2*(par1+1) x (m_ancho-236-e_desc*par1)/(par1+1)/1000
                                2*(par1+1) x (m_alto-187)/1000
					PARTE UVW
                                2*(par1+1) x (m_ancho-236-e_desc*par1)/(par1+1)/1000
                                2*(par1+1) x (m_alto-187)/1000
					VIDRIOS
                    par1+1 de (m_ancho-218-d_vid*par1)/(par1+1) x m_alto-187-7
				FIN DESARME
		 FIN DESARME
	
		/* Tiene un travesanios */
		 DESARMAR SOLO SI tra1>0 .AND. tra2=0
                SEGUN tipo_patr PERFIL 208,209
                    1 x m_ancho-211
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 205,206
                                4 x m_ancho-236
                                2 x tra1-j_desc-82
                                2 x m_alto-tra1-j_desc-105
					PARTE T
                                4 x (m_ancho-236)/1000
                                2 x (tra1-j_desc-82)/1000
                                2 x (m_alto-tra1-j_desc-105)/1000
					PARTE UVW
                                4 x (m_ancho-236)/1000
                                2 x (tra1-j_desc-82)/1000
                                2 x (m_alto-tra1-j_desc-105)/1000
					VIDRIOS
                              1 de m_ancho-218 x tra1-j_desc-82-7
					PANELES
                              1 de m_ancho-218 x m_alto-tra1-j_desc-105-7
	
				FIN DESARME
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 208,209
                              par1 x tra1-j_desc-82
                              par1 x m_alto-tra1-j_desc-105
                    SEGUN contravid PERFIL 205,206
                              8*(par1+1) x (m_ancho-236-(e_desc+25)*par1)/(par1+1)
                              4*(par1+1) x tra1-j_desc-82
                              4*(par1+1) x m_alto-tra1-j_desc-105
					PARTE T
                              4*(par1+1) x (m_ancho-236-(e_desc+25)*par1)/(par1+1)/1000
                              2*(par1+1) x (tra1-j_desc-82)/1000
                              2*(par1+1) x (m_alto-tra1-33-105)/1000
					PARTE UVW
                              4*(par1+1) x (m_ancho-236-e_desc*par1)/(par1+1)/1000
                              2*(par1+1) x (tra1-j_desc-82)/1000
                              2*(par1+1) x (m_alto-tra1-33-105)/1000
					VIDRIOS
                        (par1+1) de (m_ancho-218-d_vid*par1)/(par1+1) x tra1-j_desc-82-7
					PANELES
                        (par1+1) de (m_ancho-218-d_vid*par1)/(par1+1) x m_alto-tra1-33-105-7
				FIN DESARME
	
		 FIN DESARME
	
	
		/* Tiene dos travesanios */
		 DESARMAR SOLO SI tra1>0 .AND. tra2>0
                SEGUN tipo_patr PERFIL 208,209
                    2 x m_ancho-211
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 205,206
                                12 x m_ancho-236
                                4 x tra1-j_desc-82
                                4 x tra2-tra1-e_desc
                                4 x m_alto-tra2-j_desc-105
					PARTE T
                                6 x (m_ancho-236)/1000
                                2 x (tra1-j_desc-82)/1000
                                2 x (tra2-tra1-e_desc)/1000
                                2 x (m_alto-tra2-j_desc-105)/1000
					PARTE UVW
                                6 x (m_ancho-236)/1000
                                2 x (tra1-j_desc-82)/1000
                                2 x (tra2-tra1-e_desc)/1000
                                2 x (m_alto-tra2-j_desc-105)/1000
					VIDRIOS
                              1 de m_ancho-218 x tra1-j_desc-82-7
					PANELES
                              1 de m_ancho-218 x tra2-tra1-d_vid
                    OTROS INTERIORES
                              1 de m_ancho-218 x m_alto-tra2-j_desc-105-7
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
					/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 208,209
                              par1 x tra1-j_desc-82
                              par1 x tra2-tra1-e_desc
                              par1 x m_alto-tra2-j_desc-105
                    SEGUN contravid PERFIL 205,206
                              6*(par1+1) x (m_ancho-236-(e_desc+25)*par1)/(par1+1)
                              2*(par1+1) x tra1-j_desc-82
                              2*(par1+1) x tra2-tra1-e_desc
                              2*(par1+1) x m_alto-tra2-j_desc-105
					PARTE T
                              6*(par1+1) x (m_ancho-236-(e_desc+25)*par1)/(par1+1)/1000
                              2*(par1+1) x (tra1-j_desc-82)/1000
                              2*(par1+1) x (tra2-tra1-e_desc)/1000
                              2*(par1+1) x (m_alto-tra2-j_desc-105)/1000
					PARTE UVW
                              6*(par1+1) x (m_ancho-236-(e_desc+25)*par1)/(par1+1)/1000
                              2*(par1+1) x (tra1-j_desc-100)/1000
                              2*(par1+1) x (tra2-tra1-e_desc)/1000
                              2*(par1+1) x (m_alto-tra2-j_desc-105)/1000
					VIDRIOS
                        (par1+1) de (m_ancho-218-d_vid*par1)/(par1+1) x tra1-j_desc-82-7
					PANELES
                        (par1+1) de (m_ancho-218-d_vid*par1)/(par1+1) x tra2-tra1-d_vid
					OTROS INTERIOES
                        (par1+1) de (m_ancho-218-d_vid*par1)/(par1+1) x m_alto-tra2-j_desc-105-7
				FIN DESARME
	
		 FIN DESARME
	
	FIN DESARME
	
	
	/* Accesorios */
	PARTE A
	 1 x 2
	PARTE D
		 1 x 16
	PARTE C6
	    1 x 3
	PARTE H
	    1 x m_ancho/1000
	    4 x m_alto/1000
	
	/*Cerradura*/
	SEGUN tipo_cerr PARTE 3001,5006,6624
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
	
        DESARMAR SOLO SI caja_p>0
	    PARTE CAJAP
	        1 x 1
	FIN DESARME
	
	
	/* Calculo la cantidad de travesanios */
	CALCULOS
                cant_t:=If(tra1!=0 .AND. tra2=0, 1, 0)
                cant_t:=If(tra1!=0 .AND. tra2!=0, 2, cant_t)
/*              cant_t:=If(tra1!=0 .AND. tra2!=0 .AND. tra3!=0, 3, cant_t)
	FIN CALCULOS
	
	/* Tornillos de sujecion */
	PARTE I
	1 x 8+4*cant_t+4*par1
	DESARMAR SOLO SI xtra>0
	    1 x 4
	FIN DESARME
	
	PARTE T
		2 x m_ancho/1000 + m_alto/1000
	PARTE UVW
		2 x m_ancho/1000 + m_alto/1000
	
	PARTE B71
		4 x m_alto/1000
	
	
FIN DESARME /* PUERTAS DE UNA HOJA */

/* --------------------------------------------- */
/* puerta de DOS hoja */
DESARMAR SOLO SI n_hojas = 2

	CORTES A RECTO:
	   /* Parantes - Hoja */
       PERFIL 213
	      4 x m_alto-33
       PERFIL 214
          2 x m_alto-33

	   /* Zocalo y Cabezal - Hoja */
       PERFIL 212
          4 x m_ancho/2-185

	/* Tiene travesaño principal*/
	DESARMAR SOLO SI xtra>0
	
	    /* Travesaño principal - Hoja */	
        PERFIL 208
            2 x m_ancho/2-185
		/* Contravidrios */
        SEGUN contravid PERFIL 205,206
            4 x m_ancho/2-210
            4 x xtra-j_desc-82
		PARTE T
            4 x (m_ancho/2-210)/1000
            4 x (xtra-j_desc-82)/1000
		PARTE UVW
            4 x (m_ancho/2-210)/1000
            4 x (xtra-j_desc-82)/1000
		DESARMAR SOLO SI tipo_rev=1
	        VIDRIOS
                2 de m_ancho/2-192 x xtra-33-82-7
	    FIN DESARME
            DESARMAR SOLO SI tipo_rev=2 .OR. tipo_rev=3 .OR. tipo_rev=4
	        CALCULOS
	            m_aux_ancho:=m_ancho
                m_ancho:=m_aux_ancho/2-192
	            m_aux_alto:=m_alto
                m_alto:=xtra-33-82-7
	        FIN CALCULOS
	        DESARMAR SOLO SI tipo_rev = 2
	            PRODUCTO REVET
	            PRODUCTO REVET
	        FIN DESARME
	        DESARMAR SOLO SI tipo_rev = 3
	            PRODUCTO REV688
	            PRODUCTO REV688
	        FIN DESARME
                DESARMAR SOLO SI tipo_rev = 4
                    PRODUCTO REVE1
                    PRODUCTO REVE1
	        FIN DESARME
	        CALCULOS
	            m_ancho:=m_aux_ancho
	            m_alto:=m_aux_alto
	        FIN CALCULOS
	    FIN DESARME
	
		/* No tiene travesanios */
		 DESARMAR SOLO SI tra1=0
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 205,206
                        4 x m_ancho/2-210
                        4 x m_alto-xtra-j_desc-105
					PARTE T
                        4 x (m_ancho/2-210)/1000
                        4 x (m_alto-xtra-j_desc-105)/1000
					PARTE UVW
                        4 x (m_ancho/2-210)/1000
                        4 x (m_alto-xtra-j_desc-105)/1000
					PANELES
                        2 de m_ancho/2-192 x m_alto-xtra-j_desc-105-7
				FIN DESARME
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 208,209
                        2*par1 x m_alto-xtra-j_desc-105
                    SEGUN contravid PERFIL 205,206
                        4*(par1+1) x (m_ancho/2-210-par1*(e_desc+25))/(par1+1)
                        4*(par1+1) x m_alto-xtra-j_desc-105
					PARTE T
                        4*(par1+1) x (m_ancho/2-210-par1*(e_desc+25))/(par1+1)/1000
                        4*(par1+1) x (m_alto-xtra-j_desc-105)/1000
					PARTE UVW
                        4*(par1+1) x (m_ancho/2-210-par1*(e_desc+25))/(par1+1)/1000
                        4*(par1+1) x (m_alto-xtra-j_desc-105)/1000
					PANELES
                        2*(par1+1) de (m_ancho/2-192-d_vid*par1)/(par1+1) x m_alto-xtra-j_desc-105-7

				FIN DESARME
		 FIN DESARME
	
		/* Tiene UN travesanio */
		 DESARMAR SOLO SI tra1>0 .AND. tra2=0
                SEGUN tipo_patr PERFIL 208,209
                    2 x m_ancho/2-185
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 205,206
                                 8 x m_ancho/2-210
                                 4 x tra1-xtra-33-j_desc
                                 4 x m_alto-tra1-105-j_desc
					PARTE T
                                8 x (m_ancho/2-210)/1000
                                4 x (tra1-xtra-33-j_desc)/1000
                                4 x (m_alto-tra1-105-j_desc)/1000
					PARTE UVW
                                8 x (m_ancho/2-210)/1000
                                4 x (tra1-xtra-33-j_desc)/1000
                                4 x (m_alto-tra1-105-j_desc)/1000
					PANELES
                                2 de m_ancho/2-192 x tra1-xtra-33-j_desc-7
					OTROS INTERIORES
                                2 de m_ancho/2-192 x m_alto-tra1-105-j_desc-7
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 208,209
                                2*par1 x tra1-xtra-33-j_desc
                                2*par1 x m_alto-tra1-105-j_desc
	
                    SEGUN contravid PERFIL 205,206
                                8*(par1+1) x (m_ancho/2-210-par1*(e_desc+25))/(par1+1)
                                4*(par1+1) x tra1-xtra-33-j_desc
                                4*(par1+1) x m_alto-tra1-105-j_desc
					PARTE T
                                8*(par1+1) x (m_ancho/2-210-par1*(e_desc+25))/(par1+1)/1000
                                4*(par1+1) x (tra1-xtra-33-j_desc)/1000
                                4*(par1+1) x (m_alto-tra1-105-j_desc)/1000
					PARTE UVW
                                8*(par1+1) x (m_ancho/2-210-(e_desc+25)*par1)/(par1+1)/1000
                                4*(par1+1) x (tra1-xtra-33-j_desc)/1000
                                4*(par1+1) x (m_alto-tra1-105-j_desc)/1000
					PANELES
                        2*(par1+1) de (m_ancho/2-192-d_vid*par1)/(par1+1) x tra1-xtra-33-j_desc-7
					OTROS INTERIORES
                        2*(par1+1) de (m_ancho/2-192-d_vid*par1)/(par1+1) x m_alto-tra1-105-j_desc-7

				FIN DESARME
		 FIN DESARME
	
	
		/* Tiene DOS travesanios */
                 DESARMAR SOLO SI tra1>0 .AND. tra2>0 
                SEGUN tipo_patr PERFIL 208,209
                    4 x m_ancho/2-185
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 205,206
                                12 x m_ancho/2-210
                                 4 x tra1-xtra-33-j_desc
                                 4 x tra2-tra1-e_desc
                                 4 x m_alto-tra2-105-j_desc
					PARTE T
                                12 x (m_ancho/2-210)/1000
                                 4 x (tra1-xtra-33-j_desc)/1000
                                 4 x (tra2-tra1-e_desc)/1000
                                 4 x (m_alto-tra2-105-j_desc)/1000
					PARTE UVW
								12 x (m_ancho-425)/1000
                                 4 x (tra1-xtra-33-j_desc)/1000
                                 4 x (tra2-tra1-e_desc)/1000
                                 4 x (m_alto-tra2-105-j_desc)/1000
					PANELES
                              2 de m_ancho/2-192 x tra1-xtra-33-j_desc-7
					OTROS INTERIORES
                                2 de m_ancho/2-192 x tra2-tra1-d_vid
                                2 de m_ancho/2-192 x m_alto-tra2-105-j_desc-7
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 208,209
                              2*par1 x tra1-xtra-33-j_desc
                              2*par1 x tra2-tra1-e_desc
                              2*par1 x m_alto-tra2-105-j_desc
	
                    SEGUN contravid PERFIL 205,206
                                12*(par1+1) x (m_ancho/2-210-par1*(e_desc+25))/(par1+1)
                                4*(par1+1) x tra1-xtra-33-j_desc
                                4*(par1+1) x tra2-tra1-e_desc
                                4*(par1+1) x m_alto-tra2-105-j_desc
					PARTE T
                                12*(par1+1) x (m_ancho/2-210-(e_desc+25)*par1)/(par1+1)/1000
                                4*(par1+1) x (tra1-xtra-33-j_desc)/1000
                                4*(par1+1) x (tra2-tra1-e_desc)/1000
                                4*(par1+1) x (m_alto-tra2-105-j_desc)/1000
					PARTE UVW
                                12*(par1+1) x (m_ancho/2-210-(e_desc+25)*par1)/(par1+1)/1000
                                4*(par1+1) x (tra1-xtra-33-j_desc)/1000
                                4*(par1+1) x (tra2-tra1-e_desc)/1000
                                4*(par1+1) x (m_alto-tra2-105-j_desc)/1000
					PANELES
                        2*(par1+1) de (m_ancho/2-192-d_vid*par1)/(par1+1) x tra1-xtra-33-j_desc-7
					OTROS INTERIORES
                        2*(par1+1) de (m_ancho/2-192-d_vid*par1)/(par1+1) x tra2-tra1-d_vid
                        2*(par1+1) de (m_ancho/2-192-d_vid*par1)/(par1+1) x m_alto-tra2-105-j_desc-7

				FIN DESARME
		 FIN DESARME
	
	FIN DESARME
	


	/* NO Tiene travesaño principal*/
	DESARMAR SOLO SI xtra=0
	
		/* No tiene travesanios */
		 DESARMAR SOLO SI tra1=0
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 205,206
                    4 x m_ancho/2-210
                    4 x m_alto-187
					PARTE T
                    4 x (m_ancho/2-210)/1000
                    4 x (m_alto-187)/1000
					PARTE UVW
                    4 x (m_ancho/2-210)/1000
                    4 x (m_alto-187)/1000
	
		 			DESARMAR SOLO SI tipo_rev=1
			        VIDRIOS
                        2 de m_ancho/2-192 x m_alto-187-7
	  		      FIN DESARME
                                   DESARMAR SOLO SI tipo_rev=2 .OR. tipo_rev=3 .OR.tipo_rev=4
			        CALCULOS
			            m_aux_ancho:=m_ancho
                        m_ancho:=m_aux_ancho/2-192
			            m_aux_alto:=m_alto
                        m_alto:=m_alto-187-7
	                FIN CALCULOS
			        DESARMAR SOLO SI tipo_rev = 2
			            PRODUCTO REVET
			            PRODUCTO REVET
			        FIN DESARME
			        DESARMAR SOLO SI tipo_rev = 3
			            PRODUCTO REV688
			            PRODUCTO REV688
			        FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 4
			            PRODUCTO REV688
			            PRODUCTO REV688
			        FIN DESARME
			        CALCULOS
			            m_ancho:=m_aux_ancho
			            m_alto:=m_aux_alto
			        FIN CALCULOS
			    	FIN DESARME
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 208,209
                              2*par1 x m_alto-187
                    SEGUN contravid PERFIL 205,206
                         4*(par1+1) x (m_ancho/2-210-par1*(e_desc+25))/(par1+1)
                         4*(par1+1) x m_alto-187
					PARTE T
                         4*(par1+1) x (m_ancho/2-210-(e_desc+25)*par1)/(par1+1)/1000
                         4*(par1+1) x (m_alto-187)/1000
					PARTE UVW
                         4*(par1+1) x (m_ancho/2-210-(e_desc+25)*par1)/(par1+1)/1000
                         4*(par1+1) x (m_alto-187)/1000
					VIDRIOS
                         2*(par1+1) de (m_ancho/2-192-d_vid*par1)/(par1+1) x m_alto-187-7
				FIN DESARME
		 FIN DESARME
	
		/* Tiene un travesanios */
		 DESARMAR SOLO SI tra1>0 .AND. tra2=0
                SEGUN tipo_patr PERFIL 208,209
                    2 x m_ancho/2-185
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 205,206
                                8 x m_ancho/2-210
                                4 x tra1-j_desc-82
                                4 x m_alto-tra1-j_desc-105
					PARTE T
                                8 x (m_ancho/2-210)/1000
                                4 x (tra1-j_desc-100)/1000
                                4 x (m_alto-tra1-j_desc-105)/1000
					PARTE UVW
                                8 x (m_ancho/2-210)/1000
                                4 x (tra1-j_desc-82)/1000
                                4 x (m_alto-tra1-j_desc-105)/1000
	
					VIDRIOS
                              2 de m_ancho/2-192 x tra1-j_desc-82-7
					PANELES
                              2 de m_ancho/2-192 x m_alto-tra1-j_desc-105-7
	
				FIN DESARME
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 208,209
                              2*par1 x tra1-j_desc-82
                              2*par1 x m_alto-tra1-j_desc-105
                    SEGUN contravid PERFIL 205,206
                              8*(par1+1) x (m_ancho/2-210-par1*(e_desc+25))/(par1+1)
                              4*(par1+1) x tra1-j_desc-82
                              4*(par1+1) x m_alto-tra1-j_desc-105
					PARTE T
                              8*(par1+1) x (m_ancho/2-210-(e_desc+25)*par1)/(par1+1)/1000
                              4*(par1+1) x (tra1-j_desc-82)/1000
                              4*(par1+1) x (m_alto-tra1-j_desc-105)/1000
					PARTE UVW
                              8*(par1+1) x (m_ancho/2-210-(e_desc+25)*par1)/(par1+1)/1000
                              4*(par1+1) x (tra1-j_desc-82)/1000
                              4*(par1+1) x (m_alto-tra1-j_desc-105)/1000
					VIDRIOS
                        2*(par1+1) de (m_ancho/2-192-d_vid*par1)/(par1+1) x tra1-j_desc-82-7
					PANELES
                        2*(par1+1) de (m_ancho/2-192-d_vid*par1)/(par1+1) x m_alto-tra1-j_desc-105-7
				FIN DESARME
	
		 FIN DESARME
	

		/* Tiene dos travesanios */
		 DESARMAR SOLO SI tra1>0 .AND. tra2>0
                SEGUN tipo_patr PERFIL 208,209
                    4 x m_ancho/2-185
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 205,206
                               12 x m_ancho/2-210
                                4 x tra1-j_desc-82
                                4 x tra2-tra1-e_desc
                                4 x m_alto-tra2-j_desc-105
					PARTE T
                               12 x (m_ancho/2-210)/1000
                                4 x (tra1-j_desc-82)/1000
                                4 x (tra2-tra1-e_desc)/1000
                                4 x (m_alto-tra2-j_desc-105)/1000
					PARTE UVW
                               12 x (m_ancho/2-210)/1000
                                4 x (tra1-j_desc-82)/1000
                                4 x (tra2-tra1-e_desc)/1000
                                4 x (m_alto-tra2-j_desc-105)/1000
					VIDRIOS
                              2 de m_ancho/2-192 x tra1-j_desc-82-7
					PANELES
                              2 de m_ancho/2-192 x tra2-tra1-d_vid
					OTROS INTERIOES
                              2 de m_ancho/2-192 x m_alto-tra2-j_desc-105-7
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
					/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 208,209
                              2*par1 x tra1-j_desc-82
                              2*par1 x tra2-tra1-e_desc
                              2*par1 x m_alto-tra2-j_desc-105
                    SEGUN contravid PERFIL 205,206
                             12*(par1+1) x (m_ancho/2-210-par1*(e_desc+25))/(par1+1)
                              4*(par1+1) x tra1-j_desc-82
                              4*(par1+1) x tra2-tra1-e_desc
                              4*(par1+1) x m_alto-tra2-j_desc-105
					PARTE T
                             12*(par1+1) x (m_ancho/2-210-(e_desc+25)*par1)/(par1+1)/1000
                              4*(par1+1) x (tra1-j_desc-82)/1000
                              4*(par1+1) x (tra2-tra1-e_desc)/1000
                              4*(par1+1) x (m_alto-tra2-j_desc-105)/1000
					PARTE UVW
                              12*(par1+1) x (m_ancho/2-210-(e_desc+25)*par1)/(par1+1)/1000
                              4*(par1+1) x (tra1-j_desc-82)/1000
                              4*(par1+1) x (tra2-tra1-e_desc)/1000
                              4*(par1+1) x (m_alto-tra2-j_desc-105)/1000
					VIDRIOS
                        2*(par1+1) de (m_ancho/2-192-d_vid*par1)/(par1+1) x tra1-j_desc-82-7
					PANELES
                        2*(par1+1) de (m_ancho/2-192-d_vid*par1)/(par1+1) x tra2-tra1-d_vid
					OTROS INTERIOES
                        2*(par1+1) de (m_ancho/2-192-d_vid*par1)/(par1+1) x m_alto-tra2-j_desc-105-7
				FIN DESARME
	
		 FIN DESARME
	
	FIN DESARME
	
	
	/* Accesorios */
	PARTE A
	 1 x 2
	PARTE D
		 1 x 16
	PARTE C6
	    1 x 6
	PARTE H
	    1 x m_ancho/1000
	    6 x m_alto/1000
	
	/*Cerradura*/
	SEGUN tipo_cerr PARTE 3001,5006,6624
	    1 x 1
	
        DESARMAR SOLO SI manijon>1
            SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
	        1 x 2
	FIN DESARME

	PARTE PASADOR
   		  1 x 2	
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
	
	
	/* Calculo la cantidad de travesanios */
	CALCULOS
       cant_t:=If(tra1!=0 .AND. tra2=0, 1, 0)
           cant_t:=If(tra1!=0 .AND. tra2!=0, 2, cant_t)
 /*          cant_t:=If(tra1!=0 .AND. tra2!=0 .AND. tra3!=0, 3, cant_t)
	FIN CALCULOS
	
	/* Tornillos de sujecion */
	PARTE I
	2 x 8+4*cant_t+4*par1
	DESARMAR SOLO SI xtra>0
	    2 x 4
	FIN DESARME
	
	PARTE T
		4 x m_ancho/1000 + m_alto/1000
	PARTE UVW
		4 x m_ancho/1000 + m_alto/1000
	
	PARTE B71
		4 x m_alto/1000
	
	
FIN DESARME /* PUERTAS DE DOS HOJAS */
	
/* --------------------------------------------- */
/* puerta de TRES hojas */
DESARMAR SOLO SI n_hojas = 3

	CORTES A RECTO:
	   /* Parantes - Hoja */
       PERFIL 213
          6 x m_alto-33
	   /* Zocalo y Cabezal - Hoja */
       PERFIL 212
            6 x m_ancho/3-184
       PERFIL 214
            3 x m_alto-33
	/* Tiene travesaño principal*/
	DESARMAR SOLO SI xtra>0
	
	    /* Travesaño principal - Hoja */	
        PERFIL 208
           3 x m_ancho/3-177
		/* Contravidrios */
        SEGUN contravid PERFIL 205,206
              6 x m_ancho/3-202
              6 x xtra-45-82
		PARTE T
                6 x (m_ancho/3-202)/1000
                6 x (m_ancho/3-202)/1000
		PARTE UVW
                6 x (m_ancho/3-202)/1000
                6 x (m_ancho/3-202)/1000
	
		DESARMAR SOLO SI tipo_rev=1
	        VIDRIOS
                3 de m_ancho/3-184 x xtra-33-82-7
        FIN DESARME
	    DESARMAR SOLO SI tipo_rev=2 .OR. tipo_rev=3
	        CALCULOS
	            m_aux_ancho:=m_ancho
                m_ancho:=m_aux_ancho/3-184
	            m_aux_alto:=m_alto
	            m_alto:=xtra-152
	        FIN CALCULOS
	        DESARMAR SOLO SI tipo_rev = 2
	            PRODUCTO REVET
	            PRODUCTO REVET
	            PRODUCTO REVET
	        FIN DESARME
	        DESARMAR SOLO SI tipo_rev = 3
	            PRODUCTO REV688
	            PRODUCTO REV688
	            PRODUCTO REV688
	        FIN DESARME
	        CALCULOS
	            m_ancho:=m_aux_ancho
	            m_alto:=m_aux_alto
	        FIN CALCULOS
	    FIN DESARME
	
		/* No tiene travesanios */
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
                           3*par1 x m_alto-xtra-j_desc-105
                    SEGUN contravid PERFIL 205,206
                             6*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)
                             6*(par1+1) x m_alto-xtra-33-105
					PARTE T
                             6*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                             6*(par1+1) x (m_alto-xtra-33-105)/1000
					PARTE UVW
                             6*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                             6*(par1+1) x (m_alto-xtra-33-105)/1000
					PANELES
                             3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x m_alto-xtra-33-105-7
	
				FIN DESARME
		 FIN DESARME
	
		/* Tiene UN travesanio */
		 DESARMAR SOLO SI tra1>0 .AND. tra2=0
                SEGUN tipo_patr PERFIL 208,209
                    3 x m_ancho/3-177
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 205,206
                                12 x m_ancho/3-202
                                6 x tra1-xtra-33-j_desc
                                6 x m_alto-tra1-105-j_desc
					PARTE T
                               12 x (m_ancho/3-202)/1000
                                6 x (tra1-xtra-33-j_desc)/1000
                                6 x (m_alto-tra1-105-j_desc)/1000
					PARTE UVW
                               12 x (m_ancho/3-202)/1000
                                6 x (tra1-xtra-33-j_desc)/1000
                                6 x (m_alto-tra1-105-j_desc)/1000
					PANELES
                                3 de m_ancho/3-184 x tra1-xtra-33-j_desc-7
					OTROS INTERIORES
                                3 de m_ancho/3-184 x m_alto-tra1-105-j_desc-7
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 208,209
                        3*par1 x tra1-xtra-33-j_desc
                        3*par1 x m_alto-tra1-105-33
	
                    SEGUN contravid PERFIL 205,206
                        12*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)
                        6*(par1+1) x tra1-xtra-33-j_desc
                        6*(par1+1) x m_alto-tra1-105-j_desc
					PARTE T
                        12*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                         6*(par1+1) x (tra1-xtra-33-j_desc)/1000
                         6*(par1+1) x (m_alto-tra1-105-j_desc)/1000
					PARTE UVW
                        12*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                         6*(par1+1) x (tra1-xtra-33-j_desc)/1000
                         6*(par1+1) x (m_alto-tra1-105-j_desc)/1000
					PANELES
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x tra1-xtra-33-j_desc-7
					OTROS INTERIORES
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x m_alto-tra1-105-j_desc-7
	
				FIN DESARME
		 FIN DESARME
	
	
		/* Tiene DOS travesanios */
                 DESARMAR SOLO SI tra1>0 .AND. tra2>0
                SEGUN tipo_patr PERFIL 208,209
                    6 x m_ancho/3-177
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 205,206
                                 18 x m_ancho/3-202
                                 6 x tra1-xtra-33-j_desc
                                 6 x tra2-tra1-e_desc
                                 6 x m_alto-tra2-105-j_desc
					PARTE T
                                18 x (m_ancho/3-202)/1000
                                 6 x (tra1-xtra-33-j_desc)/1000
                                 6 x (tra2-tra1-e_desc)/1000
                                 6 x (m_alto-tra2-105-j_desc)/1000
					PARTE UVW
                                18 x (m_ancho/3-202)/1000
                                 6 x (tra1-xtra-33-j_desc)/1000
                                 6 x (tra2-tra1-e_desc)/1000
                                 6 x (m_alto-tra2-105-j_desc)/1000
					PANELES
                              3 de m_ancho/3-184 x tra1-xtra-33-j_desc
					OTROS INTERIORES
                              3 de m_ancho/3-184 x tra2-tra1-d_vid
                              3 de m_ancho/3-184 x m_alto-tra2-105-j_desc-7
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 208,209
                              3*par1 x tra1-xtra-33-j_desc
                              3*par1 x tra2-tra1-e_desc
                              3*par1 x m_alto-tra2-105-j_desc
	
                    SEGUN contravid PERFIL 205,206
                                18*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)
                                 6*(par1+1) x tra1-xtra-33-j_desc
                                 6*(par1+1) x tra2-tra1-e_desc
                                 6*(par1+1) x m_alto-tra2-105-j_desc
					PARTE T
                               18*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                                6*(par1+1) x (tra1-xtra-33-j_desc)/1000
                                6*(par1+1) x (tra2-tra1-e_desc)/1000
                                6*(par1+1) x (m_alto-tra2-105-j_desc)/1000
					PARTE UVW
                               18*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                                6*(par1+1) x (tra1-xtra-33-j_desc)/1000
                                6*(par1+1) x (tra2-tra1-e_desc)/1000
                                6*(par1+1) x (m_alto-tra2-105-j_desc)/1000
					PANELES
                       3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x tra1-xtra-33-j_desc-7
					OTROS INTERIORES
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x tra2-tra1-d_vid
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x m_alto-tra2-105-j_desc-7
	
				FIN DESARME
		 FIN DESARME
	
	FIN DESARME
	


	/* NO Tiene travesaño principal*/
	DESARMAR SOLO SI xtra=0
	
		/* No tiene travesanios */
		 DESARMAR SOLO SI tra1=0
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 205,206
                    12 x m_ancho/3-202
                    12 x m_alto-187
					PARTE T
                    6 x (m_ancho/3-202)/1000
                    6 x (m_alto-187)/1000
					PARTE UVW
                    6 x (m_ancho/3-202)/1000
                    6 x (m_alto-187)/1000
	
		 			DESARMAR SOLO SI tipo_rev=1
			        VIDRIOS
                        3 de m_ancho/3-184 x m_alto-187-7
	  		      FIN DESARME
				   DESARMAR SOLO SI tipo_rev=2 .OR. tipo_rev=3
			        CALCULOS
			            m_aux_ancho:=m_ancho
                        m_ancho:=(m_aux_ancho/3-184
			            m_aux_alto:=m_alto
                        m_alto:=m_alto-187-7
	                FIN CALCULOS
			        DESARMAR SOLO SI tipo_rev = 2
			            PRODUCTO REVET
			            PRODUCTO REVET
			            PRODUCTO REVET
			        FIN DESARME
			        DESARMAR SOLO SI tipo_rev = 3
			            PRODUCTO REV688
			            PRODUCTO REV688
			            PRODUCTO REV688
			        FIN DESARME
			        CALCULOS
			            m_ancho:=m_aux_ancho
			            m_alto:=m_aux_alto
			        FIN CALCULOS
			    	FIN DESARME
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 208,209
                              3*par1 x m_alto-187
                    SEGUN contravid PERFIL 205,206
                         6*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)
                         6*(par1+1) x m_alto-187
					PARTE T
                         6*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                         6*(par1+1) x (m_alto-187)/1000
					PARTE UVW
                         6*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                         6*(par1+1) x (m_alto-187)/1000
					VIDRIOS
                   3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x m_alto-187-7
				FIN DESARME
		 FIN DESARME
	
		/* Tiene un travesanios */
		 DESARMAR SOLO SI tra1>0 .AND. tra2=0
                SEGUN tipo_patr PERFIL 208,209
                  3 x m_ancho/3-185
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 205,206
                               12 x m_ancho/3-202
                                6 x tra1-j_desc-82
                                6 x m_alto-tra1-j_desc-105
                   PARTE T
                               12 x (m_ancho/3-202)/1000
                                6 x (tra1-j_desc-82)/1000
                                6 x (m_alto-tra1-j_desc-105)/1000
					PARTE UVW
                               12 x (m_ancho/3-202)/1000
                                6 x (tra1-j_desc-82)/1000
                                6 x (m_alto-tra1-j_desc-105)/1000

					VIDRIOS
                              3 de m_ancho/3-184 x tra1-j_desc-82-7
					PANELES
                              3 de m_ancho/3-184 x m_alto-tra1-j_desc-105-7
	
				FIN DESARME
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 208,209
                              3*par1 x tra1-j_desc-82
                              3*par1 x m_alto-tra1-j_desc-105
                    SEGUN contravid PERFIL 205,206
                              12*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)
                              6*(par1+1) x tra1-j_desc-82
                              6*(par1+1) x m_alto-tra1-j_desc-105
					PARTE T
                              12*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                              6*(par1+1) x (tra1-j_desc-82)/1000
                              6*(par1+1) x (m_alto-tra1-j_desc-105)/1000
					PARTE UVW
                              12*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                               6*(par1+1) x (tra1-j_desc-82)/1000
                               6*(par1+1) x (m_alto-tra1-j_desc-105)/1000
					VIDRIOS
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x tra1-j_desc-82-7
					PANELES
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x m_alto-tra1-j_desc-105-7
				FIN DESARME
	
		 FIN DESARME
	
	
		/* Tiene dos travesanios */
		 DESARMAR SOLO SI tra1>0 .AND. tra2>0
                SEGUN tipo_patr PERFIL 208,209
                    3 x m_ancho/3-177
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 205,206
                           18 x m_ancho/3-202
                            6 x tra1-j_desc-82
                            6 x tra2-tra1-e_desc
                            6 x m_alto-tra2-j_desc-105
					PARTE T
                            18 x (m_ancho/3-202)/1000
                             6 x (tra1-j_desc-82)/1000
                             6 x (tra2-tra1-e_desc)/1000
                             6 x (m_alto-tra2-j_desc-105)/1000
					PARTE UVW
                            18 x (m_ancho/3-202)/1000
                             6 x (tra1-j_desc-82)/1000
                             6 x (tra2-tra1-e_desc)/1000
                             6 x (m_alto-tra2-j_desc-105)/1000
					VIDRIOS
                             3 de m_ancho/3-184 x tra1-j_desc-82-7
					PANELES
                             3 de m_ancho/3-184 x tra2-tra1-e_desc-7
					OTROS INTERIOES
                             3 de m_ancho/3-184 x m_alto-tra2-j_desc-105-7
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
					/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 208,209
                              3*par1 x tra1-j_desc-82
                              3*par1 x tra2-tra1-e_desc
                              3*par1 x m_alto-tra2-j_desc-105
                    SEGUN contravid PERFIL 205,206
                             18*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)
                             6*(par1+1) x tra1-j_desc-82
                             6*(par1+1) x tra2-tra1-e_desc
                             6*(par1+1) x m_alto-tra2-j_desc-105
					PARTE T
                             18*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                              6*(par1+1) x (tra1-j_desc-82)/1000
                              6*(par1+1) x (tra2-tra1-e_desc)/1000
                              6*(par1+1) x (m_alto-tra2-j_desc-105)/1000
					PARTE UVW
                             18*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                              6*(par1+1) x (tra1-j_desc-82)/1000
                              6*(par1+1) x (tra2-tra1-e_desc)/1000
                              6*(par1+1) x (m_alto-tra2-j_desc-105)/1000
					VIDRIOS
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x tra1-j_desc-82-7
					PANELES
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x tra2-tra1-d_vid
					OTROS INTERIOES
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x m_alto-tra2-j_desc-105-7
				FIN DESARME
	
		 FIN DESARME
	
	FIN DESARME
	
	
	/* Accesorios */
	PARTE A
	 1 x 2
	PARTE D
		 1 x 16
	PARTE C6
        1 x 9
	PARTE H
	    1 x m_ancho/1000
        8 x m_alto/1000
	
	/*Cerradura*/
	SEGUN tipo_cerr PARTE 3001,5006,6624
	    1 x 1
	
        DESARMAR SOLO SI manijon>1
            SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
            1 x 4
	FIN DESARME

	PARTE PASADOR
          1 x 4
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
	
	
	/* Calculo la cantidad de travesanios */
	CALCULOS
                cant_t:=If(tra1!=0 .AND. tra2=0, 1, 0)
           cant_t:=If(tra1!=0 .AND. tra2!=0, 2, cant_t)
/*           cant_t:=If(tra1!=0 .AND. tra2!=0 .AND. tra3!=0, 3, cant_t)
	FIN CALCULOS
	
	/* Tornillos de sujecion */
	PARTE I
	2 x 8+4*cant_t+4*par1
	DESARMAR SOLO SI xtra>0
	    2 x 4
	FIN DESARME
	
	PARTE T
        6 x m_ancho/1000 + m_alto/1000
	PARTE UVW
        6 x m_ancho/1000 + m_alto/1000
	
	PARTE B71
		4 x m_alto/1000
	
	
FIN DESARME /* PUERTAS DE TRES HOJAS */
	

PRODUCTO MOPUER	




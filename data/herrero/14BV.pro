/* PUERTA DE REBATIR CON TRAVIESAS VARIABLES */

/* xtra = posicion de la traviesa principal
/* tra1 = Posicion del primer travesaño
/* tra2 = Posicion del 2do travesaño
/* tra3 = Posicion del 3er travesaño
/* par1 = cantidad de parantes centrados respecto al xtra

/* El revestimiento automatico solo funciona cuando hay un xtra!!!!
/* y va desde el xtra para abajo


/* Marco */
PERFIL 10
    CORTES A 45:
       1 x m_ancho
    CORTES A 90 Y 45:        
       2 x m_alto


/* puerta de una hoja */
DESARMAR SOLO SI n_hojas = 1


	CORTES A RECTO:
	   /* Parantes - Hoja */
	   PERFIL 39
	      2 x m_alto-33
           PERFIL 41
              2 x m_alto-33
	   /* Zocalo y Cabezal - Hoja */
	   PERFIL 11
          2 x m_ancho-208
	
	/* Tiene travesaño principal*/
	DESARMAR SOLO SI xtra>0
	
	    /* Travesaño principal - Hoja */	
		PERFIL 11
              1 x m_ancho-208
		PERFIL 23
              1 x m_ancho-208
		/* Contravidrios */
		PERFIL 8
                4 x m_ancho-233
		        4 x xtra-45-100
		PARTE T
                2 x (m_ancho-233)/1000
		        2 x (xtra-45-100)/1000
		PARTE UVW
                2 x (m_ancho-233)/1000
		        2 x (xtra-45-100)/1000
	
		DESARMAR SOLO SI tipo_rev=1
	        VIDRIOS
                1 de m_ancho-215 x xtra-152
	   FIN DESARME
	   DESARMAR SOLO SI tipo_rev=2 .OR. tipo_rev=3
	        CALCULOS
	            m_aux_ancho:=m_ancho
                m_ancho:=m_aux_ancho-215
	            m_aux_alto:=m_alto
	            m_alto:=xtra-152
	        FIN CALCULOS
	        DESARMAR SOLO SI tipo_rev = 2
	            PRODUCTO REVET
	        FIN DESARME
	        DESARMAR SOLO SI tipo_rev = 3
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
					PERFIL 8
                        4 x m_ancho-233
                        4 x m_alto-xtra-45-113
					PARTE T
                        2 x (m_ancho-233)/1000
                        2 x (m_alto-xtra-45-113)/1000
					PARTE UVW
                        2 x (m_ancho-233)/1000
                        2 x (m_alto-xtra-45-113)/1000
					PANELES
                        1 de m_ancho-215 x m_alto-xtra-165
				FIN DESARME
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
					PERFIL 11
                        par1 x m_alto-xtra-45-113
					PERFIL 23
                        par1 x m_alto-xtra-45-113
					PERFIL 8
                        4*(par1+1) x (m_ancho-233-115*par1)/(par1+1)
                        4*(par1+1) x m_alto-xtra-45-113
					PARTE T
                        2*(par1+1) x (m_ancho-233-115*par1)/(par1+1)/1000
                        2*(par1+1) x (m_alto-xtra-45-113)/1000
					PARTE UVW
                        2*(par1+1) x (m_ancho-233-115*par1)/(par1+1)/1000
                        2*(par1+1) x (m_alto-xtra-45-113)/1000
					PANELES
                        par1+1 de (m_ancho-215-97*par1)/(par1+1) x m_alto-xtra-165
	
				FIN DESARME
		FIN DESARME
	
		/* Tiene UN travesanio */
		DESARMAR SOLO SI tra1>0 .AND. tra2=0
				PERFIL 11
                    1 x m_ancho-208
				PERFIL 23
                    1 x m_ancho-208
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
					PERFIL 8
                                8 x m_ancho-233
                                4 x tra1-xtra-90
                                4 x m_alto-tra1-113-45
					PARTE T
                                4 x (m_ancho-233)/1000
                                2 x (tra1-xtra-90)/1000
                                2 x (m_alto-tra1-113-45)/1000
					PARTE UVW
                                4 x (m_ancho-233)/1000
                                2 x (tra1-xtra-90)/1000
                                2 x (m_alto-tra1-113-45)/1000
					PANELES
                                1 de m_ancho-215 x tra1-xtra-97
					OTROS INTERIORES
                                1 de m_ancho-215 x m_alto-tra1-113-45-7
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
					PERFIL 11
                            par1 x tra1-xtra-90
                            par1 x m_alto-tra1-113-45
					PERFIL 23
                            par1 x tra1-xtra-90
	                    par1 x m_alto-tra1-113-45
	
					PERFIL 8
                                8*(par1+1) x (m_ancho-233-97*par1)/(par1+1)
                                4*(par1+1) x tra1-xtra-90
                                4*(par1+1) x m_alto-tra1-113-45
					PARTE T
                                4*(par1+1) x (m_ancho-233-97*par1)/(par1+1)/1000
                                2*(par1+1) x (tra1-xtra-90)/1000
                                2*(par1+1) x (m_alto-tra1-113-45)/1000
					PARTE UVW
                                4*(par1+1) x (m_ancho-233-97*par1)/(par1+1)/1000
                                2*(par1+1) x (tra1-xtra-90)/1000
                                2*(par1+1) x (m_alto-tra1-113-45)/1000
					PANELES
                        (par1+1) de (m_ancho-215-97*par1)/(par1+1) x tra1-xtra-97
					OTROS INTERIORES
                        (par1+1) de (m_ancho-215-97*par1)/(par1+1) x m_alto-tra1-113-45-7
	
				FIN DESARME
		 FIN DESARME
	
	
		/* Tiene DOS travesanios */
                 DESARMAR SOLO SI tra1>0 .AND. tra2>0 
				PERFIL 11
                    2 x m_ancho-208
				PERFIL 23
                    2 x m_ancho-208
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
					PERFIL 8
                                12 x m_ancho-233
                                 4 x tra1-xtra-90
                                 4 x tra2-tra1-90
                                 4 x m_alto-tra2-113-45
					PARTE T
                                 6 x (m_ancho-233)/1000
                                 2 x (tra1-xtra-90)/1000
                                 2 x (tra2-tra1-90)/1000
                                 2 x (m_alto-tra2-113-45)/1000
					PARTE UVW
                                 6 x (m_ancho-233)/1000
                                 2 x (tra1-xtra-90)/1000
                                 2 x (tra2-tra1-90)/1000
                                 2 x (m_alto-tra2-113-45)/1000
					PANELES
                                1 de m_ancho-215 x tra1-xtra-97
					OTROS INTERIORES
                                1 de m_ancho-215 x tra2-tra1-97
                                1 de m_ancho-215 x m_alto-tra2-113-45-7
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
					PERFIL 11
                                 par1 x tra1-xtra-90
                                 par1 x tra2-tra1-90
                                 par1 x m_alto-tra2-113-45
					PERFIL 23
                                 par1 x tra1-xtra-90
                                 par1 x tra2-tra1-90
                                 par1 x m_alto-tra2-113-45
	
					PERFIL 8
                                12*(par1+1) x (m_ancho-233-97*par1)/(par1+1)
                                 4*(par1+1) x tra1-xtra-90
                                 4*(par1+1) x tra2-tra1-90
                                 4*(par1+1) x m_alto-tra2-113-45
					PARTE T
                                6*(par1+1) x (m_ancho-233-97*par1)/(par1+1)/1000
                                2*(par1+1) x (tra1-xtra-90)/1000
                                2*(par1+1) x (tra2-tra1-90)/1000
                                2*(par1+1) x (m_alto-tra2-113-45)/1000
					PARTE UVW
                                6*(par1+1) x (m_ancho-233-97*par1)/(par1+1)/1000
                                2*(par1+1) x (tra1-xtra-90)/1000
                                2*(par1+1) x (tra2-tra1-90)/1000
                                2*(par1+1) x (m_alto-tra2-113-45)/1000
                                        PANELES
                        (par1+1) de (m_ancho-215-97*par1)/(par1+1) x tra1-xtra-97
					OTROS INTERIORES
                        (par1+1) de (m_ancho-215-97*par1)/(par1+1) x tra2-tra1-97
                        (par1+1) de (m_ancho-215-97*par1)/(par1+1) x m_alto-tra2-113-45-7
	
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
					PERFIL 8
                    4 x m_ancho-233
						4 x m_alto-213
					PARTE T
                    2 x (m_ancho-233)/1000
	               2 x (m_alto-213)/1000
					PARTE UVW
                    2 x (m_ancho-233)/1000
	               2 x (m_alto-213)/1000
	
		 			DESARMAR SOLO SI tipo_rev=1
			        VIDRIOS
                        1 de m_ancho-215 x m_alto-213-7
	  		      FIN DESARME
				   DESARMAR SOLO SI tipo_rev=2 .OR. tipo_rev=3
			        CALCULOS
			            m_aux_ancho:=m_ancho
                        m_ancho:=m_aux_ancho-215
			            m_aux_alto:=m_alto
	                    m_alto:=m_alto-213-7
	                FIN CALCULOS
			        DESARMAR SOLO SI tipo_rev = 2
			            PRODUCTO REVET
			        FIN DESARME
			        DESARMAR SOLO SI tipo_rev = 3
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
					PERFIL 11
							  par1 x m_alto-213
					PERFIL 23
							  par1 x m_alto-213
					PERFIL 8
                         4*(par1+1) x (m_ancho-233-90*par1)/(par1+1)
								4*(par1+1) x m_alto-213
					PARTE T
                         2*(par1+1) x (m_ancho-233-90*par1)/(par1+1)/1000
								2*(par1+1) x (m_alto-213)/1000
					PARTE UVW
                                2*(par1+1) x (m_ancho-233-90*par1)/(par1+1)/1000
								2*(par1+1) x (m_alto-213)/1000
					VIDRIOS
                    par1+1 de m_ancho-215 x m_alto-213-7
				FIN DESARME
		 FIN DESARME
	
		/* Tiene un travesanios */
		 DESARMAR SOLO SI tra1>0 .AND. tra2=0
				PERFIL 11
                    1 x m_ancho-208
				PERFIL 23
                    1 x m_ancho-208
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
					PERFIL 8
                                8 x m_ancho-233
								4 x tra1-45-100
								4 x m_alto-tra1-45-113
					PARTE T
                                4 x (m_ancho-233)/1000
								2 x (tra1-45-100)/1000
								2 x (m_alto-tra1-45-113)/1000
					PARTE UVW
                                4 x (m_ancho-233)/1000
								2 x (tra1-45-100)/1000
								2 x (m_alto-tra1-45-113)/1000
	
					VIDRIOS
                              1 de m_ancho-215 x tra1-45-100-7
					PANELES
                              1 de m_ancho-215 x m_alto-tra1-45-113-7
	
				FIN DESARME
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
					PERFIL 11
							  par1 x tra1-45-100
							  par1 x m_alto-tra1-45-113
					PERFIL 23
							  par1 x tra1-45-100
							  par1 x m_alto-tra1-45-113
					PERFIL 8
                              8*(par1+1) x (m_ancho-233-115*par1)/(par1+1)
							  4*(par1+1) x tra1-45-100
							  4*(par1+1) x m_alto-tra1-45-113
					PARTE T
                              4*(par1+1) x (m_ancho-233-115*par1)/(par1+1)/1000
							  2*(par1+1) x (tra1-45-100)/1000
							  2*(par1+1) x (m_alto-tra1-45-113)/1000
					PARTE UVW
                              4*(par1+1) x (m_ancho-233-115*par1)/(par1+1)/1000
							  2*(par1+1) x (tra1-45-100)/1000
							  2*(par1+1) x (m_alto-tra1-45-113)/1000
					VIDRIOS
                        (par1+1) de (m_ancho-215-97*par1)/(par1+1) x tra1-45-100-7
					PANELES
                        (par1+1) de (m_ancho-215-97*par1)/(par1+1) x m_alto-tra1-45-113-7
				FIN DESARME
	
		 FIN DESARME
	
	
		/* Tiene dos travesanios */
		 DESARMAR SOLO SI tra1>0 .AND. tra2>0
				PERFIL 11
                    2 x m_ancho-208
				PERFIL 23
                    2 x m_ancho-208
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
					PERFIL 8
                                12 x m_ancho-233
								4 x tra1-45-100
								4 x tra2-tra1-90
								4 x m_alto-tra2-45-113
					PARTE T
                                6 x (m_ancho-233)/1000
								2 x (tra1-45-100)/1000
	                     2 x (tra2-tra1-90)/1000
								2 x (m_alto-tra2-45-113)/1000
					PARTE UVW
                                6 x (m_ancho-233)/1000
								2 x (tra1-45-100)/1000
	                     2 x (tra2-tra1-90)/1000
								2 x (m_alto-tra2-45-113)/1000
					VIDRIOS
                              1 de m_ancho-215 x tra1-45-100-7
					PANELES
                              1 de m_ancho-215 x tra2-tra1-90-7
					OTROS INTERIOES
                              1 de m_ancho-215 x m_alto-tra2-45-113-7
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
					/* tiene parantes centrados */
					PERFIL 11
							  par1 x tra1-45-100
							  par1 x tra2-tra1-90
							  par1 x m_alto-tra2-45-113
					PERFIL 23
							  par1 x tra1-45-100
							  par1 x tra2-tra1-90
							  par1 x m_alto-tra2-45-113
					PERFIL 8
                              12*(par1+1) x (m_ancho-233-115*par1)/(par1+1)
							  4*(par1+1) x tra1-45-100
							  4*(par1+1) x tra2-tra1-90
							  4*(par1+1) x m_alto-tra2-45-113
					PARTE T
                              6*(par1+1) x (m_ancho-233-115*par1)/(par1+1)/1000
							  2*(par1+1) x (tra1-45-100)/1000
							  2*(par1+1) x (tra2-tra1-90)/1000
							  2*(par1+1) x (m_alto-tra2-45-113)/1000
					PARTE UVW
                              6*(par1+1) x (m_ancho-233-115*par1)/(par1+1)/1000
							  2*(par1+1) x (tra1-45-100)/1000
							  2*(par1+1) x (tra2-tra1-90)/1000
							  2*(par1+1) x (m_alto-tra2-45-113)/1000
					VIDRIOS
                        (par1+1) de (m_ancho-215-97*par1)/(par1+1) x tra1-45-100-7
					PANELES
                        (par1+1) de (m_ancho-215-97*par1)/(par1+1) x tra2-tra1-90-7
					OTROS INTERIOES
                        (par1+1) de (m_ancho-215-97*par1)/(par1+1) x m_alto-tra2-45-113-7
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
	
	DESARMAR SOLO SI caja_p=1
	    PARTE CAJAP
	        1 x 1
	FIN DESARME
	
	
	/* Calculo la cantidad de travesanios */
	CALCULOS
                cant_t:=If(tra1!=0 .AND. tra2=0, 1, 0)
           cant_t:=If(tra1!=0 .AND. tra2!=0, 2, cant_t)
  /*         cant_t:=If(tra1!=0 .AND. tra2!=0 .AND. tra3!=0, 3, cant_t)
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
	   PERFIL 39
	      4 x m_alto-33
           PERFIL 41
              2 x m_alto-33
           PERFIL 42
              2 x m_alto-33

	   /* Zocalo y Cabezal - Hoja */
	   PERFIL 11
			4 x (m_ancho-375)/2
	
	/* Tiene travesaño principal*/
	DESARMAR SOLO SI xtra>0
	
	    /* Travesaño principal - Hoja */	
		PERFIL 11
			  2 x (m_ancho-375)/2
		PERFIL 23
			  2 x (m_ancho-375)/2
		/* Contravidrios */
		PERFIL 8
	        	8 x m_ancho-425/2
		      8 x xtra-45-100
		PARTE T
		        4 x (m_ancho-425)/2/1000
		        4 x (xtra-45-100)/1000
		PARTE UVW
                4 x (m_ancho-233)/1000
		        4 x (xtra-45-100)/1000
	
		DESARMAR SOLO SI tipo_rev=1
	        VIDRIOS
                    2 de (m_ancho-389)/2 x xtra-152
	    FIN DESARME
	    DESARMAR SOLO SI tipo_rev=2 .OR. tipo_rev=3
	        CALCULOS
	            m_aux_ancho:=m_ancho
                    m_ancho:=(m_aux_ancho-389)/2
	            m_aux_alto:=m_alto
	            m_alto:=xtra-152
	        FIN CALCULOS
	        DESARMAR SOLO SI tipo_rev = 2
	            PRODUCTO REVET
	            PRODUCTO REVET
	        FIN DESARME
	        DESARMAR SOLO SI tipo_rev = 3
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
					PERFIL 8
                            8 x (m_ancho-425)/2
                            8 x m_alto-xtra-45-113
					PARTE T
	                    4 x (m_ancho-425)/2/1000
                            4 x (m_alto-xtra-45-113)/1000
					PARTE UVW
	                    4 x (m_ancho-425)/2/1000
                            4 x (m_alto-xtra-45-113)/1000
					PANELES
                            2 de m_ancho-389/2 x m_alto-xtra-165
				FIN DESARME
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
					PERFIL 11
                            2*par1 x m_alto-xtra-45-113
					PERFIL 23
                            2*par1 x m_alto-xtra-45-113
					PERFIL 8
                            8*(par1+1) x ((m_ancho-425)/2-115*par1)/(par1+1)
                            8*(par1+1) x m_alto-xtra-45-113
					PARTE T
                            4*(par1+1) x ((m_ancho-425/2)-115*par1)/(par1+1)/1000
                            4*(par1+1) x (m_alto-xtra-45-113)/1000
					PARTE UVW
                            4*(par1+1) x ((m_ancho-425/2)-115*par1)/(par1+1)/1000
                            4*(par1+1) x (m_alto-xtra-45-113)/1000
					PANELES
                            2*(par1+1) de ((m_ancho-389/2)-97*par1)/(par1+1) x m_alto-xtra-165
	
				FIN DESARME
		 FIN DESARME
	
		/* Tiene UN travesanio */
		 DESARMAR SOLO SI tra1>0 .AND. tra2=0
				PERFIL 11
                    2 x m_ancho-208
				PERFIL 23
                    2 x m_ancho-208
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
					PERFIL 8
                   16 x m_ancho-425/2
                    8 x tra1-xtra-90
                    8 x m_alto-tra1-113-45
					PARTE T
                    8 x (m_ancho-425/2)/1000
                    4 x (tra1-xtra-90)/1000
                    4 x (m_alto-tra1-113-45)/1000
					PARTE UVW
                    8 x (m_ancho-425/2)/1000
                    4 x (tra1-xtra-90)/1000
                    4 x (m_alto-tra1-113-45)/1000
					PANELES
                    2 de (m_ancho-389)/2 x tra1-xtra-97
                                        OTROS INTERIORES
                    2 de (m_ancho-389)/2 x m_alto-tra1-113-45-7
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
					PERFIL 11
                            2*par1 x tra1-xtra-90
	                    2*par1 x m_alto-tra1-113-45
					PERFIL 23
                            2*par1 x tra1-xtra-90
	                    2*par1 x m_alto-tra1-113-45
	
					PERFIL 8
                           16*(par1+1) x ((m_ancho-425/2)-97*par1)/(par1+1)
                            8*(par1+1) x tra1-xtra-90
                            8*(par1+1) x m_alto-tra1-113-45
					PARTE T
                            8*(par1+1) x ((m_ancho-425/2)-97*par1)/(par1+1)/1000
                            4*(par1+1) x (tra1-xtra-90)/1000
                            4*(par1+1) x (m_alto-tra1-113-45)/1000
                                        PARTE UVW
                            8*(par1+1) x ((m_ancho-425/2)-97*par1)/(par1+1)/1000
                            4*(par1+1) x (tra1-xtra-90)/1000
                            4*(par1+1) x (m_alto-tra1-113-45)/1000
					PANELES
                            2*(par1+1) de ((m_ancho-389/2)-97*par1)/(par1+1) x tra1-xtra-97
					OTROS INTERIORES
                            2*(par1+1) de ((m_ancho-389/2)-97*par1)/(par1+1) x m_alto-tra1-113-45-7
	
				FIN DESARME
		 FIN DESARME
	
	
		/* Tiene DOS travesanios */
                 DESARMAR SOLO SI tra1>0 .AND. tra2>0 
				PERFIL 11
					4 x (m_ancho-375)/2
				PERFIL 23
					4 x (m_ancho-375)/2
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
					PERFIL 8
                            24 x (m_ancho-425)/2
                             8 x tra1-xtra-90
                             8 x tra2-tra1-90
                             8 x m_alto-tra2-113-45
                                        PARTE T
                            12 x (m_ancho-425)/2/1000
                             4 x (tra1-xtra-90)/1000
                             4 x (tra2-tra1-90)/1000
                             4 x (m_alto-tra2-113-45)/1000
					PARTE UVW
                            12 x (m_ancho-425)/1000
                             4 x (tra1-xtra-90)/1000
                             4 x (tra2-tra1-90)/1000
                             4 x (m_alto-tra2-113-45)/1000
					PANELES
                             2 de (m_ancho-389)/2 x tra1-xtra-97
					OTROS INTERIORES
                             2 de (m_ancho-389)/2 x tra2-tra1-97
                             2 de (m_ancho-389)/2 x m_alto-tra2-113-45-7
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
					PERFIL 11
                              2*par1 x tra1-xtra-90
                              2*par1 x tra2-tra1-90
                              2*par1 x m_alto-tra2-113-45
					PERFIL 23
                              2*par1 x tra1-xtra-90
                              2*par1 x tra2-tra1-90
                              2*par1 x m_alto-tra2-113-45
	
					PERFIL 8
                             24*(par1+1) x ((m_ancho-425)/2-97*par1)/(par1+1)
                              8*(par1+1) x tra1-xtra-90
                              8*(par1+1) x tra2-tra1-90
                              8*(par1+1) x m_alto-tra2-113-45
					PARTE T
                             12*(par1+1) x ((m_ancho-425)/2-97*par1)/(par1+1)/1000
                              4*(par1+1) x (tra1-xtra-90)/1000
                              4*(par1+1) x (tra2-tra1-90)/1000
                              4*(par1+1) x (m_alto-tra2-113-45)/1000
					PARTE UVW
                             12*(par1+1) x ((m_ancho-425)/2-97*par1)/(par1+1)/1000
                              4*(par1+1) x (tra1-xtra-90)/1000
                              4*(par1+1) x (tra2-tra1-90)/1000
                              4*(par1+1) x (m_alto-tra2-113-45)/1000
					PANELES
                              2*(par1+1) de ((m_ancho-389)/2-97*par1)/(par1+1) x tra1-xtra-97
					OTROS INTERIORES
                              2*(par1+1) de ((m_ancho-389)/2-97*par1)/(par1+1) x tra2-tra1-97
                              2*(par1+1) de ((m_ancho-389)2-97*par1)/(par1+1) x m_alto-tra2-113-45-7

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
					PERFIL 8
	            	8 x (m_ancho-425)/2
						8 x m_alto-213
					PARTE T
	            	4 x (m_ancho-425)/2/1000
	               4 x (m_alto-213)/1000
					PARTE UVW
	            	4 x (m_ancho-425)/2/1000
	               4 x (m_alto-213)/1000
	
		 			DESARMAR SOLO SI tipo_rev=1
			        VIDRIOS
	                    2 de (m_ancho-389)/2 x m_alto-213-7
	  		      FIN DESARME
				   DESARMAR SOLO SI tipo_rev=2 .OR. tipo_rev=3
			        CALCULOS
			            m_aux_ancho:=m_ancho
	                    m_ancho:=(m_aux_ancho-389)/2
			            m_aux_alto:=m_alto
	                    m_alto:=m_alto-213-7
	                FIN CALCULOS
			        DESARMAR SOLO SI tipo_rev = 2
			            PRODUCTO REVET
			            PRODUCTO REVET
			        FIN DESARME
			        DESARMAR SOLO SI tipo_rev = 3
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
					PERFIL 11
                             2*par1 x m_alto-213
					PERFIL 23
                             2*par1 x m_alto-213
					PERFIL 8
	                     8*(par1+1) x ((m_ancho-425)/2-90*par1)/(par1+1)
                             8*(par1+1) x m_alto-213
					PARTE T
	                     4*(par1+1) x ((m_ancho-425)/2-90*par1)/(par1+1)/1000
                             4*(par1+1) x (m_alto-213)/1000
					PARTE UVW
                             4*(par1+1) x ((m_ancho-425)/2-90*par1)/(par1+1)/1000
                             4*(par1+1) x (m_alto-213)/1000
					VIDRIOS
                             2*(par1+1) de (m_ancho-389)/2 x m_alto-213-7
				FIN DESARME
		 FIN DESARME
	
		/* Tiene un travesanios */
		 DESARMAR SOLO SI tra1>0 .AND. tra2=0
				PERFIL 11
					2 x (m_ancho-375)/2
				PERFIL 23
					1 x (m_ancho-375)/2
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
					PERFIL 8
                             16 x (m_ancho-425)/2
                              8 x tra1-45-100
                              8 x m_alto-tra1-45-113
					PARTE T
                              8 x (m_ancho-425)/2/1000
                              4 x (tra1-45-100)/1000
                              4 x (m_alto-tra1-45-113)/1000
					PARTE UVW
                              8 x (m_ancho-425)/2/1000
                              4 x (tra1-45-100)/1000
                              4 x (m_alto-tra1-45-113)/1000
	
					VIDRIOS
                              2 de (m_ancho-389)/2 x tra1-45-100-7
					PANELES
                              2 de (m_ancho-389)/2 x m_alto-tra1-45-113-7
	
				FIN DESARME
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
					PERFIL 11
                                2*par1 x tra1-45-100
                                2*par1 x m_alto-tra1-45-113
					PERFIL 23
                                2*par1 x tra1-45-100
                                2*par1 x m_alto-tra1-45-113
					PERFIL 8
                               16*(par1+1) x ((m_ancho-425)/2-115*par1)/(par1+1)
                                8*(par1+1) x tra1-45-100
                                8*(par1+1) x m_alto-tra1-45-113
					PARTE T
                                8*(par1+1) x ((m_ancho-425)/2-115*par1)/(par1+1)/1000
                                4*(par1+1) x (tra1-45-100)/1000
                                4*(par1+1) x (m_alto-tra1-45-113)/1000
					PARTE UVW
                                8*(par1+1) x ((m_ancho-425)/2-115*par1)/(par1+1)/1000
                                4*(par1+1) x (tra1-45-100)/1000
                                4*(par1+1) x (m_alto-tra1-45-113)/1000
					VIDRIOS
                                2*(par1+1) de ((m_ancho-389)/2-97*par1)/(par1+1) x tra1-45-100-7
                                        PANELES
                                2*(par1+1) de ((m_ancho-389)/2-97*par1)/(par1+1) x m_alto-tra1-45-113-7
				FIN DESARME
	
		 FIN DESARME
	
	
		/* Tiene dos travesanios */
		 DESARMAR SOLO SI tra1>0 .AND. tra2>0
				PERFIL 11
					2 x (m_ancho-375)/2
				PERFIL 23
					2 x (m_ancho-375)/2
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
					PERFIL 8
                                 24 x (m_ancho-425)/2
                                  8 x tra1-45-100
                                  8 x tra2-tra1-90
                                  8 x m_alto-tra2-45-113
					PARTE T
                                 12 x (m_ancho-425)/2/1000
                                  4 x (tra1-45-100)/1000
                                  4 x (tra2-tra1-90)/1000
                                  4 x (m_alto-tra2-45-113)/1000
					PARTE UVW
                                 12 x (m_ancho-425)/2/1000
                                  4 x (tra1-45-100)/1000
                                  4 x (tra2-tra1-90)/1000
                                  4 x (m_alto-tra2-45-113)/1000
					VIDRIOS
                                  2 de (m_ancho-389)/2 x tra1-45-100-7
                                        PANELES
                                  2 de (m_ancho-389)/2 x tra2-tra1-90-7
					OTROS INTERIOES
                                  2 de (m_ancho-389)/2 x m_alto-tra2-45-113-7
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
					/* tiene parantes centrados */
					PERFIL 11
                                   2*par1 x tra1-45-100
                                   2*par1 x tra2-tra1-90
                                   2*par1 x m_alto-tra2-45-113
					PERFIL 23
                                   2*par1 x tra1-45-100
                                   2*par1 x tra2-tra1-90
                                   2*par1 x m_alto-tra2-45-113
                                        PERFIL 8
                                  24*(par1+1) x ((m_ancho-425)/2-115*par1)/(par1+1)
                                   8*(par1+1) x tra1-45-100
                                   8*(par1+1) x tra2-tra1-90
                                   8*(par1+1) x m_alto-tra2-45-113
					PARTE T
                                  12*(par1+1) x (m_ancho-425)/2-115*par1)/(par1+1)/1000
                                   4*(par1+1) x (tra1-45-100)/1000
                                   4*(par1+1) x (tra2-tra1-90)/1000
                                   4*(par1+1) x (m_alto-tra2-45-113)/1000
                                        PARTE UVW
                                  12*(par1+1) x (m_ancho-425)/2-115*par1)/(par1+1)/1000
                                   4*(par1+1) x (tra1-45-100)/1000
                                   4*(par1+1) x (tra2-tra1-90)/1000
                                   4*(par1+1) x (m_alto-tra2-45-113)/1000
					VIDRIOS
                                   2*(par1+1) de ((m_ancho-389)/2-97*par1)/(par1+1) x tra1-45-100-7
					PANELES
                                   2*(par1+1) de ((m_ancho-389)/2-97*par1)/(par1+1) x tra2-tra1-90-7
					OTROS INTERIOES
                                   2*(par1+1) de ((m_ancho-389)/2-97*par1)/(par1+1) x m_alto-tra2-45-113-7
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
	
	DESARMAR SOLO SI caja_p=1
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
	   PERFIL 39
          6 x m_alto-33
           PERFIL 41
          3 x m_alto-33
           PERFIL 42
          3 x m_alto-33

	   /* Zocalo y Cabezal - Hoja */
	   PERFIL 11
            6 x (m_ancho-540)/3
	
	/* Tiene travesaño principal*/
	DESARMAR SOLO SI xtra>0
	
	    /* Travesaño principal - Hoja */	
		PERFIL 11
           3 x (m_ancho-540)/3
		PERFIL 23
           3 x (m_ancho-540)/3
		/* Contravidrios */
		PERFIL 8
              12 x (m_ancho-615)/3
              12 x xtra-45-100
		PARTE T
                6 x (m_ancho-615)/3/1000
                6 x (m_ancho-615)/3/1000
		PARTE UVW
                6 x (m_ancho-615)/3/1000
                6 x (m_ancho-615)/3/1000
	
		DESARMAR SOLO SI tipo_rev=1
	        VIDRIOS
                3 de (m_ancho-561)/3 x xtra-152
        FIN DESARME
	    DESARMAR SOLO SI tipo_rev=2 .OR. tipo_rev=3
	        CALCULOS
	            m_aux_ancho:=m_ancho
                m_ancho:=(m_aux_ancho-561)/3
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
					PERFIL 8
                        12 x (m_ancho-615)/3
                        12 x m_alto-xtra-45-113
					PARTE T
                        6 x (m_ancho-615)/3/1000
                        6 x (m_alto-xtra-45-113)/1000
					PARTE UVW
                        6 x (m_ancho-615)/3/1000
                        6 x (m_alto-xtra-45-113)/1000
					PANELES
                          3 de (m_ancho-561)/3 x m_alto-xtra-165
				FIN DESARME
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
					PERFIL 11
                           3*par1 x m_alto-xtra-45-113
					PERFIL 23
                           3*par1 x m_alto-xtra-45-113
					PERFIL 8
                             12*(par1+1) x ((m_ancho-615)/3-115*par1)/(par1+1)
                             12*(par1+1) x m_alto-xtra-45-113
					PARTE T
                             6*(par1+1) x ((m_ancho-615)/3-115*par1)/(par1+1)/1000
                             6*(par1+1) x (m_alto-xtra-45-113)/1000
					PARTE UVW
                             6*(par1+1) x ((m_ancho-615)/3-115*par1)/(par1+1)/1000
                             6*(par1+1) x (m_alto-xtra-45-113)/1000
					PANELES
                             3*(par1+1) de ((m_ancho-561)/3-97*par1)/(par1+1) x m_alto-xtra-165
	
				FIN DESARME
		 FIN DESARME
	
		/* Tiene UN travesanio */
		 DESARMAR SOLO SI tra1>0 .AND. tra2=0
				PERFIL 11
                    3 x m_ancho-208
				PERFIL 23
                    3 x m_ancho-208
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
					PERFIL 8
                                24 x (m_ancho-615)/3
                                12 x tra1-xtra-90
                                12 x m_alto-tra1-113-45
					PARTE T
                               12 x (m_ancho-615)/3/1000
                                6 x (tra1-xtra-90)/1000
                                6 x (m_alto-tra1-113-45)/1000
					PARTE UVW
                               12 x (m_ancho-615)/3/1000
                                6 x (tra1-xtra-90)/1000
                                6 x (m_alto-tra1-113-45)/1000
					PANELES
                                3 de (m_ancho-561)/3 x tra1-xtra-97
					OTROS INTERIORES
                                3 de (m_ancho-561)/3 x m_alto-tra1-113-45-7
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
					PERFIL 11
                        3*par1 x tra1-xtra-90
                        3*par1 x m_alto-tra1-113-45
					PERFIL 23
                        3*par1 x tra1-xtra-90
                        3*par1 x m_alto-tra1-113-45
	
					PERFIL 8
                        24*(par1+1) x ((m_ancho-615)/3-97*par1)/(par1+1)
                        12*(par1+1) x tra1-xtra-90
                        12*(par1+1) x m_alto-tra1-113-45
					PARTE T
                        12*(par1+1) x ((m_ancho-615)/3-97*par1)/(par1+1)/1000
                         6*(par1+1) x (tra1-xtra-90)/1000
                         6*(par1+1) x (m_alto-tra1-113-45)/1000
					PARTE UVW
                        12*(par1+1) x ((m_ancho-615)/3-97*par1)/(par1+1)/1000
                         6*(par1+1) x (tra1-xtra-90)/1000
                         6*(par1+1) x (m_alto-tra1-113-45)/1000
					PANELES
                        3*(par1+1) de ((m_ancho-561)/3-97*par1)/(par1+1) x tra1-xtra-97
					OTROS INTERIORES
                        3*(par1+1) de ((m_ancho-561)/3-97*par1)/(par1+1) x m_alto-tra1-113-45-7
	
				FIN DESARME
		 FIN DESARME
	
	
		/* Tiene DOS travesanios */
                 DESARMAR SOLO SI tra1>0 .AND. tra2>0 
				PERFIL 11
                    6 x (m_ancho-540)/3
				PERFIL 23
                    6 x (m_ancho-540)/3
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
					PERFIL 8
                                36 x (m_ancho-615)/3
                                 12 x tra1-xtra-90
                                 12 x tra2-tra1-90
                                 12 x m_alto-tra2-113-45
					PARTE T
                                18 x (m_ancho-615)/3/1000
                                 6 x (tra1-xtra-90)/1000
                                 6 x (tra2-tra1-90)/1000
                                 6 x (m_alto-tra2-113-45)/1000
					PARTE UVW
                                18 x (m_ancho-615)/3/1000
                                 6 x (tra1-xtra-90)/1000
                                 6 x (tra2-tra1-90)/1000
                                 6 x (m_alto-tra2-113-45)/1000
					PANELES
                              3 de (m_ancho-561)/3 x tra1-xtra-97
					OTROS INTERIORES
                              3 de (m_ancho-561)/3 x tra2-tra1-97
                              3 de (m_ancho-561)/3 x m_alto-tra2-113-45-7
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
					PERFIL 11
                              3*par1 x tra1-xtra-90
                              3*par1 x tra2-tra1-90
                              3*par1 x m_alto-tra2-113-45
					PERFIL 23
                              3*par1 x tra1-xtra-90
                              3*par1 x tra2-tra1-90
                              3*par1 x m_alto-tra2-113-45
	
					PERFIL 8
                                36*(par1+1) x ((m_ancho-615)/3-97*par1)/(par1+1)
                                12*(par1+1) x tra1-xtra-90
                                12*(par1+1) x tra2-tra1-90
                                12*(par1+1) x m_alto-tra2-113-45
					PARTE T
                               18*(par1+1) x ((m_ancho-615)/3-97*par1)/(par1+1)/1000
                                6*(par1+1) x (tra1-xtra-90)/1000
                                6*(par1+1) x (tra2-tra1-90)/1000
                                6*(par1+1) x (m_alto-tra2-113-45)/1000
					PARTE UVW
                               18*(par1+1) x ((m_ancho-615)/3-97*par1)/(par1+1)/1000
                                6*(par1+1) x (tra1-xtra-90)/1000
                                6*(par1+1) x (tra2-tra1-90)/1000
                                6*(par1+1) x (m_alto-tra2-113-45)/1000
					PANELES
                        3*(par1+1) de ((m_ancho-561)/3-97*par1)/(par1+1) x tra1-xtra-97
					OTROS INTERIORES
                        3*(par1+1) de ((m_ancho-561)/3-97*par1)/(par1+1) x tra2-tra1-97
                        3*(par1+1) de ((m_ancho-561)3-97*par1)/(par1+1) x m_alto-tra2-113-45-7
	
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
					PERFIL 8
                    12 x (m_ancho-615)/3
                    12 x m_alto-213
					PARTE T
                    6 x (m_ancho-615)/3/1000
                    6 x (m_alto-213)/1000
					PARTE UVW
                    6 x (m_ancho-615)/3/1000
                    6 x (m_alto-213)/1000
	
		 			DESARMAR SOLO SI tipo_rev=1
			        VIDRIOS
                        3 de (m_ancho-561)/3 x m_alto-213-7
	  		      FIN DESARME
				   DESARMAR SOLO SI tipo_rev=2 .OR. tipo_rev=3
			        CALCULOS
			            m_aux_ancho:=m_ancho
                        m_ancho:=(m_aux_ancho-561)/3
			            m_aux_alto:=m_alto
	                    m_alto:=m_alto-213-7
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
					PERFIL 11
                              3*par1 x m_alto-213
					PERFIL 23
                              3*par1 x m_alto-213
					PERFIL 8
                         12*(par1+1) x ((m_ancho-615)/3-90*par1)/(par1+1)
                         12*(par1+1) x m_alto-213
					PARTE T
                         6*(par1+1) x ((m_ancho-615)/3-90*par1)/(par1+1)/1000
                         6*(par1+1) x (m_alto-213)/1000
					PARTE UVW
                         6*(par1+1) x ((m_ancho-615)/3-90*par1)/(par1+1)/1000
                         6*(par1+1) x (m_alto-213)/1000
					VIDRIOS
                   3(par1+1) de (m_ancho-561)/3 x m_alto-213-7
				FIN DESARME
		 FIN DESARME
	
		/* Tiene un travesanios */
		 DESARMAR SOLO SI tra1>0 .AND. tra2=0
				PERFIL 11
                  3 x (m_ancho-375)/2
				PERFIL 23
                   3 x (m_ancho-375)/2
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
					PERFIL 8
                               24 x (m_ancho-615)/3
                               12 x tra1-45-100
                               12 x m_alto-tra1-45-113
					PARTE T
                               12 x (m_ancho-615)/3/1000
                                6 x (tra1-45-100)/1000
                                6 x (m_alto-tra1-45-113)/1000
					PARTE UVW
                               12 x (m_ancho-615)/3/1000
                                6 x (tra1-45-100)/1000
                                6 x (m_alto-tra1-45-113)/1000

					VIDRIOS
                              3 de (m_ancho-561)/3 x tra1-45-100-7
					PANELES
                              3 de (m_ancho-561)/3 x m_alto-tra1-45-113-7
	
				FIN DESARME
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
					PERFIL 11
                              3*par1 x tra1-45-100
                              3*par1 x m_alto-tra1-45-113
					PERFIL 23
                              3*par1 x tra1-45-100
                              3*par1 x m_alto-tra1-45-113
					PERFIL 8
                              24*(par1+1) x ((m_ancho-615)/3-115*par1)/(par1+1)
                              12*(par1+1) x tra1-45-100
                              12*(par1+1) x m_alto-tra1-45-113
					PARTE T
                              24*(par1+1) x ((m_ancho-615)/3-115*par1)/(par1+1)
                              12*(par1+1) x tra1-45-100
                              12*(par1+1) x m_alto-tra1-45-113
					PARTE UVW
                              12*(par1+1) x ((m_ancho-615)/3-115*par1)/(par1+1)/1000
                               6*(par1+1) x (tra1-45-100)/1000
                               6*(par1+1) x (m_alto-tra1-45-113)/1000
					VIDRIOS
                        3*(par1+1) de ((m_ancho-561)/3-97*par1)/(par1+1) x tra1-45-100-7
					PANELES
                        3*(par1+1) de ((m_ancho-561)/3-97*par1)/(par1+1) x m_alto-tra1-45-113-7
				FIN DESARME
	
		 FIN DESARME
	
	
		/* Tiene dos travesanios */
		 DESARMAR SOLO SI tra1>0 .AND. tra2>0
				PERFIL 11
                    3 x (m_ancho-540)/3
				PERFIL 23
                    3 x (m_ancho-540)/3
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
					PERFIL 8
                            36 x (m_ancho-615)/3
                            12 x tra1-45-100
                            12 x tra2-tra1-90
                            12 x m_alto-tra2-45-113
					PARTE T
                            18 x (m_ancho-615)/3/1000
                             6 x (tra1-45-100)/1000
                             6 x (tra2-tra1-90)/1000
                             6 x (m_alto-tra2-45-113)/1000
					PARTE UVW
                            18 x (m_ancho-615)/3/1000
                             6 x (tra1-45-100)/1000
                             6 x (tra2-tra1-90)/1000
                             6 x (m_alto-tra2-45-113)/1000
					VIDRIOS
                             3 de (m_ancho-561)/3 x tra1-45-100-7
					PANELES
                              3 de (m_ancho-561)/3 x tra2-tra1-90-7
					OTROS INTERIOES
                              3 de (m_ancho-561)/3 x m_alto-tra2-45-113-7
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
					/* tiene parantes centrados */
					PERFIL 11
                              3*par1 x tra1-45-100
                              3*par1 x tra2-tra1-90
                              3*par1 x m_alto-tra2-45-113
					PERFIL 23
                              3*par1 x tra1-45-100
                              3*par1 x tra2-tra1-90
                              3*par1 x m_alto-tra2-45-113
					PERFIL 8
                             36*(par1+1) x ((m_ancho-615)/3-115*par1)/(par1+1)
                             12*(par1+1) x tra1-45-100
                             12*(par1+1) x tra2-tra1-90
                             12*(par1+1) x m_alto-tra2-45-113
					PARTE T
                             18*(par1+1) x (m_ancho-615)/3-115*par1)/(par1+1)/1000
                              6*(par1+1) x (tra1-45-100)/1000
                              6*(par1+1) x (tra2-tra1-90)/1000
                              6*(par1+1) x (m_alto-tra2-45-113)/1000
					PARTE UVW
                             18*(par1+1) x (m_ancho-615)/3-115*par1)/(par1+1)/1000
                              6*(par1+1) x (tra1-45-100)/1000
                              6*(par1+1) x (tra2-tra1-90)/1000
                              6*(par1+1) x (m_alto-tra2-45-113)/1000
					VIDRIOS
                        3*(par1+1) de ((m_ancho-561)/3-97*par1)/(par1+1) x tra1-45-100-7
					PANELES
                        3*(par1+1) de ((m_ancho-561)/3-97*par1)/(par1+1) x tra2-tra1-90-7
					OTROS INTERIOES
                        3*(par1+1) de ((m_ancho-561)/3-97*par1)/(par1+1) x m_alto-tra2-45-113-7
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
     /*     cant_t:=If(tra1!=0 .AND. tra2!=0 .AND. tra3!=0, 3, cant_t)
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




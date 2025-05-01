/* PUERTA DE REBATIR EKONAL DE 32mm. CON TRAVIESAS VARIABLES Y PARANTES CENTRADOS*/

/* xtra = posicion de la traviesa principal.
/* tra1 = Posicion del primer travesaño.
/* tra2 = Posicion del 2do travesaño.
/* par1 = cantidad de parantes centrados respecto al xtra.
/* d_vid = descuento del vidrio segun el tipo de travesa¤o que se utilice.
/* j_desc = descuento desde el xtra al tra1.
/* e_desc = descuento segun que tipo de travesa¤o se utilice.

/* El revestimiento automatico solo funciona cuando hay un xtra!!!!
/* y va desde el xtra para abajo

/* e_desc = espesor del travesa¤o o parante
/* d_vid = espesor del travesa¤o o parante con descuento del vidrio incluido*/

        CALCULOS
    e_desc:=if(tipo_patr=1,48,25)
    d_vid:=if(tipo_patr=1,55,32)
    j_desc:=if(tipo_patr=1,24,12.5)
	FIN CALCULOS

/* Marco */
SEGUN marco PERFIL 6769,6772
    CORTES A 45:
       1 x m_ancho
    CORTES A 90 Y 45:        
       2 x m_alto

/* si hoja_90 = 1, la hoja se corta a recto, caso contrario
/* se corta a 45 grados */
/* puerta de una hoja */
DESARMAR SOLO SI n_hojas = 1

        DESARMAR SOLO SI hoja_90=1
       CORTES A RECTO:
	/* Parantes - Hoja */
         PERFIL 6770
            2 x m_alto-24
	/* Zocalo y Cabezal - Hoja */
         PERFIL 6557
            2 x m_ancho-174
        FIN DESARME

        DESARMAR SOLO SI hoja_90=0
       CORTES A 45:
	/* Parantes - Hoja */
         PERFIL 6770
            2 x m_alto-24
	/* Zocalo y Cabezal - Hoja */
         PERFIL 6770
            2 x m_ancho-55
         PARTE E74
            1 x 4
         PARTE D
            1 x 16
        FIN DESARME

	/* Tiene travesaño principal*/
	DESARMAR SOLO SI xtra>0
	
	    /* Travesaño principal - Hoja */	
        PERFIL 6559
              1 x m_ancho-174
		/* Contravidrios */
        SEGUN contravid PERFIL 78,79,8
                2 x m_ancho-199
                2 x xtra-24-63
        PARTE T
                2 x (m_ancho-199)/1000
                2 x (xtra-24-63)/1000
		PARTE UVW
                2 x (m_ancho-199)/1000
                2 x (xtra-24-63)/1000
		DESARMAR SOLO SI tipo_rev=1
	        VIDRIOS
                1 de m_ancho-181 x xtra-24-63-7
                FIN DESARME
	        DESARMAR SOLO SI tipo_rev = 2
                    PRODUCTO REVET , 1 de m_ancho-181 x xtra-24-63-7
	        FIN DESARME
	        DESARMAR SOLO SI tipo_rev = 3
                    PRODUCTO REV688, 1 de m_ancho-181 x xtra-24-63-7
	        FIN DESARME
	
		/* No tiene travesanios */
                DESARMAR SOLO SI tra2=0
                        DESARMAR SOLO SI tra1=0
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 78,79,8
                        2 x m_ancho-199
                        2 x m_alto-xtra-24-88
                    PARTE T
                        2 x (m_ancho-199)/1000
                        2 x (m_alto-xtra-24-88)/1000
					PARTE UVW
                        2 x (m_ancho-199)/1000
                        2 x (m_alto-xtra-24-88)/1000
					PANELES
                          1 de m_ancho-181 x m_alto-xtra-24-88-7
				FIN DESARME
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 6559,6560
                              par1 x m_alto-xtra-24-88
                    SEGUN contravid PERFIL 78,79,8
                             2*(par1+1) x (m_ancho-199-(e_desc+25)*par1)/(par1+1)
                             2*(par1+1) x m_alto-xtra-24-88
					PARTE T
                             2*(par1+1) x (m_ancho-199-e_desc*par1)/(par1+1)/1000
                             2*(par1+1) x (m_alto-xtra-24-88)/1000
					PARTE UVW
                             2*(par1+1) x (m_ancho-199-e_desc*par1)/(par1+1)/1000
                             2*(par1+1) x (m_alto-xtra-24-88)/1000
					PANELES
                             par1+1 de (m_ancho-181-d_vid*par1)/(par1+1) x m_alto-xtra-24-88-7
	
				FIN DESARME
                        FIN DESARME
	
		/* Tiene UN travesanio */
                        DESARMAR SOLO SI tra1>0 
                SEGUN tipo_patr PERFIL 6559,6560
                    1 x m_ancho-174
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 78,79,8
                                4 x m_ancho-199
                                2 x tra1-xtra-24-j_desc
                                2 x m_alto-tra1-j_desc-88
                   PARTE T
                                4 x (m_ancho-199)/1000
                                2 x (tra1-xtra-24-j_desc)/1000
                                2 x (m_alto-tra1-88-j_desc)/1000
					PARTE UVW
                                4 x (m_ancho-199)/1000
                                2 x (tra1-xtra-24-j_desc)/1000
                                2 x (m_alto-tra1-88-j_desc)/1000
					PANELES
                                1 de m_ancho-181 x tra1-24-xtra-j_desc-7
					OTROS INTERIORES
                                1 de m_ancho-181 x m_alto-tra1-88-j_desc-7
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 6559,6560
                              par1 x tra1-xtra-24-j_desc
                              par1 x m_alto-tra1-88-j_desc
                    SEGUN contravid PERFIL 78,79,8
                        4*(par1+1) x (m_ancho-199-par1*(e_desc+25))/(par1+1)
                        2*(par1+1) x tra1-xtra-24-j_desc
                        2*(par1+1) x m_alto-tra1-88-j_desc
					PARTE T
                        4*(par1+1) x (m_ancho-199-e_desc*par1)/(par1+1)/1000
                        2*(par1+1) x (tra1-xtra-24-j_desc)/1000
                        2*(par1+1) x (m_alto-tra1-88-j_desc)/1000
					PARTE UVW
                        4*(par1+1) x (m_ancho-199-e_desc*par1)/(par1+1)/1000
                        2*(par1+1) x (tra1-xtra-24-j_desc)/1000
                        2*(par1+1) x (m_alto-tra1-88-j_desc)/1000
					PANELES
                        (par1+1) de (m_ancho-181-d_vid*par1)/(par1+1) x tra1-xtra-24-j_desc-7
					OTROS INTERIORES
                        (par1+1) de (m_ancho-181-d_vid*par1)/(par1+1) x m_alto-tra1-88-j_desc-7
	
				FIN DESARME
                        FIN DESARME
                FIN DESARME
	
		/* Tiene DOS travesanios */
                DESARMAR SOLO SI tra2>0
               SEGUN tipo_patr PERFIL 6559,6560
                    2 x m_ancho-174
	
                        DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 78,79,8
                                6 x m_ancho-199
                                2 x tra1-xtra-24-j_desc
                                2 x tra2-tra1-e_desc
                                2 x m_alto-tra2-88-j_desc
					PARTE T
                                6 x (m_ancho-199)/1000
                                2 x (tra1-xtra-66)/1000
                                2 x (tra2-tra1-e_desc)/1000
                                2 x (m_alto-tra2-88-24)/1000
					PARTE UVW
                                6 x (m_ancho-199)/1000
                                2 x (tra1-xtra-66)/1000
                                2 x (tra2-tra1-e_desc)/1000
                                2 x (m_alto-tra2-88-24)/1000
					PANELES
                                1 de m_ancho-181 x tra1-xtra-24-j_desc-7
					OTROS INTERIORES
                                1 de m_ancho-181 x tra2-tra1-d_vid
                                1 de m_ancho-181 x m_alto-tra2-88-j_desc-7
	
                        FIN DESARME
	
                        DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 6559,6560
                              par1 x tra1-xtra-24-j_desc
                              par1 x tra2-tra1-e_desc
                              par1 x m_alto-tra2-88-j_desc
	
                    SEGUN contravid PERFIL 78,79,8
                                6*(par1+1) x (m_ancho-199-par1*(e_desc+25))/(par1+1)
                                2*(par1+1) x tra1-xtra-24-j_desc
                                2*(par1+1) x tra2-tra1-e_desc
                                2*(par1+1) x m_alto-tra2-88-j_desc
                    PARTE T
                                6*(par1+1) x (m_ancho-199-e_desc*par1)/(par1+1)/1000
                                2*(par1+1) x (tra1-xtra-66)/1000
                                2*(par1+1) x (tra2-tra1-e_desc)/1000
                                2*(par1+1) x (m_alto-tra2-88-24)/1000
					PARTE UVW
                                6*(par1+1) x (m_ancho-199-e_desc*par1)/(par1+1)/1000
                                2*(par1+1) x (tra1-xtra-66)/1000
                                2*(par1+1) x (tra2-tra1-e_desc)/1000
                                2*(par1+1) x (m_alto-tra2-88-24)/1000
					PANELES
                        (par1+1) de (m_ancho-181-d_vid*par1)/(par1+1) x tra1-xtra-24-j_desc-7
					OTROS INTERIORES
                        (par1+1) de (m_ancho-181-d_vid*par1)/(par1+1) x tra2-tra1-d_vid
                        (par1+1) de (m_ancho-181-d_vid*par1)/(par1+1) x m_alto-tra2-88-j_desc-7
	
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
                    SEGUN contravid PERFIL 78,79,8
                    2 x m_ancho-199
                    2 x m_alto-187
					PARTE T
                    2 x (m_ancho-199)/1000
                    2 x (m_alto-187)/1000
					PARTE UVW
                    2 x (m_ancho-199)/1000
                    2 x (m_alto-187)/1000
	
                                DESARMAR SOLO SI tipo_rev=1
			        VIDRIOS
                        1 de m_ancho-181 x m_alto-187-7
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 2
                                    PRODUCTO REVET , 1 de m_ancho-181 x m_alto-187-7
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                                    PRODUCTO REV688, 1 de m_ancho-181 x m_alto-187-7
                                FIN DESARME
	
                        FIN DESARME
	
                        DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN SEGUN tipo_patr PERFIL 6559,6560,6560
                              par1 x m_alto-187
                    SEGUN contravid PERFIL 78,79,8
                         2*(par1+1) x (m_ancho-199-(e_desc+25)*par1)/(par1+1)
                                4*(par1+1) x m_alto-187
					PARTE T
                         2*(par1+1) x (m_ancho-199-e_desc*par1)/(par1+1)/1000
                                2*(par1+1) x (m_alto-187)/1000
					PARTE UVW
                                2*(par1+1) x (m_ancho-199-e_desc*par1)/(par1+1)/1000
                                2*(par1+1) x (m_alto-187)/1000
					VIDRIOS
                    par1+1 de (m_ancho-181-d_vid*par1)/(par1+1) x m_alto-187-7
                        FIN DESARME
                FIN DESARME
	
		/* Tiene un travesanios */
                DESARMAR SOLO SI tra2=0
                        DESARMAR SOLO SI tra1>0 
                SEGUN tipo_patr PERFIL 6559,6560
                    1 x m_ancho-174
	
                                DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 78,79,8
                                4 x m_ancho-199
                                2 x tra1-j_Desc-63
                                2 x m_alto-tra1-j_desc-88
					PARTE T
                                4 x (m_ancho-199)/1000
                                2 x (tra1-j_desc-63)/1000
                                2 x (m_alto-tra1-j_desc-88)/1000
					PARTE UVW
                                4 x (m_ancho-199)/1000
                                2 x (tra1-j_desc-63)/1000
                                2 x (m_alto-tra1-j_desc-88)/1000
					VIDRIOS
                              1 de m_ancho-181 x tra1-j_desc-63-7
					PANELES
                              1 de m_ancho-181 x m_alto-tra1-j_desc-88-7
	
                                FIN DESARME
                                DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 6559,6560
                              par1 x tra1-j_desc-63
                              par1 x m_alto-tra1-j_desc-88
                    SEGUN contravid PERFIL 78,79,8
                              8*(par1+1) x (m_ancho-199-(e_desc+25)*par1)/(par1+1)
                              4*(par1+1) x tra1-j_desc-63
                              4*(par1+1) x m_alto-tra1-j_desc-88
					PARTE T
                              4*(par1+1) x (m_ancho-199-(e_desc+25)*par1)/(par1+1)/1000
                              2*(par1+1) x (tra1-j_desc-63)/1000
                              2*(par1+1) x (m_alto-tra133-88)/1000
					PARTE UVW
                              4*(par1+1) x (m_ancho-199-e_desc*par1)/(par1+1)/1000
                              2*(par1+1) x (tra1-j_desc-63)/1000
                              2*(par1+1) x (m_alto-tra133-88)/1000
					VIDRIOS
                        (par1+1) de (m_ancho-181-d_vid*par1)/(par1+1) x tra1-j_desc-63-7
					PANELES
                        (par1+1) de (m_ancho-181-d_vid*par1)/(par1+1) x m_alto-tra133-88-7
                                FIN DESARME
                        FIN DESARME
                FIN DESARME
	
	
		/* Tiene dos travesanios */
                DESARMAR SOLO SI tra2>0
                SEGUN tipo_patr PERFIL 6559,6560
                    2 x m_ancho-174
	
                        DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 78,79,8
                                6 x m_ancho-199
                                2 x tra1-j_desc-63
                                2 x tra2-tra1-e_desc
                                2 x m_alto-tra2-j_desc-88
					PARTE T
                                6 x (m_ancho-199)/1000
                                2 x (tra1-j_desc-63)/1000
                                2 x (tra2-tra1-e_desc)/1000
                                2 x (m_alto-tra2-j_desc-88)/1000
					PARTE UVW
                                6 x (m_ancho-199)/1000
                                2 x (tra1-j_desc-63)/1000
                                2 x (tra2-tra1-e_desc)/1000
                                2 x (m_alto-tra2-j_desc-88)/1000
					VIDRIOS
                              1 de m_ancho-181 x tra1-j_desc-63-7
					PANELES
                              1 de m_ancho-181 x tra2-tra1-d_vid
                                    OTROS INTERIORES
                              1 de m_ancho-181 x m_alto-tra2-j_desc-88-7
	
                        FIN DESARME
	
                        DESARMAR SOLO SI par1>0
					/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 6559,6560
                              par1 x tra1-j_desc-63
                              par1 x tra2-tra1-e_desc
                              par1 x m_alto-tra2-j_desc-88
                    SEGUN contravid PERFIL 78,79,8
                              6*(par1+1) x (m_ancho-199-(e_desc+25)*par1)/(par1+1)
                              2*(par1+1) x tra1-j_desc-63
                              2*(par1+1) x tra2-tra1-e_desc
                              2*(par1+1) x m_alto-tra2-j_desc-88
					PARTE T
                              6*(par1+1) x (m_ancho-199-(e_desc+25)*par1)/(par1+1)/1000
                              2*(par1+1) x (tra1-j_desc-63)/1000
                              2*(par1+1) x (tra2-tra1-e_desc)/1000
                              2*(par1+1) x (m_alto-tra2-j_desc-88)/1000
					PARTE UVW
                              6*(par1+1) x (m_ancho-199-(e_desc+25)*par1)/(par1+1)/1000
                              2*(par1+1) x (tra1-j_desc-100)/1000
                              2*(par1+1) x (tra2-tra1-e_desc)/1000
                              2*(par1+1) x (m_alto-tra2-j_desc-88)/1000
					VIDRIOS
                        (par1+1) de (m_ancho-181-d_vid*par1)/(par1+1) x tra1-j_desc-63-7
					PANELES
                        (par1+1) de (m_ancho-181-d_vid*par1)/(par1+1) x tra2-tra1-d_vid
					OTROS INTERIOES
                        (par1+1) de (m_ancho-181-d_vid*par1)/(par1+1) x m_alto-tra2-j_desc-88-7
                        FIN DESARME
                FIN DESARME
        FIN DESARME
	
	
	/* Accesorios */
        DESARMAR SOLO SI marco=1
        PARTE A
	 1 x 2
        FIN DESARME
        DESARMAR SOLO SI marco=2
        PARTE C
	 1 x 2
        FIN DESARME

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
            SEGUN manijon PARTE nada,DOR375,MANIJU,MANIJO,MANIJU
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
/* si hoja_90 = 1, la hoja se corta a recto, caso contrario
/* se corta a 45 grados */
/* puerta de una hoja */

        DESARMAR SOLO SI hoja_90=1
       CORTES A RECTO:
	/* Parantes - Hoja */
         PERFIL 6770
            4 x m_alto-24
	/* Zocalo y Cabezal - Hoja */
         PERFIL 6557
            4 x m_ancho/2-150
        FIN DESARME

        DESARMAR SOLO SI hoja_90=0
       CORTES A 45:
	/* Parantes - Hoja */
         PERFIL 6770
            4 x m_alto-24
	/* Zocalo y Cabezal - Hoja */
         PERFIL 6770
            4 x m_ancho/2-55
         PARTE E74
            2 x 4
         PARTE D
            2 x 16
        FIN DESARME
        PERFIL 6771
		1 x m_alto-24 
	/* Tiene travesaño principal*/
        DESARMAR SOLO SI xtra>0
	
	    /* Travesaño principal - Hoja */	
        PERFIL 6559
            2 x m_ancho/2-145
		/* Contravidrios */
        SEGUN contravid PERFIL 78,79,8
            4 x m_ancho/2-170
            4 x xtra-24-63
		PARTE T
            4 x (m_ancho/2-170)/1000
            4 x (xtra-24-63)/1000
		PARTE UVW
            4 x (m_ancho/2-170)/1000
            4 x (xtra-24-63)/1000
                DESARMAR SOLO SI tipo_rev=1
	        VIDRIOS
                2 de m_ancho/2-152 x xtra-24-63-7
                FIN DESARME
                DESARMAR SOLO SI tipo_rev = 2
                    PRODUCTO REVET , 2 de m_ancho/2-152 x xtra-24-63-7
                FIN DESARME
                DESARMAR SOLO SI tipo_rev = 3
                    PRODUCTO REV688, 2 de m_ancho/2-152 x xtra-24-63-7
                FIN DESARME
	
		/* No tiene travesanios */
                DESARMAR SOLO SI tra1=0
                        DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 78,79,8
                        4 x m_ancho/2-170
                        4 x m_alto-xtra-j_desc-88
					PARTE T
                        4 x (m_ancho/2-170)/1000
                        4 x (m_alto-xtra-j_desc-88)/1000
					PARTE UVW
                        4 x (m_ancho/2-170)/1000
                        4 x (m_alto-xtra-j_desc-88)/1000
					PANELES
                        2 de m_ancho/2-152 x m_alto-xtra-j_desc-88-7
                        FIN DESARME
                        DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 6559,6560
                        2*par1 x m_alto-xtra-j_desc-88
                    SEGUN contravid PERFIL 78,79,8
                        4*(par1+1) x (m_ancho/2-170-par1*(e_desc+25))/(par1+1)
                        4*(par1+1) x m_alto-xtra-j_desc-88
					PARTE T
                        4*(par1+1) x (m_ancho/2-170-par1*(e_desc+25))/(par1+1)/1000
                        4*(par1+1) x (m_alto-xtra-j_desc-88)/1000
					PARTE UVW
                        4*(par1+1) x (m_ancho/2-170-par1*(e_desc+25))/(par1+1)/1000
                        4*(par1+1) x (m_alto-xtra-j_desc-88)/1000
					PANELES
                        2*(par1+1) de (m_ancho/2-152-d_vid*par1)/(par1+1) x m_alto-xtra-j_desc-88-7

                        FIN DESARME
                FIN DESARME
	
		/* Tiene UN travesanio */
                DESARMAR SOLO SI tra2=0
                        DESARMAR SOLO SI tra1>0 
                SEGUN tipo_patr PERFIL 6559,6560
                    2 x m_ancho/2-145
	
                                DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 78,79,8
                                 8 x m_ancho/2-170
                                 4 x tra1-xtra-24-j_desc
                                 4 x m_alto-tra1-88-j_desc
					PARTE T
                                8 x (m_ancho/2-170)/1000
                                4 x (tra1-xtra-24-j_desc)/1000
                                4 x (m_alto-tra1-88-j_desc)/1000
					PARTE UVW
                                8 x (m_ancho/2-170)/1000
                                4 x (tra1-xtra-24-j_desc)/1000
                                4 x (m_alto-tra1-88-j_desc)/1000
					PANELES
                                2 de m_ancho/2-152 x tra1-xtra-24-j_desc-7
					OTROS INTERIORES
                                2 de m_ancho/2-152 x m_alto-tra1-88-j_desc-7
	
				FIN DESARME
	
                                DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 6559,6560
                                2*par1 x tra1-xtra-24-j_desc
                                2*par1 x m_alto-tra1-88-j_desc
	
                    SEGUN contravid PERFIL 78,79,8
                                8*(par1+1) x (m_ancho/2-170-par1*(e_desc+25))/(par1+1)
                                4*(par1+1) x tra1-xtra-24-j_desc
                                4*(par1+1) x m_alto-tra1-88-j_desc
					PARTE T
                                8*(par1+1) x (m_ancho/2-170-par1*(e_desc+25))/(par1+1)/1000
                                4*(par1+1) x (tra1-xtra-24-j_desc)/1000
                                4*(par1+1) x (m_alto-tra1-88-j_desc)/1000
					PARTE UVW
                                8*(par1+1) x (m_ancho/2-170-(e_desc+25)*par1)/(par1+1)/1000
                                4*(par1+1) x (tra1-xtra-24-j_desc)/1000
                                4*(par1+1) x (m_alto-tra1-88-j_desc)/1000
					PANELES
                        2*(par1+1) de (m_ancho/2-152-d_vid*par1)/(par1+1) x tra1-xtra-24-j_desc-7
					OTROS INTERIORES
                        2*(par1+1) de (m_ancho/2-152-d_vid*par1)/(par1+1) x m_alto-tra1-88-j_desc-7

                                FIN DESARME
                        FIN DESARME
                FIN DESARME
	
		/* Tiene DOS travesanios */
                
                DESARMAR SOLO SI tra2>0
                SEGUN tipo_patr PERFIL 6559,6560
                    4 x m_ancho/2-145
	
                        DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 78,79,8
                                12 x m_ancho/2-170
                                 4 x tra1-xtra-24-j_desc
                                 4 x tra2-tra1-e_desc
                                 4 x m_alto-tra2-88-j_desc
					PARTE T
                                12 x (m_ancho/2-170)/1000
                                 4 x (tra1-xtra-24-j_desc)/1000
                                 4 x (tra2-tra1-e_desc)/1000
                                 4 x (m_alto-tra2-88-j_desc)/1000
					PARTE UVW
								12 x (m_ancho-425)/1000
                                 4 x (tra1-xtra-24-j_desc)/1000
                                 4 x (tra2-tra1-e_desc)/1000
                                 4 x (m_alto-tra2-88-j_desc)/1000
					PANELES
                              2 de m_ancho/2-152 x tra1-xtra-24-j_desc-7
					OTROS INTERIORES
                                2 de m_ancho/2-152 x tra2-tra1-d_vid
                                2 de m_ancho/2-152 x m_alto-tra2-88-j_desc-7
	
                        FIN DESARME
	
                        DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 6559,6560
                              2*par1 x tra1-xtra-24-j_desc
                              2*par1 x tra2-tra1-e_desc
                              2*par1 x m_alto-tra2-88-j_desc
	
                    SEGUN contravid PERFIL 78,79,8
                                12*(par1+1) x (m_ancho/2-170-par1*(e_desc+25))/(par1+1)
                                4*(par1+1) x tra1-xtra-24-j_desc
                                4*(par1+1) x tra2-tra1-e_desc
                                4*(par1+1) x m_alto-tra2-88-j_desc
					PARTE T
                                12*(par1+1) x (m_ancho/2-170-(e_desc+25)*par1)/(par1+1)/1000
                                4*(par1+1) x (tra1-xtra-24-j_desc)/1000
                                4*(par1+1) x (tra2-tra1-e_desc)/1000
                                4*(par1+1) x (m_alto-tra2-88-j_desc)/1000
					PARTE UVW
                                12*(par1+1) x (m_ancho/2-170-(e_desc+25)*par1)/(par1+1)/1000
                                4*(par1+1) x (tra1-xtra-24-j_desc)/1000
                                4*(par1+1) x (tra2-tra1-e_desc)/1000
                                4*(par1+1) x (m_alto-tra2-88-j_desc)/1000
					PANELES
                        2*(par1+1) de (m_ancho/2-152-d_vid*par1)/(par1+1) x tra1-xtra-24-j_desc-7
					OTROS INTERIORES
                        2*(par1+1) de (m_ancho/2-152-d_vid*par1)/(par1+1) x tra2-tra1-d_vid
                        2*(par1+1) de (m_ancho/2-152-d_vid*par1)/(par1+1) x m_alto-tra2-88-j_desc-7

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
                    SEGUN contravid PERFIL 78,79,8
                    4 x m_ancho/2-170
                    4 x m_alto-187
					PARTE T
                    4 x (m_ancho/2-170)/1000
                    4 x (m_alto-187)/1000
					PARTE UVW
                    4 x (m_ancho/2-170)/1000
                    4 x (m_alto-187)/1000
	
                                DESARMAR SOLO SI tipo_rev=1
			        VIDRIOS
                        2 de m_ancho/2-152 x m_alto-187-7
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 2
                                    PRODUCTO REVET , 2 de m_ancho/2-152 x m_alto-187-7
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                                    PRODUCTO REV688, 2 de m_ancho/2-152 x m_alto-187-7
                                FIN DESARME
	
                        FIN DESARME
	
                        DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 6559,6560
                              2*par1 x m_alto-187
                    SEGUN contravid PERFIL 78,79,8
                         4*(par1+1) x (m_ancho/2-170-par1*(e_desc+25))/(par1+1)
                         4*(par1+1) x m_alto-187
					PARTE T
                         4*(par1+1) x (m_ancho/2-170-(e_desc+25)*par1)/(par1+1)/1000
                         4*(par1+1) x (m_alto-187)/1000
					PARTE UVW
                         4*(par1+1) x (m_ancho/2-170-(e_desc+25)*par1)/(par1+1)/1000
                         4*(par1+1) x (m_alto-187)/1000
					VIDRIOS
                         2*(par1+1) de (m_ancho/2-152-d_vid*par1)/(par1+1) x m_alto-187-7
                        FIN DESARME
                FIN DESARME
	
		/* Tiene un travesanios */
                DESARMAR SOLO SI tra2=0
                        DESARMAR SOLO SI tra1>0 
                SEGUN tipo_patr PERFIL 6559,6560
                    2 x m_ancho/2-145
	
                                DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 78,79,8
                                8 x m_ancho/2-170
                                4 x tra1-j_desc-63
                                4 x m_alto-tra1-j_desc-88
					PARTE T
                                8 x (m_ancho/2-170)/1000
                                4 x (tra1-j_desc-100)/1000
                                4 x (m_alto-tra1-j_desc-88)/1000
					PARTE UVW
                                8 x (m_ancho/2-170)/1000
                                4 x (tra1-j_desc-63)/1000
                                4 x (m_alto-tra1-j_desc-88)/1000
	
					VIDRIOS
                              2 de m_ancho/2-152 x tra1-j_desc-63-7
					PANELES
                              2 de m_ancho/2-152 x m_alto-tra1-j_desc-88-7
	
                                FIN DESARME
                                DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 6559,6560
                              2*par1 x tra1-j_desc-63
                              2*par1 x m_alto-tra1-j_desc-88
                    SEGUN contravid PERFIL 78,79,8
                              8*(par1+1) x (m_ancho/2-170-par1*(e_desc+25))/(par1+1)
                              4*(par1+1) x tra1-j_desc-63
                              4*(par1+1) x m_alto-tra1-j_desc-88
					PARTE T
                              8*(par1+1) x (m_ancho/2-170-(e_desc+25)*par1)/(par1+1)/1000
                              4*(par1+1) x (tra1-j_desc-63)/1000
                              4*(par1+1) x (m_alto-tra1-j_desc-88)/1000
					PARTE UVW
                              8*(par1+1) x (m_ancho/2-170-(e_desc+25)*par1)/(par1+1)/1000
                              4*(par1+1) x (tra1-j_desc-63)/1000
                              4*(par1+1) x (m_alto-tra1-j_desc-88)/1000
					VIDRIOS
                        2*(par1+1) de (m_ancho/2-152-d_vid*par1)/(par1+1) x tra1-j_desc-63-7
					PANELES
                        2*(par1+1) de (m_ancho/2-152-d_vid*par1)/(par1+1) x m_alto-tra1-j_desc-88-7
                                FIN DESARME
                        FIN DESARME
                FIN DESARME

		/* Tiene dos travesanios */
                DESARMAR SOLO SI tra2>0
                SEGUN tipo_patr PERFIL 6559,6560
                    4 x m_ancho/2-145
                        DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 78,79,8
                               12 x m_ancho/2-170
                                4 x tra1-j_desc-63
                                4 x tra2-tra1-e_desc
                                4 x m_alto-tra2-j_desc-88
					PARTE T
                               12 x (m_ancho/2-170)/1000
                                4 x (tra1-j_desc-63)/1000
                                4 x (tra2-tra1-e_desc)/1000
                                4 x (m_alto-tra2-j_desc-88)/1000
					PARTE UVW
                               12 x (m_ancho/2-170)/1000
                                4 x (tra1-j_desc-63)/1000
                                4 x (tra2-tra1-e_desc)/1000
                                4 x (m_alto-tra2-j_desc-88)/1000
					VIDRIOS
                              2 de m_ancho/2-152 x tra1-j_desc-63-7
					PANELES
                              2 de m_ancho/2-152 x tra2-tra1-d_vid
					OTROS INTERIOES
                              2 de m_ancho/2-152 x m_alto-tra2-j_desc-88-7
	
                        FIN DESARME
	
                        DESARMAR SOLO SI par1>0
					/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 6559,6560
                              2*par1 x tra1-j_desc-63
                              2*par1 x tra2-tra1-e_desc
                              2*par1 x m_alto-tra2-j_desc-88
                    SEGUN contravid PERFIL 78,79,8
                             12*(par1+1) x (m_ancho/2-170-par1*(e_desc+25))/(par1+1)
                              4*(par1+1) x tra1-j_desc-63
                              4*(par1+1) x tra2-tra1-e_desc
                              4*(par1+1) x m_alto-tra2-j_desc-88
					PARTE T
                             12*(par1+1) x (m_ancho/2-170-(e_desc+25)*par1)/(par1+1)/1000
                              4*(par1+1) x (tra1-j_desc-63)/1000
                              4*(par1+1) x (tra2-tra1-e_desc)/1000
                              4*(par1+1) x (m_alto-tra2-j_desc-88)/1000
					PARTE UVW
                              12*(par1+1) x (m_ancho/2-170-(e_desc+25)*par1)/(par1+1)/1000
                              4*(par1+1) x (tra1-j_desc-63)/1000
                              4*(par1+1) x (tra2-tra1-e_desc)/1000
                              4*(par1+1) x (m_alto-tra2-j_desc-88)/1000
					VIDRIOS
                        2*(par1+1) de (m_ancho/2-152-d_vid*par1)/(par1+1) x tra1-j_desc-63-7
					PANELES
                        2*(par1+1) de (m_ancho/2-152-d_vid*par1)/(par1+1) x tra2-tra1-d_vid
					OTROS INTERIOES
                        2*(par1+1) de (m_ancho/2-152-d_vid*par1)/(par1+1) x m_alto-tra2-j_desc-88-7
                        FIN DESARME
                FIN DESARME
        FIN DESARME
	
	
	/* Accesorios */
        DESARMAR SOLO SI marco=1
        PARTE A
	 1 x 2
        FIN DESARME
        DESARMAR SOLO SI marco=2
        PARTE C
	 1 x 2
        FIN DESARME
        
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
            SEGUN manijon PARTE nada,DOR375,MANIJU,MANIJO,MANIJU
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
	
        DESARMAR SOLO SI caja_p>1
	    PARTE CAJAP
	        1 x 2
	FIN DESARME
	
	
	/* Calculo la cantidad de travesanios */
	CALCULOS
       cant_t:=If(tra1!=0 .AND. tra2=0, 1, 0)
       cant_t:=If(tra1!=0 .AND. tra2!=0, 2, cant_t)
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
          6 x m_alto-24
	   /* Zocalo y Cabezal - Hoja */
       PERFIL 212
            6 x m_ancho/3-184
       PERFIL 214
            3 x m_alto-24
	/* Tiene travesaño principal*/
	DESARMAR SOLO SI xtra>0
	
	    /* Travesaño principal - Hoja */	
        PERFIL 6559
           3 x m_ancho/3-177
		/* Contravidrios */
        SEGUN contravid PERFIL 78,79,8
              6 x m_ancho/3-202
              6 x xtra-45-63
		PARTE T
                6 x (m_ancho/3-202)/1000
                6 x (m_ancho/3-202)/1000
		PARTE UVW
                6 x (m_ancho/3-202)/1000
                6 x (m_ancho/3-202)/1000
	
		DESARMAR SOLO SI tipo_rev=1
	        VIDRIOS
                3 de m_ancho/3-184 x xtra-24-63-7
                FIN DESARME
	        DESARMAR SOLO SI tipo_rev = 2
                    PRODUCTO REVET , 3 de m_ancho/3-184 x xtra-24-63-7
	        FIN DESARME
	        DESARMAR SOLO SI tipo_rev = 3
                    PRODUCTO REV688, 3 de m_ancho/3-184 x xtra-24-63-7
	        FIN DESARME
	
		/* No tiene travesanios */
                DESARMAR SOLO SI tra1=0
                        DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 78,79,8
                        6 x m_ancho/3-202
                        6 x m_alto-xtra-24-88
					PARTE T
                        6 x (m_ancho/3-202)/1000
                        6 x (m_alto-xtra-24-88)/1000
					PARTE UVW
                        6 x (m_ancho/3-202)/1000
                        6 x (m_alto-xtra-24-88)/1000
					PANELES
                          3 de m_ancho/3-184 x m_alto-xtra-24-88-7
                        FIN DESARME
                        DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 6559,6560
                           3*par1 x m_alto-xtra-j_desc-88
                    SEGUN contravid PERFIL 78,79,8
                             6*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)
                             6*(par1+1) x m_alto-xtra-24-88
					PARTE T
                             6*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                             6*(par1+1) x (m_alto-xtra-24-88)/1000
					PARTE UVW
                             6*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                             6*(par1+1) x (m_alto-xtra-24-88)/1000
					PANELES
                             3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x m_alto-xtra-24-88-7
	
                        FIN DESARME
                FIN DESARME
	
		/* Tiene UN travesanio */
                DESARMAR SOLO SI tra2=0

                        DESARMAR SOLO SI tra1>0 
                SEGUN tipo_patr PERFIL 6559,6560
                    3 x m_ancho/3-177
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 78,79,8
                                12 x m_ancho/3-202
                                6 x tra1-xtra-24-j_desc
                                6 x m_alto-tra1-88-j_desc
					PARTE T
                               12 x (m_ancho/3-202)/1000
                                6 x (tra1-xtra-24-j_desc)/1000
                                6 x (m_alto-tra1-88-j_desc)/1000
					PARTE UVW
                               12 x (m_ancho/3-202)/1000
                                6 x (tra1-xtra-24-j_desc)/1000
                                6 x (m_alto-tra1-88-j_desc)/1000
					PANELES
                                3 de m_ancho/3-184 x tra1-xtra-24-j_desc-7
					OTROS INTERIORES
                                3 de m_ancho/3-184 x m_alto-tra1-88-j_desc-7
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 6559,6560
                        3*par1 x tra1-xtra-24-j_desc
                        3*par1 x m_alto-tra1-88-24
	
                    SEGUN contravid PERFIL 78,79,8
                        12*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)
                        6*(par1+1) x tra1-xtra-24-j_desc
                        6*(par1+1) x m_alto-tra1-88-j_desc
					PARTE T
                        12*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                         6*(par1+1) x (tra1-xtra-24-j_desc)/1000
                         6*(par1+1) x (m_alto-tra1-88-j_desc)/1000
					PARTE UVW
                        12*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                         6*(par1+1) x (tra1-xtra-24-j_desc)/1000
                         6*(par1+1) x (m_alto-tra1-88-j_desc)/1000
					PANELES
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x tra1-xtra-24-j_desc-7
					OTROS INTERIORES
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x m_alto-tra1-88-j_desc-7
	
				FIN DESARME
                        FIN DESARME
                FIN DESARME
	
		/* Tiene DOS travesanios */
                DESARMAR SOLO SI tra2>0
           SEGUN tipo_patr PERFIL 6559,6560
                    6 x m_ancho/3-177
	
                        DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 78,79,8
                                 18 x m_ancho/3-202
                                 6 x tra1-xtra-24-j_desc
                                 6 x tra2-tra1-e_desc
                                 6 x m_alto-tra2-88-j_desc
					PARTE T
                                18 x (m_ancho/3-202)/1000
                                 6 x (tra1-xtra-24-j_desc)/1000
                                 6 x (tra2-tra1-e_desc)/1000
                                 6 x (m_alto-tra2-88-j_desc)/1000
					PARTE UVW
                                18 x (m_ancho/3-202)/1000
                                 6 x (tra1-xtra-24-j_desc)/1000
                                 6 x (tra2-tra1-e_desc)/1000
                                 6 x (m_alto-tra2-88-j_desc)/1000
					PANELES
                              3 de m_ancho/3-184 x tra1-xtra-24-j_desc
					OTROS INTERIORES
                              1 de m_ancho/3-184 x tra2-tra1-d_vid
                              1 de m_ancho/3-184 x m_alto-tra2-88-j_desc-7
	
                        FIN DESARME
	
                        DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 6559,6560
                              3*par1 x tra1-xtra-24-j_desc
                              3*par1 x tra2-tra1-e_desc
                              3*par1 x m_alto-tra2-88-j_desc
	
                    SEGUN contravid PERFIL 78,79,8
                                18*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)
                                 6*(par1+1) x tra1-xtra-24-j_desc
                                 6*(par1+1) x tra2-tra1-e_desc
                                 6*(par1+1) x m_alto-tra2-88-j_desc
					PARTE T
                               18*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                                6*(par1+1) x (tra1-xtra-24-j_desc)/1000
                                6*(par1+1) x (tra2-tra1-e_desc)/1000
                                6*(par1+1) x (m_alto-tra2-88-j_desc)/1000
					PARTE UVW
                               18*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                                6*(par1+1) x (tra1-xtra-24-j_desc)/1000
                                6*(par1+1) x (tra2-tra1-e_desc)/1000
                                6*(par1+1) x (m_alto-tra2-88-j_desc)/1000
					PANELES
                       3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x tra1-xtra-24-j_desc-7
					OTROS INTERIORES
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x tra2-tra1-d_vid
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x m_alto-tra2-88-j_desc-7
	
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
                    SEGUN contravid PERFIL 78,79,8
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
                                DESARMAR SOLO SI tipo_rev = 2
                                    PRODUCTO REVET , 3 de m_ancho/3-184 x m_alto-187-7
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                                    PRODUCTO REV688, 3 de m_ancho/3-184 x m_alto-187-7
                                FIN DESARME
                        FIN DESARME
	
                        DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 6559,6560
                              3*par1 x m_alto-187
                    SEGUN contravid PERFIL 78,79,8
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
                DESARMAR SOLO SI tra2=0
                        DESARMAR SOLO SI tra1>0 
                SEGUN tipo_patr PERFIL 6559,6560
                  3 x m_ancho/3-145
	
                                DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 78,79,8
                               12 x m_ancho/3-202
                                6 x tra1-j_desc-63
                                6 x m_alto-tra1-j_desc-88
                   PARTE T
                               12 x (m_ancho/3-202)/1000
                                6 x (tra1-j_desc-63)/1000
                                6 x (m_alto-tra1-j_desc-88)/1000
					PARTE UVW
                               12 x (m_ancho/3-202)/1000
                                6 x (tra1-j_desc-63)/1000
                                6 x (m_alto-tra1-j_desc-88)/1000

					VIDRIOS
                              3 de m_ancho/3-184 x tra1-j_desc-63-7
					PANELES
                              3 de m_ancho/3-184 x m_alto-tra1-j_desc-88-7
	
                                FIN DESARME
                                DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 6559,6560
                              3*par1 x tra1-j_desc-63
                              3*par1 x m_alto-tra1-j_desc-88
                    SEGUN contravid PERFIL 78,79,8
                              12*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)
                              6*(par1+1) x tra1-j_desc-63
                              6*(par1+1) x m_alto-tra1-j_desc-88
					PARTE T
                              12*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                              6*(par1+1) x (tra1-j_desc-63)/1000
                              6*(par1+1) x (m_alto-tra1-j_desc-88)/1000
					PARTE UVW
                              12*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                               6*(par1+1) x (tra1-j_desc-63)/1000
                               6*(par1+1) x (m_alto-tra1-j_desc-88)/1000
					VIDRIOS
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x tra1-j_desc-63-7
					PANELES
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x m_alto-tra1-j_desc-88-7
                                FIN DESARME
                        FIN DESARME
                FIN DESARME
	
		/* Tiene dos travesanios */
                DESARMAR SOLO SI tra2>0
                SEGUN tipo_patr PERFIL 6559,6560
                    3 x m_ancho/3-177
	
                        DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 78,79,8
                           18 x m_ancho/3-202
                            6 x tra1-j_desc-63
                            6 x tra2-tra1-e_desc
                            6 x m_alto-tra2-j_desc-88
					PARTE T
                            18 x (m_ancho/3-202)/1000
                             6 x (tra1-j_desc-63)/1000
                             6 x (tra2-tra1-e_desc)/1000
                             6 x (m_alto-tra2-j_desc-88)/1000
					PARTE UVW
                            18 x (m_ancho/3-202)/1000
                             6 x (tra1-j_desc-63)/1000
                             6 x (tra2-tra1-e_desc)/1000
                             6 x (m_alto-tra2-j_desc-88)/1000
					VIDRIOS
                             3 de m_ancho/3-184 x tra1-j_desc-63-7
					PANELES
                             3 de m_ancho/3-184 x tra2-tra1-e_desc-7
					OTROS INTERIOES
                             3 de m_ancho/3-184 x m_alto-tra2-j_desc-88-7
	
                        FIN DESARME
	
                        DESARMAR SOLO SI par1>0
					/* tiene parantes centrados */
                    SEGUN tipo_patr PERFIL 6559,6560
                              3*par1 x tra1-j_desc-63
                              3*par1 x tra2-tra1-e_desc
                              3*par1 x m_alto-tra2-j_desc-88
                    SEGUN contravid PERFIL 78,79,8
                             18*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)
                             6*(par1+1) x tra1-j_desc-63
                             6*(par1+1) x tra2-tra1-e_desc
                             6*(par1+1) x m_alto-tra2-j_desc-88
					PARTE T
                             18*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                              6*(par1+1) x (tra1-j_desc-63)/1000
                              6*(par1+1) x (tra2-tra1-e_desc)/1000
                              6*(par1+1) x (m_alto-tra2-j_desc-88)/1000
					PARTE UVW
                             18*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                              6*(par1+1) x (tra1-j_desc-63)/1000
                              6*(par1+1) x (tra2-tra1-e_desc)/1000
                              6*(par1+1) x (m_alto-tra2-j_desc-88)/1000
					VIDRIOS
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x tra1-j_desc-63-7
					PANELES
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x tra2-tra1-d_vid
					OTROS INTERIOES
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x m_alto-tra2-j_desc-88-7
                        FIN DESARME
                FIN DESARME
        FIN DESARME
	
	
	/* Accesorios */
        DESARMAR SOLO SI marco=1
        PARTE A
	 1 x 2
        FIN DESARME
        DESARMAR SOLO SI marco=2
        PARTE C
	 1 x 2
        FIN DESARME
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
            SEGUN manijon PARTE nada,DOR375,MANIJU,MANIJO,MANIJU
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
	
        DESARMAR SOLO SI caja_p>1
	    PARTE CAJAP
	        1 x 2
	FIN DESARME
	
	
	/* Calculo la cantidad de travesanios */
	CALCULOS
        cant_t:=If(tra1!=0 .AND. tra2=0, 1, 0)
       cant_t:=If(tra1!=0 .AND. tra2!=0, 2, cant_t)
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





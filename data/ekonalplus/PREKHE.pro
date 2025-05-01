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
    e_desc:=50
    d_vid:=32
    j_desc:=25
	FIN CALCULOS

/* Marco */
SEGUN marco PERFIL 6579,6768,6577
    CORTES A 45:
       1 x m_ancho
    CORTES A 90 Y 45:        
       2 x m_alto

/* puerta de una hoja */
DESARMAR SOLO SI n_hojas = 1

       CORTES A RECTO:
	/* Parantes - Hoja */
         PERFIL 6313
            2 x m_alto-33
    /* Zocalo - Hoja */
         PERFIL 44
            1 x m_ancho-187
    /* dintel - Hoja */
         PERFIL 902
            1 x m_ancho-187
         PARTE I
            1 x 6

	/* Tiene travesaño principal*/
	DESARMAR SOLO SI xtra>0
	
	    /* Travesaño principal - Hoja */	
        PERFIL 902
              1 x m_ancho-187
		PARTE UVW
                2 x (m_ancho-187)/1000
                2 x (xtra-89)/1000
		DESARMAR SOLO SI tipo_rev=1
	        VIDRIOS
                1 de m_ancho-168 x xtra-89
	   FIN DESARME
	        DESARMAR SOLO SI tipo_rev = 2
                    PRODUCTO REVET , 1 de m_ancho-168 x xtra-89
	        FIN DESARME
	        DESARMAR SOLO SI tipo_rev = 3
                    PRODUCTO REV688, 1 de m_ancho-168 x xtra-89
	        FIN DESARME
	
		/* No tiene travesanios */
		DESARMAR SOLO SI tra1=0
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
					PARTE UVW
                        2 x (m_ancho-187)/1000
                        2 x (m_alto-xtra-85)/1000
					PANELES
                          1 de m_ancho-168 x m_alto-xtra-85
				FIN DESARME
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    PERFIL 902
                              par1 x m_alto-xtra-103
					PARTE UVW
                             2*(par1+1) x (m_ancho-187-e_desc*par1)/(par1+1)/1000
                             2*(par1+1) x (m_alto-xtra-103)/1000
					PANELES
                             par1+1 de (m_ancho-168-d_vid*par1)/(par1+1) x m_alto-xtra-85
	
				FIN DESARME
		FIN DESARME
	
		/* Tiene UN travesanio */
		DESARMAR SOLO SI tra1>0 .AND. tra2=0
                PERFIL 902
                    1 x m_ancho-187
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
					PARTE UVW
                                4 x (m_ancho-187)/1000
                                2 x (tra1-xtra-25-j_desc)/1000
                                2 x (m_alto-tra1-78-j_desc)/1000
					PANELES
                                1 de m_ancho-168 x tra1-25-xtra-j_desc+18
					OTROS INTERIORES
                                1 de m_ancho-168 x m_alto-tra1-78-j_desc+18
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    PERFIL 902
                              par1 x tra1-xtra-25-j_desc
                              par1 x m_alto-tra1-78-j_desc
					PARTE UVW
                        4*(par1+1) x (m_ancho-199-e_desc*par1)/(par1+1)/1000
                        2*(par1+1) x (tra1-xtra-25-j_desc)/1000
                        2*(par1+1) x (m_alto-tra1-88-j_desc)/1000
					PANELES
                        (par1+1) de (m_ancho-168-d_vid*par1)/(par1+1) x tra1-xtra-25-j_desc+18
					OTROS INTERIORES
                        (par1+1) de (m_ancho-168-d_vid*par1)/(par1+1) x m_alto-tra1-78-j_desc+18
	
				FIN DESARME
		 FIN DESARME
	
	
		/* Tiene DOS travesanios */
         DESARMAR SOLO SI tra1>0 .AND. tra2>0
               PERFIL 902
                    2 x m_ancho-187
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
					PARTE UVW
                                6 x (m_ancho-199)/1000
                                2 x (tra1-xtra-66)/1000
                                2 x (tra2-tra1-e_desc)/1000
                                2 x (m_alto-tra2-88-25)/1000
					PANELES
                                1 de m_ancho-168 x tra1-xtra-25-j_desc+18
					OTROS INTERIORES
                                1 de m_ancho-168 x tra2-tra1-d_vid
                                1 de m_ancho-168 x m_alto-tra2-78-j_desc+18
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    PERFIL 902
                              par1 x tra1-xtra-25-j_desc
                              par1 x tra2-tra1-e_desc
                              par1 x m_alto-tra2-78-j_desc
	
					PARTE UVW
                                6*(par1+1) x (m_ancho-199-e_desc*par1)/(par1+1)/1000
                                2*(par1+1) x (tra1-xtra-66)/1000
                                2*(par1+1) x (tra2-tra1-e_desc)/1000
                                2*(par1+1) x (m_alto-tra2-78-25)/1000
					PANELES
                        (par1+1) de (m_ancho-168-d_vid*par1)/(par1+1) x tra1-xtra-25-j_desc+18
					OTROS INTERIORES
                        (par1+1) de (m_ancho-168-d_vid*par1)/(par1+1) x tra2-tra1-d_vid
                        (par1+1) de (m_ancho-168-d_vid*par1)/(par1+1) x m_alto-tra2-78-j_desc+18
	
				FIN DESARME
		 FIN DESARME
	FIN DESARME

	/* NO Tiene travesaño principal*/
	DESARMAR SOLO SI xtra=0
	
		/* No tiene travesanios */
		 DESARMAR SOLO SI tra1=0
                        DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
					PARTE UVW
                    2 x (m_ancho-199)/1000
                   2 x (m_alto-187)/1000
	
			        VIDRIOS
                        1 de m_ancho-168 x m_alto-140
	
                        FIN DESARME
	
                        DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    PERFIL 902
                              par1 x m_alto-187
					PARTE UVW
                                2*(par1+1) x (m_ancho-199-e_desc*par1)/(par1+1)/1000
                                2*(par1+1) x (m_alto-187)/1000
					VIDRIOS
                    par1+1 de (m_ancho-168-d_vid*par1)/(par1+1) x m_alto-140
                        FIN DESARME
                FIN DESARME
	
		/* Tiene un travesanios */
                DESARMAR SOLO SI tra1>0 .AND. tra2=0
                PERFIL 902
                    1 x m_ancho-187
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
					PARTE UVW
                                4 x (m_ancho-187)/1000
                                2 x (tra1-j_desc-80)/1000
                                2 x (m_alto-tra1-j_desc-80)/1000
					VIDRIOS
                              1 de m_ancho-168 x tra1-j_desc-62
					PANELES
                              1 de m_ancho-168 x m_alto-tra1-j_desc-60
	
				FIN DESARME
				DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    PERFIL 902
                              par1 x tra1-j_desc-80
                              par1 x m_alto-tra1-j_desc-78
					PARTE UVW
                              4*(par1+1) x (m_ancho-168-e_desc*par1)/(par1+1)/1000
                              2*(par1+1) x (tra1-j_desc-63)/1000
                              2*(par1+1) x (m_alto-tra1-25-78)/1000
					VIDRIOS
                        (par1+1) de (m_ancho-168-d_vid*par1)/(par1+1) x tra1-j_desc-62
					PANELES
                        (par1+1) de (m_ancho-168-d_vid*par1)/(par1+1) x m_alto-tra1-j_desc-60
				FIN DESARME
	
		 FIN DESARME
	
	
		/* Tiene dos travesanios */
		 DESARMAR SOLO SI tra1>0 .AND. tra2>0
                PERFIL 902
                    2 x m_ancho-187
	
				DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
					PARTE UVW
                                6 x (m_ancho-187)/1000
                                2 x (tra1-j_desc-69)/1000
                                2 x (tra2-tra1-e_desc)/1000
                                2 x (m_alto-tra2-j_desc-78)/1000
					VIDRIOS
                              1 de m_ancho-168 x tra1-j_desc-62
					PANELES
                              1 de m_ancho-168 x tra2-tra1-d_vid
                    OTROS INTERIORES
                              1 de m_ancho-168 x m_alto-tra2-j_desc-60
	
				FIN DESARME
	
				DESARMAR SOLO SI par1>0
					/* tiene parantes centrados */
                    PERFIL 902
                              par1 x tra1-j_desc-71
                              par1 x tra2-tra1-e_desc
                              par1 x m_alto-tra2-j_desc-78
					PARTE UVW
                              6*(par1+1) x (m_ancho-168-(e_desc+25)*par1)/(par1+1)/1000
                              2*(par1+1) x (tra1-j_desc-71)/1000
                              2*(par1+1) x (tra2-tra1-e_desc)/1000
                              2*(par1+1) x (m_alto-tra2-j_desc-78)/1000
					VIDRIOS
                        (par1+1) de (m_ancho-168-d_vid*par1)/(par1+1) x tra1-j_desc-62
                    PANELES
                        (par1+1) de (m_ancho-168-d_vid*par1)/(par1+1) x tra2-tra1-d_vid
					OTROS INTERIOES
                        (par1+1) de (m_ancho-168-d_vid*par1)/(par1+1) x m_alto-tra2-j_desc-60
				FIN DESARME
	
		 FIN DESARME
	
	FIN DESARME
	
	
	/* Accesorios */
        DESARMAR SOLO SI marco=1 .OR. marco=2
	PARTE A
	 1 x 2
         FIN DESARME
        DESARMAR SOLO SI marco=3
        PARTE C
	 1 x 2
        FIN DESARME
        PARTE B44
        4 x m_alto/1000
	PARTE D
		 1 x 16
	PARTE C6
	    1 x 3
	PARTE H
	    1 x m_ancho/1000
	    4 x m_alto/1000
	
	/*Cerradura*/
    SEGUN tipo_cerr PARTE 3001,5006,6625
	    1 x 1
	
	
	PARTE MANIJA
	    1 x 1
	
	DESARMAR SOLO SI cierra_p=1
	    PARTE CIEPTA
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

       CORTES A RECTO:
	/* Parantes - Hoja */
         PERFIL 6313
            4 x m_alto-33
    /* Zocalo - Hoja */
         PERFIL 44
            2 x m_ancho/2-138
    /* Cabezal - Hoja */
         PERFIL 902
            2 x m_ancho/2-138
         PARTE E74
            2 x 4
         PARTE D
            2 x 16

	/* Tiene travesaño principal*/
        DESARMAR SOLO SI xtra>0
	
	    /* Travesaño principal - Hoja */	
        PERFIL 902
            2 x m_ancho/2-138
		PARTE UVW
            4 x (m_ancho/2-138)/1000
            4 x (xtra-25-80)/1000
                DESARMAR SOLO SI tipo_rev=1
	        VIDRIOS
                2 de m_ancho/2-120 x xtra-25-80+18
                FIN DESARME
                DESARMAR SOLO SI tipo_rev = 2
                    PRODUCTO REVET , 2 de m_ancho/2-120 x xtra-25-80+18
                FIN DESARME
                DESARMAR SOLO SI tipo_rev = 3
                    PRODUCTO REV688, 2 de m_ancho/2-120 x xtra-25-80+18
                FIN DESARME
	
		/* No tiene travesanios */
                DESARMAR SOLO SI tra1=0
                        DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
					PARTE UVW
                        4 x (m_ancho/2-138)/1000
                        4 x (m_alto-xtra-j_desc-78)/1000
					PANELES
                        2 de m_ancho/2-120 x m_alto-xtra-j_desc-78+18
                        FIN DESARME
                        DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    PERFIL 902
                        2*par1 x m_alto-xtra-j_desc-78
					PARTE UVW
                        4*(par1+1) x (m_ancho/2-138-par1*(e_desc+25))/(par1+1)/1000
                        4*(par1+1) x (m_alto-xtra-j_desc-78)/1000
					PANELES
                        2*(par1+1) de (m_ancho/2-120-d_vid*par1)/(par1+1) x m_alto-xtra-j_desc-78-7

                        FIN DESARME
                FIN DESARME
	
		/* Tiene UN travesanio */
                DESARMAR SOLO SI tra1>0
                        DESARMAR SOLO SI tra2=0
                PERFIL 902
                   2 x m_ancho/2-138
                                DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
					PARTE UVW
                                8 x (m_ancho/2-138)/1000
                                4 x (tra1-xtra-25-j_desc)/1000
                                4 x (m_alto-tra1-78-j_desc)/1000
					PANELES
                                2 de m_ancho/2-120 x tra1-xtra-25-j_desc+18
					OTROS INTERIORES
                                2 de m_ancho/2-120 x m_alto-tra1-78-j_desc+18
	
                                FIN DESARME
	
                                DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    PERFIL 902
                                2*par1 x tra1-xtra-25-j_desc
                                2*par1 x m_alto-tra1-78-j_desc
					PARTE UVW
                                8*(par1+1) x (m_ancho/2-138-(e_desc+25)*par1)/(par1+1)/1000
                                4*(par1+1) x (tra1-xtra-25-j_desc)/1000
                                4*(par1+1) x (m_alto-tra1-78-j_desc)/1000
					PANELES
                        2*(par1+1) de (m_ancho/2-120-d_vid*par1)/(par1+1) x tra1-xtra-25-j_desc+18
					OTROS INTERIORES
                        2*(par1+1) de (m_ancho/2-120-d_vid*par1)/(par1+1) x m_alto-tra1-78-j_desc+18

                                FIN DESARME
                        FIN DESARME
                FIN DESARME
	
		/* Tiene DOS travesanios */
                DESARMAR SOLO SI tra2>0
                PERFIL 902
                    4 x m_ancho/2-138
	
                        DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
					PARTE UVW
                                12 x (m_ancho/2-138)/1000
                                 4 x (tra1-xtra-25-j_desc)/1000
                                 4 x (tra2-tra1-e_desc)/1000
                                 4 x (m_alto-tra2-78-j_desc)/1000
					PANELES
                              2 de m_ancho/2-120 x tra1-xtra-25-j_desc+18
					OTROS INTERIORES
                                2 de m_ancho/2-120 x tra2-tra1-d_vid
                                2 de m_ancho/2-120 x m_alto-tra2-78-j_desc+18
	
                        FIN DESARME
	
                        DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    PERFIL 902
                              2*par1 x tra1-xtra-25-j_desc
                              2*par1 x tra2-tra1-e_desc
                              2*par1 x m_alto-tra2-78-j_desc
					PARTE UVW
                                12*(par1+1) x (m_ancho/2-138-(e_desc+25)*par1)/(par1+1)/1000
                                4*(par1+1) x (tra1-xtra-25-j_desc)/1000
                                4*(par1+1) x (tra2-tra1-e_desc)/1000
                                4*(par1+1) x (m_alto-tra2-78-j_desc)/1000
					PANELES
                        2*(par1+1) de (m_ancho/2-120-d_vid*par1)/(par1+1) x tra1-xtra-25-j_desc+18
					OTROS INTERIORES
                        2*(par1+1) de (m_ancho/2-120-d_vid*par1)/(par1+1) x tra2-tra1-d_vid
                        2*(par1+1) de (m_ancho/2-120-d_vid*par1)/(par1+1) x m_alto-tra2-78-j_desc+18

                        FIN DESARME
                FIN DESARME
        FIN DESARME

	/* NO Tiene travesaño principal*/
        DESARMAR SOLO SI xtra=0
	
		/* No tiene travesanios */
                DESARMAR SOLO SI tra2=0
                        DESARMAR SOLO SI tra1=0
                                DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
					PARTE UVW
                    4 x (m_ancho/2-138)/1000
                    4 x (m_alto-187)/1000
	
                                        DESARMAR SOLO SI tipo_rev=1
			        VIDRIOS
                        2 de m_ancho/2-120 x m_alto-140
                                        FIN DESARME
                                        DESARMAR SOLO SI tipo_rev = 2
                                    PRODUCTO REVET , 2 de m_ancho/2-120 x m_alto-140
                                        FIN DESARME
                                        DESARMAR SOLO SI tipo_rev = 3
                                    PRODUCTO REV688, 2 de m_ancho/2-120 x m_alto-140
                                        FIN DESARME
                                FIN DESARME
	
                                DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    PERFIL 902
                         2*par1 x m_alto-158
					PARTE UVW
                         4*(par1+1) x (m_ancho/2-138-(e_desc+25)*par1)/(par1+1)/1000
                         4*(par1+1) x (m_alto-158)/1000
					VIDRIOS
                         2*(par1+1) de (m_ancho/2-120-d_vid*par1)/(par1+1) x m_alto-140
                                FIN DESARME
                        FIN DESARME
                /* Tiene un travesanios */
                        DESARMAR SOLO SI tra1>0
                PERFIL 902
                    2 x m_ancho/2-138
	
                                DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
					PARTE UVW
                                8 x (m_ancho/2-138)/1000
                                4 x (tra1-j_desc-63)/1000
                                4 x (m_alto-tra1-j_desc-78)/1000
	
					VIDRIOS
                              2 de m_ancho/2-120 x tra1-j_desc-80+18
					PANELES
                              2 de m_ancho/2-120 x m_alto-tra1-j_desc-78+18
	
                                FIN DESARME
                                DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    PERFIL 902
                              2*par1 x tra1-j_desc-80
                              2*par1 x m_alto-tra1-j_desc-78
					PARTE UVW
                              8*(par1+1) x (m_ancho/2-138-(e_desc+25)*par1)/(par1+1)/1000
                              4*(par1+1) x (tra1-j_desc-63)/1000
                              4*(par1+1) x (m_alto-tra1-j_desc-78)/1000
					VIDRIOS
                        2*(par1+1) de (m_ancho/2-120-d_vid*par1)/(par1+1) x tra1-j_desc-80+18
					PANELES
                        2*(par1+1) de (m_ancho/2-120-d_vid*par1)/(par1+1) x m_alto-tra1-j_desc-78
                                FIN DESARME
                        FIN DESARME
                FIN DESARME

		/* Tiene dos travesanios */
                DESARMAR SOLO SI tra2>0
                PERFIL 902
                    4 x m_ancho/2-138
                        DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
					PARTE UVW
                               12 x (m_ancho/2-138)/1000
                                4 x (tra1-j_desc-63)/1000
                                4 x (tra2-tra1-e_desc)/1000
                                4 x (m_alto-tra2-j_desc-78)/1000
					VIDRIOS
                              2 de m_ancho/2-120 x tra1-j_desc-80+18
					PANELES
                              2 de m_ancho/2-120 x tra2-tra1-d_vid
					OTROS INTERIOES
                              2 de m_ancho/2-120 x m_alto-tra2-j_desc-78+18
	
                        FIN DESARME
	
                        DESARMAR SOLO SI par1>0
					/* tiene parantes centrados */
                    PERFIL 902
                              2*par1 x tra1-j_desc-80
                              2*par1 x tra2-tra1-e_desc
                              2*par1 x m_alto-tra2-j_desc-78
					PARTE UVW
                              12*(par1+1) x (m_ancho/2-138-(e_desc+25)*par1)/(par1+1)/1000
                              4*(par1+1) x (tra1-j_desc-63)/1000
                              4*(par1+1) x (tra2-tra1-e_desc)/1000
                              4*(par1+1) x (m_alto-tra2-j_desc-78)/1000
					VIDRIOS
                        2*(par1+1) de (m_ancho/2-120-d_vid*par1)/(par1+1) x tra1-j_desc-80+18
					PANELES
                        2*(par1+1) de (m_ancho/2-120-d_vid*par1)/(par1+1) x tra2-tra1-d_vid
					OTROS INTERIOES
                        2*(par1+1) de (m_ancho/2-120-d_vid*par1)/(par1+1) x m_alto-tra2-j_desc-78+18
                        FIN DESARME
                FIN DESARME
        FIN DESARME
	
	/* Accesorios */
        DESARMAR SOLO SI marco=1 .OR. marco=2
	PARTE A
	 1 x 2
        FIN DESARME
        DESARMAR SOLO SI marco=3
        PARTE C
	 1 x 2
        FIN DESARME
        PARTE B44
        4 x m_alto/1000
	PARTE D
            1 x 16
	PARTE C6
	    1 x 6
	PARTE H
	    1 x m_ancho/1000
	    6 x m_alto/1000
	
	/*Cerradura*/
    SEGUN tipo_cerr PARTE 3001,5006,6625
	    1 x 1
	

	PARTE PASADOR
   		  1 x 2	
	PARTE MANIJA
	    1 x 1
	
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
	
	
	
FIN DESARME /* PUERTAS DE DOS HOJAS */
	
/* --------------------------------------------- */





/* puerta de TRES hojas no esta habilitado, quedo listo para cambiar en caso de ser necesario*/
DESARMAR SOLO SI n_hojas = 50

	CORTES A RECTO:
	   /* Parantes - Hoja */
       PERFIL 213
          6 x m_alto-25
	   /* Zocalo y Cabezal - Hoja */
       PERFIL 212
            6 x m_ancho/3-184
       PERFIL 214
            3 x m_alto-25
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
                3 de m_ancho/3-184 x xtra-25-63-7
                FIN DESARME
	        DESARMAR SOLO SI tipo_rev = 2
                    PRODUCTO REVET , 3 de m_ancho/3-184 x xtra-25-63-7
	        FIN DESARME
	        DESARMAR SOLO SI tipo_rev = 3
                    PRODUCTO REV688, 3 de m_ancho/3-184 x xtra-25-63-7
	        FIN DESARME
	
		/* No tiene travesanios */
                DESARMAR SOLO SI tra1=0
                        DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 78,79,8
                        6 x m_ancho/3-202
                        6 x m_alto-xtra-25-88
					PARTE T
                        6 x (m_ancho/3-202)/1000
                        6 x (m_alto-xtra-25-88)/1000
					PARTE UVW
                        6 x (m_ancho/3-202)/1000
                        6 x (m_alto-xtra-25-88)/1000
					PANELES
                          3 de m_ancho/3-184 x m_alto-xtra-25-88-7
                        FIN DESARME
                        DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    PERFIL 902
                           3*par1 x m_alto-xtra-j_desc-88
                    SEGUN contravid PERFIL 78,79,8
                             6*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)
                             6*(par1+1) x m_alto-xtra-25-88
					PARTE T
                             6*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                             6*(par1+1) x (m_alto-xtra-25-88)/1000
					PARTE UVW
                             6*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                             6*(par1+1) x (m_alto-xtra-25-88)/1000
					PANELES
                             3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x m_alto-xtra-25-88-7
	
                        FIN DESARME
                FIN DESARME
	
		/* Tiene UN travesanio */
                DESARMAR SOLO SI tra1>0 .AND. tra2=0
                PERFIL 902
                    3 x m_ancho/3-177
	
                        DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 78,79,8
                                12 x m_ancho/3-202
                                6 x tra1-xtra-25-j_desc
                                6 x m_alto-tra1-88-j_desc
					PARTE T
                               12 x (m_ancho/3-202)/1000
                                6 x (tra1-xtra-25-j_desc)/1000
                                6 x (m_alto-tra1-88-j_desc)/1000
					PARTE UVW
                               12 x (m_ancho/3-202)/1000
                                6 x (tra1-xtra-25-j_desc)/1000
                                6 x (m_alto-tra1-88-j_desc)/1000
					PANELES
                                3 de m_ancho/3-184 x tra1-xtra-25-j_desc+18
					OTROS INTERIORES
                                3 de m_ancho/3-184 x m_alto-tra1-88-j_desc+18
	
                        FIN DESARME
	
                        DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    PERFIL 902
                        3*par1 x tra1-xtra-25-j_desc
                        3*par1 x m_alto-tra1-88-25
	
                    SEGUN contravid PERFIL 78,79,8
                        12*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)
                        6*(par1+1) x tra1-xtra-25-j_desc
                        6*(par1+1) x m_alto-tra1-88-j_desc
					PARTE T
                        12*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                         6*(par1+1) x (tra1-xtra-25-j_desc)/1000
                         6*(par1+1) x (m_alto-tra1-88-j_desc)/1000
					PARTE UVW
                        12*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                         6*(par1+1) x (tra1-xtra-25-j_desc)/1000
                         6*(par1+1) x (m_alto-tra1-88-j_desc)/1000
					PANELES
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x tra1-xtra-25-j_desc+18
					OTROS INTERIORES
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x m_alto-tra1-88-j_desc+18
	
                        FIN DESARME
                FIN DESARME
	
	
		/* Tiene DOS travesanios */
                DESARMAR SOLO SI tra1>0 .AND. tra2>0
           PERFIL 902
                    6 x m_ancho/3-177
	
                        DESARMAR SOLO SI par1=0
				/* No tiene parantes centrados */
		 		/* Contravidrios */
                    SEGUN contravid PERFIL 78,79,8
                                 18 x m_ancho/3-202
                                 6 x tra1-xtra-25-j_desc
                                 6 x tra2-tra1-e_desc
                                 6 x m_alto-tra2-88-j_desc
					PARTE T
                                18 x (m_ancho/3-202)/1000
                                 6 x (tra1-xtra-25-j_desc)/1000
                                 6 x (tra2-tra1-e_desc)/1000
                                 6 x (m_alto-tra2-88-j_desc)/1000
					PARTE UVW
                                18 x (m_ancho/3-202)/1000
                                 6 x (tra1-xtra-25-j_desc)/1000
                                 6 x (tra2-tra1-e_desc)/1000
                                 6 x (m_alto-tra2-88-j_desc)/1000
					PANELES
                              3 de m_ancho/3-184 x tra1-xtra-25-j_desc
					OTROS INTERIORES
                              1 de m_ancho/3-184 x tra2-tra1-d_vid
                              1 de m_ancho/3-184 x m_alto-tra2-88-j_desc+18
	
                        FIN DESARME
	
                        DESARMAR SOLO SI par1>0
				/* tiene parantes centrados */
                    PERFIL 902
                              3*par1 x tra1-xtra-25-j_desc
                              3*par1 x tra2-tra1-e_desc
                              3*par1 x m_alto-tra2-88-j_desc
	
                    SEGUN contravid PERFIL 78,79,8
                                18*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)
                                 6*(par1+1) x tra1-xtra-25-j_desc
                                 6*(par1+1) x tra2-tra1-e_desc
                                 6*(par1+1) x m_alto-tra2-88-j_desc
					PARTE T
                               18*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                                6*(par1+1) x (tra1-xtra-25-j_desc)/1000
                                6*(par1+1) x (tra2-tra1-e_desc)/1000
                                6*(par1+1) x (m_alto-tra2-88-j_desc)/1000
					PARTE UVW
                               18*(par1+1) x (m_ancho/3-202-par1*(e_desc+25))/(par1+1)/1000
                                6*(par1+1) x (tra1-xtra-25-j_desc)/1000
                                6*(par1+1) x (tra2-tra1-e_desc)/1000
                                6*(par1+1) x (m_alto-tra2-88-j_desc)/1000
					PANELES
                       3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x tra1-xtra-25-j_desc+18
					OTROS INTERIORES
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x tra2-tra1-d_vid
                        3*(par1+1) de (m_ancho/3-184-d_vid*par1)/(par1+1) x m_alto-tra2-88-j_desc+18
	
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
                    PERFIL 902
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
                DESARMAR SOLO SI tra1>0 .AND. tra2=0
                PERFIL 902
                  3 x m_ancho/3-138
	
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
                    PERFIL 902
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
	
	
		/* Tiene dos travesanios */
                DESARMAR SOLO SI tra1>0 .AND. tra2>0
                PERFIL 902
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
                    PERFIL 902
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
        DESARMAR SOLO SI marco=1 .OR. marco=2
	PARTE A
	 1 x 2
        FIN DESARME
        DESARMAR SOLO SI marco=3
        PARTE C
	 1 x 2
        FIN DESARME
        PARTE B44
        4 x m_alto/1000
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
	

	PARTE PASADOR
          1 x 4
	PARTE MANIJA
	    1 x 1
	
	DESARMAR SOLO SI cierra_p=1
	    PARTE CIEPTA
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
	
    PARTE B62
		4 x m_alto/1000
	
	
FIN DESARME /* PUERTAS DE TRES HOJAS */
	
PRODUCTO MOPUER	





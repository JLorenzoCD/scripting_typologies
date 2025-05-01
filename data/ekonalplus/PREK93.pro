/* PUERTA DE REBATIR EKONAL HOJA 32 mm. Hoja Corte a 45
                                                                                                                                                                                                                                                                                                                                                                        
/* xtra = posicion de la traviesa principal
/* tra1 = cantidad de traviesas centradas respecto al xtra
/* par1 = cantidad de parantes centrados respecto al xtra

/* El revestimiento automatico solo funciona cuando hay un xtra!!!!
/* ahora funciona tambien cuando no hay xtra, pero en toda la puerta  02/06
/* Marco */

CALCULOS
   tra2:=0
FIN CALCULOS


SEGUN marco PERFIL 6769,6772
    CORTES A 45:
       1 x m_ancho
    CORTES A 90 Y 45:        
       2 x m_alto

DESARMAR SOLO SI n_hojas=1
/* si hoja_90 = 1, la hoja se corta a recto, caso contrario
/* se corta a 45 grados */

        DESARMAR SOLO SI hoja_90=1
	CORTES A RECTO:
	/* Parantes - Hoja */
	PERFIL 6770
	    2 x m_alto-33
	/* Zocalo y Cabezal - Hoja */
	PERFIL 6557
		 2 x m_ancho-174
        FIN DESARME
        DESARMAR SOLO SI hoja_90=0
	CORTES A 45:
	/* Parantes - Hoja */
	PERFIL 6770
	    2 x m_alto-33
	/* Zocalo y Cabezal - Hoja */
	PERFIL 6770
	    2 x m_ancho-55
        PARTE E74
	    1 x 4
        PARTE D
	    1 x 16
        FIN DESARME 
CORTES A RECTO:
/* Tiene travesaño principal*/
        DESARMAR SOLO SI xtra>0
    /* Travesaño principal - Hoja */	
	 PERFIL 6559
		  1 x m_ancho-174
	/* Contravidrios */
		PERFIL 8
         2 x m_ancho-200
         2 x xtra-24-88
		PARTE T
         2 x (m_ancho-200)/1000
         2 x (xtra-24-88)/1000
		PARTE UVW
         2 x (m_ancho-200)/1000
         2 x (xtra-24-88)/1000

                VIDRIOS
                DESARMAR SOLO SI tipo_rev = 1
                        1 de m_ancho-183 x xtra-88
                FIN DESARME
                DESARMAR SOLO SI tipo_rev = 2
                        PRODUCTO REVET , 1 de m_ancho-183 x xtra-88
                FIN DESARME
                DESARMAR SOLO SI tipo_rev = 3
                        PRODUCTO REV688, 1 de m_ancho-183 x xtra-88
                FIN DESARME
	/* No tiene travesanios centrados */
                DESARMAR SOLO SI tra1=0
                        DESARMAR SOLO SI par1=0
			/* No tiene parantes centrados */
	 		/* Contravidrios */
				PERFIL 8
                    2 x m_ancho-200
                     2 x m_alto-xtra-24-64
				PARTE T
                    2 x (m_ancho-200)/1000
                     2 x (m_alto-xtra-24-64)/1000
				PARTE UVW
                    2 x (m_ancho-200)/1000
                     2 x (m_alto-xtra-24-64)/1000
				PANELES
                 1 de m_ancho-183 x m_alto-xtra-119
                        FIN DESARME
                        DESARMAR SOLO SI par1>0
			/* tiene parantes centrados */
				PERFIL 6559
                    par1 x m_alto-xtra-24-88
	 			PERFIL 8
                     2*(par1+1) x (m_ancho-200-73*par1)/(par1+1)
                     2*(par1+1) x m_alto-xtra-24-64
				PARTE T
                     2*(par1+1) x (m_ancho-200-73*par1)/(par1+1)/1000
                     2*(p  ar1+1) x (m_alto-xtra-24-64)/1000
				PARTE UVW
                     2*(par1+1) x (m_ancho-200-73*par1)/(par1+1)/1000
                     2*(par1+1) x (m_alto-xtra-24-64)/1000
				PANELES
                     par1+1 de (m_ancho-183-55*par1)/(par1+1) x m_alto-xtra-119

                        FIN DESARME
                FIN DESARME

	/* Tiene travesanios centrados */
                DESARMAR SOLO SI tra1>0
	 		PERFIL 6559
		  		tra1 x m_ancho-174
                        DESARMAR SOLO SI par1=0
			/* No tiene parantes centrados */
	 		/* Contravidrios */
				PERFIL 8
                     2*(tra1+1) x m_ancho-200
                     2*(tra1+1) x (m_alto-xtra-24-88-48*tra1)/(tra1+1)
				PARTE T
                     2*(tra1+1) x (m_ancho-200)/1000
                     2*(tra1+1) x (m_alto-xtra-24-88-48*tra1)/(tra1+1)/1000
				PARTE UVW
                     2*(tra1+1) x (m_ancho-200)/1000
                     2*(tra1+1) x (m_alto-xtra-24-88-48*tra1)/(tra1+1)/1000
				PANELES
                     tra1+1 de m_ancho-183 x (m_alto-xtra-119-55*tra1)/(tra1+1)

                        FIN DESARME
                        DESARMAR SOLO SI par1>0
			/* tiene parantes centrados */
				PERFIL 6559
                    par1*(tra1+1) x (m_alto-xtra-24-88-48*tra1)/(tra1+1)
	 			PERFIL 8
                     2*(par1+1)*(tra1+1) x (m_ancho-200-73*par1)/(par1+1)
                     2*(par1+1)*(tra1+1) x (m_alto-xtra-24-64-48*tra1)/(tra1+1)
				PARTE T
                     2*(par1+1)*(tra1+1) x (m_ancho-200-73*par1)/(par1+1)/1000
                     2*(par1+1)*(tra1+1) x (m_alto-xtra-24-64-48*tra1)/(tra1+1)/1000
				PARTE UVW
                     2*(par1+1)*(tra1+1) x (m_ancho-200-73*par1)/(par1+1)/1000
          2*(par1+1)*(tra1+1) x (m_alto-xtra-24-64-48*tra1)/(tra1+1)/1000
				PANELES
                           CALCULOS
                           vid_h:=(m_ancho-183-55*par1)/(par1+1)
                           vid_v:=(m_alto-xtra-119-55*tra1)/(tra1+1)
                           FIN CALCULOS

                        (tra1+1)*(par1+1) de vid_h x vid_v

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
				PERFIL 8
                    2 x m_ancho-200
                     2 x m_alto-64-88
				PARTE T
                    2 x (m_ancho-200)/1000
                     2 x (m_alto-64-88)/1000
				PARTE UVW
                    2 x (m_ancho-200)/1000
                     2 x (m_alto-64-88)/1000

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
                        FIN DESARME

			DESARMAR SOLO SI par1>0
			/* tiene parantes centrados */
				PERFIL 6559
                    par1 x m_alto-64-88
	 			PERFIL 8
                     2*(par1+1) x (m_ancho-200-73*par1)/(par1+1)
                     2*(par1+1) x m_alto-64-88
				PARTE T
                     2*(par1+1) x (m_ancho-200-73*par1)/(par1+1)/1000
                     2*(par1+1) x (m_alto-64-88)/1000
				PARTE UVW
                     2*(par1+1) x (m_ancho-200-73*par1)/(par1+1)/1000
                     2*(par1+1) x (m_alto-64-88)/1000

				VIDRIOS
                                DESARMAR SOLO SI tipo_rev=1 
                                par1+1 de (m_ancho-183-55*par1)/(par1+1) x m_alto-159
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev=2 
                PRODUCTO REVET , par1+1 de (m_ancho-183-55*par1)/(par1+1) x m_alto-159
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev=3 
                PRODUCTO REV688, par1+1 de (m_ancho-183-55*par1)/(par1+1) x m_alto-159
                                FIN DESARME
                        FIN DESARME
                FIN DESARME

	/* Tiene travesanios centrados */
                DESARMAR SOLO SI tra1>0
	 		PERFIL 6559
		  		tra1 x m_ancho-174
			DESARMAR SOLO SI par1=0
			/* No tiene parantes centrados */
	 		/* Contravidrios */
				PERFIL 8
                     2*(tra1+1) x m_ancho-200
                     2*(tra1+1) x (m_alto-64-88-48*tra1)/(tra1+1)
				PARTE T
                     2*(tra1+1) x   (m_ancho-200)/1000
                     2*(tra1+1) x (m_alto-64-88-48*tra1)/(tra1+1)/1000
				PARTE UVW
                     2*(tra1+1) x (m_ancho-200)/1000
                     2*(tra1+1) x (m_alto-64-88-48*tra1)/(tra1+1)/1000

				VIDRIOS
                                DESARMAR SOLO SI tipo_rev=1
                    tra1+1 de m_ancho-183 x (m_alto-160.5-55*tra1)/(tra1+1)
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev=2
                    PRODUCTO REVET , tra1+1 de m_ancho-183 x (m_alto-160.5-55*tra1)/(tra1+1)
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev=3
                    PRODUCTO REV688, tra1+1 de m_ancho-183 x (m_alto-160.5-55*tra1)/(tra1+1)
                                FIN DESARME
			FIN DESARME
			DESARMAR SOLO SI par1>0
			/* tiene parantes centrados */
				PERFIL 6559
                    par1*(tra1+1) x (m_alto-64-88-48*tra1)/(tra1+1)
	 			PERFIL 8
                     2*(par1+1)*(tra1+1) x (m_ancho-200-73*par1)/(par1+1)
                     2*(par1+1)*(tra1+1) x (m_alto-64-88-48*tra1)/(tra1+1)
				PARTE T
                     2*(par1+1)*(tra1+1) x (m_ancho-200-73*par1)/(par1+1)/1000
                     2*(par1+1)*(tra1+1) x (m_alto-64-88-48*tra1)/(tra1+1)/1000
				PARTE UVW
                     2*(par1+1)*(tra1+1) x (m_ancho-200-73*par1)/(par1+1)/1000
                     2*(par1+1)*(tra1+1) x (m_alto-64-88-48*tra1)/(tra1+1)/1000

                        	VIDRIOS
                        CALCULOS
                        vid_h:=(m_ancho-183-55*par1)/(par1+1)
                        vid_v:=(m_alto-160.5-55*tra1)/(tra1+1)
                        FIN CALCULOS
                                DESARMAR SOLO SI tipo_rev=1
                                (par1+1)*(tra1+1) de vid_h x vid_v
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev=2
                                PRODUCTO REVET , (par1+1)*(tra1+1) de vid_h x vid_v
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev=3
                                PRODUCTO REV688, (par1+1)*(tra1+1) de vid_h x vid_v
                                FIN DESARME
			FIN DESARME
                FIN DESARME
        FIN DESARME

        DESARMAR SOLO SI n_hojas=1
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
        PARTE H66
         1 x 3
        PARTE H
         1 x m_ancho/1000
         2 x m_alto/1000

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

        DESARMAR SOLO SI caja_p>1
    PARTE CAJAP
        1 x 1
        FIN DESARME

/* Tornillos de sujecion */
PARTE I
1 x 8+4*tra1+4*par1+4*tra1*par1
        DESARMAR SOLO SI xtra>0
    1 x 4
        FIN DESARME

PARTE T
	2 x m_ancho/1000 + m_alto/1000
PARTE UVW
	2 x m_ancho/1000 + m_alto/1000

PARTE B71
	4 x m_alto/1000

FIN DESARME
FIN DESARME



/* (((((((((((((((((((((((((((((($$$$$$%%%%%&&&&&&)))))))))))))))))))))))))))) */
                
DESARMAR SOLO SI n_hojas=2
/* si hoja_90 = 1, la hoja se corta a recto, caso contrario
/* se corta a 45 grados */

        DESARMAR SOLO SI hoja_90=1
	CORTES A RECTO:
	/* Parantes - Hoja */
	PERFIL 6770
        4 x m_alto-33
	/* Zocalo y Cabezal - Hoja */
	PERFIL 6557
         4 x (m_ancho-174-124)/2
        FIN DESARME

        DESARMAR SOLO SI hoja_90=0
	CORTES A 45:
	/* Parantes - Hoja */
	PERFIL 6770
        4 x m_alto-33
	/* Zocalo y Cabezal - Hoja */
	PERFIL 6770
        4 x (m_ancho-55)/2
     PARTE E74
        1 x 8
     PARTE D
        1 x 32
        FIN DESARME 

CORTES A RECTO:

/* Tiene travesaño principal*/
        DESARMAR SOLO SI xtra>0

    /* Travesaño principal - Hoja */	
	 PERFIL 6559
          2 x (m_ancho-174-124)/2
	/* Contravidrios */
		PERFIL 8
         4 x (m_ancho-200-150)/2
         4 x xtra-24-63
		PARTE T
         2 x (xtra-200-150)/1000
         4 x (m_alto-24-88)/1000
		PARTE UVW
         2 x (m_ancho-200-150)/1000
         4 x (xtra-24-88)/1000
                                VIDRIOS
                DESARMAR SOLO SI tipo_rev=1
                        2 de (m_ancho-183-131)/2 x xtra-95
                FIN DESARME
                DESARMAR SOLO SI tipo_rev = 2
                        PRODUCTO REVET , 2 de (m_ancho-183-131)/2 x m_alto-xtra-95-24
                FIN DESARME
                DESARMAR SOLO SI tipo_rev = 3
                        PRODUCTO REV688, 2 de (m_ancho-183-131)/2 x m_alto-xtra-95-24
                FIN DESARME


	/* No tiene travesanios centrados */

                DESARMAR SOLO SI tra1=0
                        DESARMAR SOLO SI par1=0
			/* No tiene parantes centrados */
	 		/* Contravidrios */
				PERFIL 8
                     4 x (m_ancho-200-150)/2
                     4 x m_alto-xtra-24-88
				PARTE T
                     2 x (m_ancho-200-150)/1000
                     4 x (m_alto-xtra-24-64)/1000
				PARTE UVW
                     2 x (m_ancho-200-150)/1000
                     4 x (m_alto-xtra-24-64)/1000
                                PANELES
                                2 de (m_ancho-183-131)/2 x m_alto-xtra-95-24
                        FIN DESARME

                        DESARMAR SOLO SI par1>0
			/* tiene parantes centrados */
				PERFIL 6559
                  2*par1 x m_alto-xtra-24-88
	 			PERFIL 8
                     4*(par1+1) x (m_ancho-200-150-2*73*par1)/(2*(par1+1))
                     4*(par1+1) x m_alto-xtra-24-88
				PARTE T
                     2*4*(par1+1) x (m_ancho-200-150-73*par1)/(par1+1)/1000
                     2*4*(par1+1) x (m_alto-xtra-24-64)/1000
				PARTE UVW
                     2*4*(par1+1) x (m_ancho-200-150-73*par1)/(par1+1)/1000
                     2*4*(par1+1) x (m_alto-xtra-24-64)/1000
				PANELES
                   2*(par1+1) de (m_ancho-183-131-2*55*par1)/(2*(par1+1)) x m_alto-xtra-119
                        FIN DESARME
                FIN DESARME

	/* Tiene travesanios centrados */
                DESARMAR SOLO SI tra1>0
	 		PERFIL 6559
               2*tra1 x (m_ancho-174-124)/(n_hojas)
                        DESARMAR SOLO SI par1=0
			/* No tiene parantes centrados */
	 		/* Contravidrios */
				PERFIL 8
                     4*(tra1+1) x (m_ancho-200-150)/2
                     4*(tra1+1) x (m_alto-xtra-24-88-48*tra1)/(tra1+1)
				PARTE T
                     2*(tra1+1) x (m_ancho-200-150)/1000
                     4*(tra1+1) x (m_alto-xtra-24-88-48*tra1)/(tra1+1)/1000
				PARTE UVW
                     2*(tra1+1) x (m_ancho-200-150)/1000
                     4*(tra1+1) x (m_alto-xtra-24-88-48*tra1)/(tra1+1)/1000
				PANELES
                   2*(tra1+1) de (m_ancho-183-131)/2 x (m_alto-xtra-119-55*tra1)/(tra1+1)

                        FIN DESARME
                        DESARMAR SOLO SI par1>0
			/* tiene parantes centrados */
				PERFIL 6559
                   2*par1*(tra1+1) x (m_alto-xtra-24-88-48*tra1)/(2*(tra1+1))
	 			PERFIL 8
                     4*(par1+1)*(tra1+1) x (m_ancho-200-150-2*73*par1)/(2*(par1+1))
                     4*(par1+1)*(tra1+1) x (m_alto-xtra-24-88-48*tra1)/(tra1+1)
				PARTE T
                     2*(par1+1)*(tra1+1) x (m_ancho-200-73*par1)/(par1+1)/1000
                     2*(par1+1)*(tra1+1) x (m_alto-xtra-24-64-48*tra1)/(tra1+1)/1000
				PARTE UVW
                     2*(par1+1)*(tra1+1) x (m_ancho-200-73*par1)/(par1+1)/1000
                     2*(par1+1)*(tra1+1) x (m_alto-xtra-24-64-48*tra1)/(tra1+1)/1000
				PANELES
                     CALCULOS
                     vid_h:=(m_ancho-183-131-2*55*par1)/(2*(par1+1))
                     vid_v:=(m_alto-xtra-119-55*tra1)/(tra1+1)
                     FIN CALCULOS

        2*((tra1+1)*(par1+1)) de vid_h x vid_v 

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
				PERFIL 8
                    4 x (m_ancho-200-150)/2
                     4 x m_alto-64-88
				PARTE T
                    4 x (m_ancho-200-150)/1000
                     4 x (m_alto-64-88)/1000
				PARTE UVW
                    2 x (m_ancho-200-150)/1000
                     2 x (m_alto-64-88)/1000
                                DESARMAR SOLO SI tipo_rev=1
                                VIDRIOS
                                 2 de (m_ancho-183-131)/2 x m_alto-159
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 2
                            PRODUCTO REVET , 2 de (m_ancho-183-131)/2 x m_alto-159
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev = 3
                            PRODUCTO REV688, 2 de (m_ancho-183-131)/2 x m_alto-159
                                FIN DESARME

                        FIN DESARME

                        DESARMAR SOLO SI par1>0
			/* tiene parantes centrados */
				PERFIL 6559
                   2*par1 x m_alto-64-88
	 			PERFIL 8
                     4*(par1+1) x (m_ancho-200-150-2*73*par1)/(2*(par1+1))
                     4*(par1+1) x m_alto-64-88
				PARTE T
                     4*(par1+1) x (m_ancho-200-150-73*par1)/(2*(par1+1))/1000
                     4*(par1+1) x (m_alto-64-88)/1000
				PARTE UVW
                     4*(par1+1) x (m_ancho-200-150-73*par1)/(2*(par1+1))/1000
                     4*(par1+1) x (m_alto-64-88)/1000
                CALCULOS
                vid_h:=(m_ancho-183-131-55*2*par1)/(2*(par1+1))
              /*  vid_v:=
                FIN CALCULOS
				VIDRIOS

                                DESARMAR SOLO SI tipo_rev=1
                               2*(par1+1) de vid_h x m_alto-159
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev=2
              PRODUCTO REVET , 2*(par1+1) de vid_h x m_alto-159
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev=3
              PRODUCTO REV688, 2*(par1+1) de vid_h x m_alto-159
                                FIN DESARME
                        FIN DESARME
                FIN DESARME
	/* Tiene travesanios centrados */
                DESARMAR SOLO SI tra1>0
	 		PERFIL 6559
              2*tra1 x (m_ancho-174-124)/n_hojas
                        DESARMAR SOLO SI par1=0
			/* No tiene parantes centrados */
	 		/* Contravidrios */
				PERFIL 8
                     4*(tra1+1) x (m_ancho-200-150)/n_hojas
                     4*(tra1+1) x (m_alto-64-88-48*tra1)/(tra1+1)
				PARTE T
                     4*(tra1+1) x (m_ancho-200-150)/1000
                     4*(tra1+1) x (m_alto-64-88-48*tra1)/(tra1+1)/1000
				PARTE UVW
                     4*(tra1+1) x (m_ancho-200-150)/1000
                     4*(tra1+1) x (m_alto-64-88-48*tra1)/(tra1+1)/1000
                                CALCULOS
                                vid_h:=(m_ancho-183-131-55*2*par1)/(2*(par1+1))
                              /*  vid_v:=
                                FIN CALCULOS
				VIDRIOS
                                DESARMAR SOLO SI tipo_rev=1
                               2*(par1+1) de vid_h x m_alto-159
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev=2
              PRODUCTO REVET , 2*(par1+1) de vid_h x m_alto-159
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev=3
              PRODUCTO REV688, 2*(par1+1) de vid_h x m_alto-159
                                FIN DESARME
                        FIN DESARME

                        DESARMAR SOLO  par1>0 
			/* tiene parantes centrados */
				PERFIL 6559
                     2*(par1*(tra1+1)) x (m_alto-64-88-48*tra1)/(tra1+1)
	 			PERFIL 8
                     4*(par1+1)*(tra1+1) x (m_ancho-200-150-2*73*par1)/(2*(par1+1))
                     4*(par1+1)*(tra1+1) x (m_alto-64-88-48*tra1)/(tra1+1)
				PARTE T
                     4*(par1+1)*(tra1+1) x (m_ancho-200-150-73*par1)/(2*par1+1)/1000
                     4*(par1+1)*(tra1+1) x (m_alto-64-88-48*tra1)/(tra1+1)/1000
				PARTE UVW
                     4*(par1+1)*(tra1+1) x (m_ancho-200-150-73*par1)/(2*par1+1)/1000
                     4*(par1+1)*(tra1+1) x (m_alto-64-88-48*tra1)/(tra1+1)/1000

                   CALCULOS
                   vid_h:=(m_ancho-183-131-2*55*par1)/(2*(par1+1))
                   vid_v:=(m_alto-160.5-55*tra1)/(tra1+1)
                   FIN CALCULOS

                        	VIDRIOS
                                DESARMAR SOLO SI tipo_rev=1
                        2*((par1+1)*(tra1+1)) de vid_h x vid_v
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev=2
                        PRODUCTO REVET , 2*((par1+1)*(tra1+1)) de vid_h x vid_v
                                FIN DESARME
                                DESARMAR SOLO SI tipo_rev=3
                        PRODUCTO REV688, 2*((par1+1)*(tra1+1)) de vid_h x vid_v
                                FIN DESARME
                        FIN DESARME
                FIN DESARME
        FIN DESARME
        DESARMAR SOLO SI n_hojas=2
/* Accesorios */
        DESARMAR SOLO SI marco=1
	PARTE A
         1 x 2
        FIN DESARME
        DESARMAR SOLO SI marco=2
	PARTE C
         1 x 2
        FIN DESARME

PARTE PASADOR
	 1 x 2
PARTE H66
    1 x 6
PARTE H
    1 x m_ancho/1000
    2 x m_alto/1000

/*Cerradura*/
SEGUN tipo_cerr PARTE 3001,5006,6624
    1 x 1

        DESARMAR SOLO SI manijon>1
    SEGUN manijon PARTE nada,DOR375,MANICU,MANIJO,MANIJU
        1 x 4
        FIN DESARME

PARTE MANIJA
    1 x 1

        DESARMAR SOLO SI cierra_p>0
    PARTE CIEPTA
        1 x 1
        FIN DESARME

        DESARMAR SOLO SI caja_p>1
    PARTE CAJAP
        1 x 2
        FIN DESARME

/* Tornillos de sujecion */
PARTE I
n_hojas x 8+4*tra1+4*par1+4*tra1*par1
        DESARMAR SOLO SI xtra>0
    1 x 8
        FIN DESARME

/*PARTE T
	/*4 x m_ancho/1000 + m_alto/1000
	/*4 x m_ancho*tra1/1000 + m_alto*par1/1000
PARTE UVW
	/*2 x m_ancho/1000 + m_alto/1000
      /*4 x m_ancho*tra1/1000 + m_alto*par1/1000
PARTE B71
	4 x m_alto/1000


FIN DESARME


PRODUCTO MOPUER



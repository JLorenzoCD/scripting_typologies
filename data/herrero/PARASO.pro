/* Parasol perfil 4833 con tablilla 36   o 5489 y parantes centrados*/
/* Modificado el 14/12/98 */

/* MARCO */
   CORTES A 45:
   PERFIL T4833
      2 x m_ancho
      2 x m_alto

    CORTES A RECTO:
 /* SIN PARENTES*/
     DESARMAR SOLO SI par1=0	
 	DESARMAR SOLO SI tipo_ta=1
    /* DIRECCION HORIZONTAL */
	    DESARMAR SOLO SI direccion = 1
		PERFIL 36
         INT((m_alto-80)/128) x m_ancho-80-36

      SEGUN tipo_pla PERFIL 47,B3727
		 1 x m_alto-80

		/*PARTES*/
		PARTE C7
		    2 x INT((m_alto-80)/128)
		PARTE II 
		    INT((m_alto-80)/128) x (m_ancho-80-36)/1000
         DESARMAR SOLO SI regula=1
            PARTE C15
               1 x INT((m_alto-80)/128)
         FIN DESARME

	     FIN DESARME

    /* DIRECCION VERTICAL */
	    DESARMAR SOLO SI direccion = 2
		PERFIL 36
		 INT((m_ancho-80)/128) x m_alto-80-36 
         DESARMAR SOLO SI regula=1
            PARTE C15
               1 x INT((m_ancho-80)/128)
         FIN DESARME

       SEGUN tipo_pla PERFIL 47,B3727
         1 x m_ancho-80

		/*PARTES*/
		PARTE C7
		    2 x INT((m_ancho-80)/128)
		PARTE II 
		    INT((m_ancho-80)/128) x (m_alto-80-36)/1000
	     FIN DESARME

		DESARMAR SOLO SI tipo_acc=1
			PARTE ACRC
		   	 1 x 1
		FIN DESARME
		DESARMAR SOLO SI tipo_acc=2
			PARTE AMT
		 	   1 x 1
		FIN DESARME
	FIN DESARME

	DESARMAR SOLO SI tipo_ta=2
    /* DIRECCION HORIZONTAL */
	    DESARMAR SOLO SI direccion = 1
		PERFIL 5489
		 INT((m_alto-80)/136) x m_ancho-80

       SEGUN tipo_pla PERFIL 47,B3727
		 1 x m_alto-80

		PARTE H34
		    2 x INT((m_alto-80)/136)
	     FIN DESARME

    /* DIRECCION VERTICAL */
	    DESARMAR SOLO SI direccion = 2
		PERFIL 5489
		 INT((m_ancho-80)/136) x m_alto-80

                SEGUN tipo_pla PERFIL 47,B3727
		 1 x m_ancho-80

		PARTE H34
		    2 x INT((m_ancho-80)/136)
	     FIN DESARME

		/*PARTES COMUNES*/
		DESARMAR SOLO SI tipo_acc=1
			PARTE ACRC
		   	 1 x 1
		FIN DESARME
		DESARMAR SOLO SI tipo_acc=2
			PARTE AMT
		 	   1 x 1
		FIN DESARME
	FIN DESARME
    FIN DESARME		 
		
/* CON PARENTES*/

    DESARMAR SOLO SI par1!=0	
        PERFIL T4833
          par1 x m_alto-80

        PARTE U9040
	  2 x par1

	DESARMAR SOLO SI tipo_ta=1
      /* DIRECCION HORIZONTAL */
	    DESARMAR SOLO SI direccion = 1
		PERFIL 36
		 (par1+1)*INT((m_alto-80)/128) x (m_ancho-80-36*(1+par1)-40*par1)/(1+par1)

                SEGUN tipo_pla PERFIL 47,B3727
		 (par1+1) x (m_alto-80)

		PARTE C7
		    (par1+1)*2 x INT((m_alto-80)/128)
		PARTE II 
		    (par1+1)*INT((m_alto-80)/128) x ((m_ancho-80-36*(1+par1)-40*par1)/(1+par1))/1000
		DESARMAR SOLO SI regula=1
			PARTE C15
             (par1+1) x INT((m_alto-80)/128)
		FIN DESARME
	     FIN DESARME

      /* DIRECCION VERTICAL */
	    DESARMAR SOLO SI direccion = 2
		PERFIL 36
		 (par1+1)*INT(((m_ancho-80-40*par1)/(1+par1))/128) x (m_alto-80-36)

                SEGUN tipo_pla PERFIL 47,B3727
		 (par1+1) x ((m_ancho-80-40*par1)/(1+par1))-80

		PARTE C7
		    (par1+1)*2 x INT(((m_ancho-80-40*par1)/(1+par1))/128)
		PARTE II 
		    (par1+1)*INT(((m_ancho-80-40*par1)/(1+par1))/128) x (m_alto-80-36) /1000
		DESARMAR SOLO SI regula=1
			PARTE C15
             (par1+1) x INT((m_ancho-80)/128)
		FIN DESARME
	     FIN DESARME

		/*PARTES COMUNES */

		DESARMAR SOLO SI tipo_acc=1
			PARTE ACRC
		   	 (par1+1) x 1
		FIN DESARME
		DESARMAR SOLO SI tipo_acc=2
			PARTE AMT
		 	   (par1+1) x 1
		FIN DESARME
        FIN DESARME		 

	DESARMAR SOLO SI tipo_ta=2
          /* DIRECCION HORIZONTAL */
	    DESARMAR SOLO SI direccion = 1
		PERFIL 5489
		 (par1+1)*INT((m_alto-80)/136) x (m_ancho-80-40*par1)/(1+par1)

                SEGUN tipo_pla PERFIL 47,B3727
		 (par1+1) x m_alto-80

		PARTE H34
		    (par1+1)*2 x INT((m_alto-80)/136)
            FIN DESARME

          /* DIRECCION VERTICAL */
	    DESARMAR SOLO SI direccion = 2
		PERFIL 5489
		 (par1+1)*INT(((m_ancho-80-40*par1)/(1+par1))/136) x (m_alto-80)

                SEGUN tipo_pla PERFIL 47,B3727
		 (par1+1) x INT(((m_ancho-80-40*par1)/(1+par1))/136)

		PARTE H34
		    (par1+1)*2 x INT(((m_ancho-80-40*par1)/(1+par1))/136)
            FIN DESARME

		/*PARTES COMUNES VERTICALES */
		DESARMAR SOLO SI tipo_acc=1
			PARTE ACRC
		   	 (par1+1) x 1
		FIN DESARME
		DESARMAR SOLO SI tipo_acc=2
			PARTE AMT
		 	   (par1+1) x 1
		FIN DESARME
	FIN DESARME
    FIN DESARME		 
		

/* PARTES COMUNES*/


PARTE U9040
    1 x 4
PARTE D
    1 x 36
PARTE S4 
    2 x 2+INT((m_ancho-200)/500)
    2 x 2+INT((m_alto-200)/500)

n_hojas:=1


PRODUCTO MOPOST




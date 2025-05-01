/* VIDRIO REPARTIDO CON MARCO Y TRAVESANIOS VARIABLES BSE008*/

CALCULOS
   m_ancho:=m_ancho-8
   m_alto:=m_alto-8
FIN CALCULOS

   /* MARCO */
   CORTES A 45:
   PERFIL 800

      2 x m_ancho
      2 x m_alto
   CORTES A RECTO:
   SEPARACION


   /* SIN PARANTES NI TRAVIESAS */
   DESARMAR SOLO SI vr3_tra1=0 .AND. vr3_par1=0
      OTROS INTERIORES
         SEPARACION
            1 de m_ancho-36 x m_alto-36
      M.OBRA 0.35
   FIN DESARME

   /* Parantes y ningun travesanio */
   DESARMAR SOLO SI vr3_tra1=0 .AND. vr3_par1!=0
        DESARMAR SOLO SI vr3_par1!=0 .AND. vr3_par2=0 .AND. vr3_par3 = 0
          PERFIL 801
               1 x m_alto-32
           OTROS INTERIORES
                1 de  vr3_par1-18-10.5 x m_alto-36
                1 de  m_ancho-vr3_par1-10-10.5 x m_alto-36
			M.OBRA 0.35+0.1
      FIN DESARME
        DESARMAR SOLO SI vr3_par1!=0 .AND. vr3_par2!=0 .AND. vr3_par3 = 0
          PERFIL 801
               2 x m_alto-32
           OTROS INTERIORES
                1 de  vr3_par1-18-10.5 x m_alto-36
                1 de  vr3_par2-vr3_par1-10.5-10.5 x m_alto-36
                1 de  m_ancho-vr3_par2-10-10.5 x m_alto-36
			M.OBRA 0.35+0.2
      FIN DESARME
        DESARMAR SOLO SI vr3_par1!=0 .AND. vr3_par2!=0 .AND. vr3_par3 != 0
          PERFIL 801
               3 x m_alto-32
           OTROS INTERIORES
                1 de  vr3_par1-18-10.5 x m_alto-36
                1 de  vr3_par2-vr3_par1-10.5-10.5 x m_alto-36
                1 de  vr3_par3-vr3_par2-10.5-10.5 x m_alto-36
                1 de  m_ancho-vr3_par3-10-10.5 x m_alto-36
			M.OBRA 0.35+0.3
      FIN DESARME

	FIN DESARME

   /* Travesanios y ningun parante*/
    DESARMAR SOLO SI vr3_tra1!=0 .AND. vr3_par1=0
    DESARMAR SOLO SI vr3_tra1!=0 .AND. vr3_tra2=0 .AND. vr3_tra3=0
			PERFIL 801
         	1 x m_ancho-32
          OTROS INTERIORES
                1 de  m_ancho-36 x vr3_tra1-18-10.5
                1 de  m_ancho-36 x m_alto-vr3_tra1-10-10.5
			M.OBRA 0.35+0.1
		FIN DESARME
        DESARMAR SOLO SI vr3_tra1!=0 .AND. vr3_tra2!=0 .AND. vr3_tra3=0
			PERFIL 801
         	2 x m_ancho-32
          OTROS INTERIORES
                1 de  m_ancho-36 x vr3_tra1-18-10.5
                1 de  m_ancho-36 x vr3_tra2-vr3_tra1-10.5-10.5
                1 de  m_ancho-36 x m_alto-vr3_tra2-10-10.5
			M.OBRA 0.35+0.2
		FIN DESARME
        DESARMAR SOLO SI vr3_tra1!=0 .AND. vr3_tra2!=0 .AND. vr3_tra3!=0
			PERFIL 801
         	3 x m_ancho-32
          OTROS INTERIORES
                1 de  m_ancho-36 x vr3_tra1-18-10.5
                1 de  m_ancho-36 x vr3_tra2-vr3_tra1-10.5-10.5
                1 de  m_ancho-36 x vr3_tra3-vr3_tra2-10.5-10.5
                1 de  m_ancho-36 x m_alto-vr3_tra3-10-10.5
			M.OBRA 0.35+0.3
		FIN DESARME


   FIN DESARME

   /* Parantes y Travesanios */
    DESARMAR SOLO SI vr3_par1!=0 .AND. vr3_tra1!=0

		/* 1 parante */
        DESARMAR SOLO SI vr3_par1!=0 .AND. vr3_par2=0 .AND. vr3_par3=0
            DESARMAR SOLO SI vr3_tra1!=0 .AND. vr3_tra2=0 .AND. vr3_tra3=0
				PERFIL 801
					1 x m_ancho-32
                    1 x vr3_tra1-15.5-5.5
                    1 x m_alto-vr3_tra1-15.5-5.5
                OTROS INTERIORES
                1 de vr3_par1-18-10.5 x vr3_tra1-18-10.5
                    1 de m_ancho-vr3_par1-10-10.5 x vr3_tra1-18-10.5
                    1 de vr3_par1-18-10.5 x m_alto-vr3_tra1-10-10.5
                    1 de m_ancho-vr3_par1-10-10.5 x m_alto-vr3_tra1-10-10.5
				M.OBRA 0.35+0.1+0.1
   		FIN DESARME
            DESARMAR SOLO SI vr3_tra1!=0 .AND. vr3_tra2!=0 .AND. vr3_tra3=0
				PERFIL 801
					2 x m_ancho-32
                    1 x vr3_tra1-15.5-5.5
                    1 x vr3_tra2-vr3_tra1-5.5-5.5
                    1 x m_alto-vr3_tra2-15.5-5.5
                OTROS INTERIORES
                1 de vr3_par1-18-10.5 x vr3_tra1-18-10.5
                    1 de m_ancho-vr3_par1-10-10.5 x vr3_tra1-18-10.5
                    1 de vr3_par1-18-10.5 x vr3_tra2-vr3_tra1-10.5-10.5
                    1 de m_ancho-vr3_par1-10-10.5 x vr3_tra2-vr3_tra1-10.5-10.5
                    1 de vr3_par1-18-10.5 x m_alto-vr3_tra2-10-10.5
                    1 de m_ancho-vr3_par1-10-10.5 x m_alto-vr3_tra2-10-10.5
				M.OBRA 0.35+3*0.1
   		FIN DESARME
            DESARMAR SOLO SI vr3_tra1!=0 .AND. vr3_tra2!=0 .AND. vr3_tra3!=0
				PERFIL 801
					3 x m_ancho-32
                    1 x vr3_tra1-15.5-5.5
                    1 x vr3_tra2-vr3_tra1-5.5-5.5
                    1 x vr3_tra3-vr3_tra2-5.5-5.5
                    1 x m_alto-vr3_tra3-15.5-5.5
                OTROS INTERIORES
                1 de vr3_par1-18-10.5 x vr3_tra1-18-10.5
                    1 de m_ancho-vr3_par1-10-10.5 x vr3_tra1-18-10.5
                    1 de vr3_par1-18-10.5 x vr3_tra2-vr3_tra1-10.5-10.5
                    1 de m_ancho-vr3_par1-10-10.5 x vr3_tra2-vr3_tra1-10.5-10.5
                    1 de vr3_par1-18-10.5 x vr3_tra3-vr3_tra2-10.5-10.5
                    1 de m_ancho-vr3_par1-10-10.5 x vr3_tra3-vr3_tra2-10.5-10.5
                    1 de vr3_par1-18-10.5 x m_alto-vr3_tra3-10-10.5
                    1 de m_ancho-vr3_par1-10-10.5 x m_alto-vr3_tra3-10-10.5
				M.OBRA 0.35+4*0.1
   		FIN DESARME
      FIN DESARME

		/* 2 parantes */
        DESARMAR SOLO SI vr3_par1!=0 .AND. vr3_par2!=0 .AND. vr3_par3=0
            DESARMAR SOLO SI vr3_tra1!=0 .AND. vr3_tra2=0 .AND. vr3_tra3=0
				PERFIL 801
					1 x m_ancho-32
                    2 x vr3_tra1-15.5-5.5
                    2 x m_alto-vr3_tra1-15.5-5.5
                OTROS INTERIORES
                1 de vr3_par1-18-10.5 x vr3_tra1-18-10.5
                    1 de vr3_par2-vr3_par1-10.5-10.5 x vr3_tra1-18-10.5
                    1 de m_ancho-vr3_par2-10-10.5 x vr3_tra1-18-10.5
                    1 de vr3_par1-18-10.5 x m_alto-vr3_tra1-10-10.5
                    1 de vr3_par2-vr3_par1-10.5-10.5 x m_alto-vr3_tra1-10-10.5
                    1 de m_ancho-vr3_par2-10-10.5 x m_alto-vr3_tra1-10-10.5
				M.OBRA 0.35+0.1+0.1+0.1
   		FIN DESARME
            DESARMAR SOLO SI vr3_tra1!=0 .AND. vr3_tra2!=0 .AND. vr3_tra3=0
				PERFIL 801
					2 x m_ancho-32
                    2 x vr3_tra1-15.5-5.5
                    2 x vr3_tra2-vr3_tra1-5.5-5.5
                    2 x m_alto-vr3_tra2-15.5-5.5
                OTROS INTERIORES
                1 de vr3_par1-18-10.5 x vr3_tra1-18-10.5
                    1 de vr3_par2-vr3_par1-10.5-10.5 x vr3_tra1-18-10.5
                    1 de m_ancho-vr3_par2-10-10.5 x vr3_tra1-18-10.5
                    1 de vr3_par1-18-10.5 x vr3_tra2-vr3_tra1-10.5-10.5
                    1 de vr3_par2-vr3_par1-10.5-10.5 x vr3_tra2-vr3_tra1-10.5-10.5
                    1 de m_ancho-vr3_par2-10-10.5 x vr3_tra2-vr3_tra1-10.5-10.5
                    1 de vr3_par1-18-10.5 x m_alto-vr3_tra2-10-10.5
                    1 de vr3_par2-vr3_par1-18-10.5 x m_alto-vr3_tra2-10-10.5
                    1 de m_ancho-vr3_par2-10-10.5 x m_alto-vr3_tra2-10-10.5
				M.OBRA 0.35+4*0.1
   		FIN DESARME
            DESARMAR SOLO SI vr3_tra1!=0 .AND. vr3_tra2!=0 .AND. vr3_tra3!=0
				PERFIL 801
					3 x m_ancho-32
                    2 x vr3_tra1-15.5-5.5
                    2 x vr3_tra2-vr3_tra1-5.5-5.5
                    2 x vr3_tra3-vr3_tra2-5.5-5.5
                    2 x m_alto-vr3_tra3-15.5-5.5
                OTROS INTERIORES
                1 de vr3_par1-18-10.5 x vr3_tra1-18-10.5
                    1 de vr3_par2-vr3_par1-10.5-10.5 x vr3_tra1-18-10.5
                    1 de m_ancho-vr3_par2-10-10.5 x vr3_tra1-18-10.5
                    1 de vr3_par1-18-10.5 x vr3_tra2-vr3_tra1-10.5-10.5
                    1 de vr3_par2-vr3_par1-10.5-10.5 x vr3_tra2-vr3_tra1-10.5-10.5
                    1 de m_ancho-vr3_par2-10-10.5 x vr3_tra2-vr3_tra1-10.5-10.5
                    1 de vr3_par1-18-10.5 x vr3_tra3-vr3_tra2-10.5-10.5
                    1 de vr3_par2-vr3_par1-10.5-10.5 x vr3_tra3-vr3_tra2-10.5-10.5
                    1 de m_ancho-vr3_par2-10-10.5 x vr3_tra3-vr3_tra2-10.5-10.5
                    1 de vr3_par1-18-10.5 x m_alto-vr3_tra3-10-10.5
                    1 de vr3_par2-vr3_par1-10.5-10.5 x m_alto-vr3_tra3-10-10.5
                    1 de m_ancho-vr3_par2-10-10.5 x m_alto-vr3_tra3-10-10.5
				M.OBRA 0.35+5*0.1
   		FIN DESARME
      FIN DESARME

		/* 3 parantes */
        DESARMAR SOLO SI vr3_par1!=0 .AND. vr3_par2!=0 .AND. vr3_par3!=0
            DESARMAR SOLO SI vr3_tra1!=0 .AND. vr3_tra2=0 .AND. vr3_tra3=0
				PERFIL 801
					1 x m_ancho-32
                    3 x vr3_tra1-15.5-5.5
                    3 x m_alto-vr3_tra1-15.5-5.5
                OTROS INTERIORES
                1 de vr3_par1-18-10.5 x vr3_tra1-18-10.5
                    1 de vr3_par2-vr3_par1-10.5-10.5 x vr3_tra1-18-10.5
                    1 de vr3_par3-vr3_par2-10.5-10.5 x vr3_tra1-18-10.5
                    1 de m_ancho-vr3_par3-10-10.5 x vr3_tra1-18-10.5
                    1 de vr3_par1-18-10.5 x m_alto-vr3_tra1-10-10.5
                    1 de vr3_par2-vr3_par1-10.5-10.5 x m_alto-vr3_tra1-10-10.5
                    1 de vr3_par3-vr3_par2-10.5-10.5 x m_alto-vr3_tra1-10-10.5
                    1 de m_ancho-vr3_par3-10-10.5 x m_alto-vr3_tra1-10-10.5
				M.OBRA 0.35+4*0.1
   		FIN DESARME
            DESARMAR SOLO SI vr3_tra1!=0 .AND. vr3_tra2!=0 .AND. vr3_tra3=0
				PERFIL 801
					2 x m_ancho-32
                    3 x vr3_tra1-15.5-5.5
                    3 x vr3_tra2-vr3_tra1-5.5-5.5
                    3 x m_alto-vr3_tra2-15.5-5.5
                OTROS INTERIORES
                1 de vr3_par1-18-10.5 x vr3_tra1-18-10.5
                    1 de vr3_par2-vr3_par1-10.5-10.5 x vr3_tra1-18-10.5
                    1 de vr3_par3-vr3_par2-10.5-10.5 x vr3_tra1-18-10.5
                    1 de m_ancho-vr3_par3-10-10.5 x vr3_tra1-18-10.5
                    1 de vr3_par1-18-10.5 x vr3_tra2-vr3_tra1-10.5-10.5
                    1 de vr3_par2-vr3_par1-10.5-10.5 x vr3_tra2-vr3_tra1-10.5-10.5
                    1 de vr3_par3-vr3_par2-10.5-10.5 x vr3_tra2-vr3_tra1-10.5-10.5
                    1 de m_ancho-vr3_par3-10-10.5 x vr3_tra2-vr3_tra1-10.5-10.5
                    1 de vr3_par1-18-10.5 x m_alto-vr3_tra2-10-10.5
                    1 de vr3_par2-vr3_par1-18-10.5 x m_alto-vr3_tra2-10-10.5
                    1 de vr3_par3-vr3_par2-18-10.5 x m_alto-vr3_tra2-10-10.5
                    1 de m_ancho-vr3_par3-10-10.5 x m_alto-vr3_tra2-10-10.5
				M.OBRA 0.35+5*0.1
   		FIN DESARME
            DESARMAR SOLO SI vr3_tra1!=0 .AND. vr3_tra2!=0 .AND. vr3_tra3!=0
				PERFIL 801
					3 x m_ancho-32
                    3 x vr3_tra1-15.5-5.5
                    3 x vr3_tra2-vr3_tra1-5.5-5.5
                    3 x vr3_tra3-vr3_tra2-5.5-5.5
                    3 x m_alto-vr3_tra3-15.5-5.5
                OTROS INTERIORES
                1 de vr3_par1-18-10.5 x vr3_tra1-18-10.5
                    1 de vr3_par2-vr3_par1-10.5-10.5 x vr3_tra1-18-10.5
                    1 de vr3_par3-vr3_par2-10.5-10.5 x vr3_tra1-18-10.5
                    1 de m_ancho-vr3_par3-10-10.5 x vr3_tra1-18-10.5
                    1 de vr3_par1-18-10.5 x vr3_tra2-vr3_tra1-10.5-10.5
                    1 de vr3_par2-vr3_par1-10.5-10.5 x vr3_tra2-vr3_tra1-10.5-10.5
                    1 de vr3_par3-vr3_par2-10.5-10.5 x vr3_tra2-vr3_tra1-10.5-10.5
                    1 de m_ancho-vr3_par3-10-10.5 x vr3_tra2-vr3_tra1-10.5-10.5
                    1 de vr3_par1-18-10.5 x vr3_tra3-vr3_tra2-10.5-10.5
                    1 de vr3_par2-vr3_par1-10.5-10.5 x vr3_tra3-vr3_tra2-10.5-10.5
                    1 de vr3_par3-vr3_par2-10.5-10.5 x vr3_tra3-vr3_tra2-10.5-10.5
                    1 de m_ancho-vr3_par3-10-10.5 x vr3_tra3-vr3_tra2-10.5-10.5
                    1 de vr3_par1-18-10.5 x m_alto-vr3_tra3-10-10.5
                    1 de vr3_par2-vr3_par1-10.5-10.5 x m_alto-vr3_tra3-10-10.5
                    1 de vr3_par3-vr3_par2-10.5-10.5 x m_alto-vr3_tra3-10-10.5
                    1 de m_ancho-vr3_par3-10-10.5 x m_alto-vr3_tra3-10-10.5
				M.OBRA 0.35+6*0.1
   		FIN DESARME
      FIN DESARME


	FIN DESARME





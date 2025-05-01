/* VIDRIO REPARTIDO CON MARCO Y TRAVESANIOS VARIABLES BSE008*/

CALCULOS
   m_ancho:=m_ancho-8
   m_alto:=m_alto-8
FIN CALCULOS

   /* MARCO */
   CORTES A 45:
   PERFIL 801

      2 x m_ancho
      2 x m_alto
   CORTES A RECTO:
      
   /* SIN PARANTES NI TRAVIESAS */
   DESARMAR SOLO SI vr_tra1=0 .AND. vr_par1=0
      VIDRIOS
            1 de m_ancho-36 x m_alto-36
      M.OBRA 0.35
   FIN DESARME

   /* Parantes y ningun travesanio */
   DESARMAR SOLO SI vr_tra1=0 .AND. vr_par1!=0 
		DESARMAR SOLO SI vr_par1!=0 .AND. vr_par2=0 .AND. vr_par3 = 0
          PERFIL 801
               1 x m_alto-32
	       VIDRIOS
				1 de  vr_par1-18-10.5 x m_alto-36
                                1 de  m_ancho-vr_par1-18-10.5 x m_alto-36
			M.OBRA 0.35+0.1
                 FIN DESARME
		DESARMAR SOLO SI vr_par1!=0 .AND. vr_par2!=0 .AND. vr_par3 = 0
                        PERFIL 801
                                2 x m_alto-32
                        VIDRIOS
				1 de  vr_par1-18-10.5 x m_alto-36
				1 de  vr_par2-vr_par1-10.5-10.5 x m_alto-36
                                1 de  m_ancho-vr_par2-18-10.5 x m_alto-36
			M.OBRA 0.35+0.2
                FIN DESARME
		DESARMAR SOLO SI vr_par1!=0 .AND. vr_par2!=0 .AND. vr_par3 != 0
                        PERFIL 801
                                3 x m_alto-32
                        VIDRIOS
				1 de  vr_par1-18-10.5 x m_alto-36
				1 de  vr_par2-vr_par1-10.5-10.5 x m_alto-36
				1 de  vr_par3-vr_par2-10.5-10.5 x m_alto-36
                                1 de  m_ancho-vr_par3-18-10.5 x m_alto-36
			M.OBRA 0.35+0.3
                FIN DESARME

	FIN DESARME

   /* Travesanios y ningun parante*/
	DESARMAR SOLO SI vr_tra1!=0 .AND. vr_par1=0
                DESARMAR SOLO SI vr_tra1!=0 .AND. vr_tra2=0 .AND. vr_tra3=0
			PERFIL 801
                                1 x m_ancho-32
                        VIDRIOS
				1 de  m_ancho-36 x vr_tra1-18-10.5
                                1 de  m_ancho-36 x m_alto-vr_tra1-18-10.5
			M.OBRA 0.35+0.1
		FIN DESARME
		DESARMAR SOLO SI vr_tra1!=0 .AND. vr_tra2!=0 .AND. vr_tra3=0
			PERFIL 801
                                2 x m_ancho-32
                        VIDRIOS
				1 de  m_ancho-36 x vr_tra1-18-10.5
				1 de  m_ancho-36 x vr_tra2-vr_tra1-10.5-10.5
                                1 de  m_ancho-36 x m_alto-vr_tra2-18-10.5
			M.OBRA 0.35+0.2
		FIN DESARME
		DESARMAR SOLO SI vr_tra1!=0 .AND. vr_tra2!=0 .AND. vr_tra3!=0
			PERFIL 801
                                3 x m_ancho-32
                        VIDRIOS
				1 de  m_ancho-36 x vr_tra1-18-10.5
				1 de  m_ancho-36 x vr_tra2-vr_tra1-10.5-10.5
				1 de  m_ancho-36 x vr_tra3-vr_tra2-10.5-10.5
                                1 de  m_ancho-36 x m_alto-vr_tra3-18-10.5
			M.OBRA 0.35+0.3
		FIN DESARME
        FIN DESARME

   /* Parantes y Travesanios */
	DESARMAR SOLO SI vr_par1!=0 .AND. vr_tra1!=0

		/* 1 parante */
		DESARMAR SOLO SI vr_par1!=0 .AND. vr_par2=0 .AND. vr_par3=0
			DESARMAR SOLO SI vr_tra1!=0 .AND. vr_tra2=0 .AND. vr_tra3=0
				PERFIL 801
					1 x m_ancho-32
					1 x vr_tra1-15.5-5.5
					1 x m_alto-vr_tra1-15.5-5.5
				VIDRIOS
                                        1 de vr_par1-18-10.5 x vr_tra1-18-10.5 
                                        1 de m_ancho-vr_par1-18-10.5 x vr_tra1-18-10.5
                                        1 de vr_par1-18-10.5 x m_alto-vr_tra1-18-10.5
                                        1 de m_ancho-vr_par1-18-10.5 x m_alto-vr_tra1-18-10.5
				M.OBRA 0.35+0.1+0.1
                        FIN DESARME
			DESARMAR SOLO SI vr_tra1!=0 .AND. vr_tra2!=0 .AND. vr_tra3=0
				PERFIL 801
					2 x m_ancho-32
					1 x vr_tra1-15.5-5.5
					1 x vr_tra2-vr_tra1-5.5-5.5
					1 x m_alto-vr_tra2-15.5-5.5
				VIDRIOS
                                        1 de vr_par1-18-10.5 x vr_tra1-18-10.5 
                                        1 de m_ancho-vr_par1-18-10.5 x vr_tra1-18-10.5
					1 de vr_par1-18-10.5 x vr_tra2-vr_tra1-10.5-10.5
                                        1 de m_ancho-vr_par1-18-10.5 x vr_tra2-vr_tra1-10.5-10.5
                                        1 de vr_par1-18-10.5 x m_alto-vr_tra2-18-10.5
                                        1 de m_ancho-vr_par1-18-10.5 x m_alto-vr_tra2-18-10.5
				M.OBRA 0.35+3*0.1
                        FIN DESARME
			DESARMAR SOLO SI vr_tra1!=0 .AND. vr_tra2!=0 .AND. vr_tra3!=0
				PERFIL 801
					3 x m_ancho-32
					1 x vr_tra1-15.5-5.5
					1 x vr_tra2-vr_tra1-5.5-5.5
					1 x vr_tra3-vr_tra2-5.5-5.5
					1 x m_alto-vr_tra3-15.5-5.5
				VIDRIOS
                                        1 de vr_par1-18-10.5 x vr_tra1-18-10.5 
                                        1 de m_ancho-vr_par1-18-10.5 x vr_tra1-18-10.5
					1 de vr_par1-18-10.5 x vr_tra2-vr_tra1-10.5-10.5
                                        1 de m_ancho-vr_par1-18-10.5 x vr_tra2-vr_tra1-10.5-10.5
					1 de vr_par1-18-10.5 x vr_tra3-vr_tra2-10.5-10.5
                                        1 de m_ancho-vr_par1-18-10.5 x vr_tra3-vr_tra2-10.5-10.5
                                        1 de vr_par1-18-10.5 x m_alto-vr_tra3-18-10.5
                                        1 de m_ancho-vr_par1-18-10.5 x m_alto-vr_tra3-18-10.5
				M.OBRA 0.35+4*0.1
                        FIN DESARME
                FIN DESARME

		/* 2 parantes */
		DESARMAR SOLO SI vr_par1!=0 .AND. vr_par2!=0 .AND. vr_par3=0
			DESARMAR SOLO SI vr_tra1!=0 .AND. vr_tra2=0 .AND. vr_tra3=0
				PERFIL 801
					1 x m_ancho-32
					2 x vr_tra1-15.5-5.5
					2 x m_alto-vr_tra1-15.5-5.5
				VIDRIOS
                                        1 de vr_par1-18-10.5 x vr_tra1-18-10.5 
					1 de vr_par2-vr_par1-10.5-10.5 x vr_tra1-18-10.5
                                        1 de m_ancho-vr_par2-18-10.5 x vr_tra1-18-10.5
                                        1 de vr_par1-18-10.5 x m_alto-vr_tra1-18-10.5
                                        1 de vr_par2-vr_par1-10.5-10.5 x m_alto-vr_tra1-18-10.5
                                        1 de m_ancho-vr_par2-18-10.5 x m_alto-vr_tra1-18-10.5
				M.OBRA 0.35+0.1+0.1+0.1
                        FIN DESARME
			DESARMAR SOLO SI vr_tra1!=0 .AND. vr_tra2!=0 .AND. vr_tra3=0
				PERFIL 801
					2 x m_ancho-32
					2 x vr_tra1-15.5-5.5
					2 x vr_tra2-vr_tra1-5.5-5.5
					2 x m_alto-vr_tra2-15.5-5.5+8
				VIDRIOS
                                        1 de vr_par1-18-10.5 x vr_tra1-18-10.5 
					1 de vr_par2-vr_par1-10.5-10.5 x vr_tra1-18-10.5
                                        1 de m_ancho-vr_par2-18-10.5 x vr_tra1-18-10.5
					1 de vr_par1-18-10.5 x vr_tra2-vr_tra1-10.5-10.5
					1 de vr_par2-vr_par1-10.5-10.5 x vr_tra2-vr_tra1-10.5-10.5
                                        1 de m_ancho-vr_par2-18-10.5 x vr_tra2-vr_tra1-10.5-10.5
                                        1 de vr_par1-18-10.5 x m_alto-vr_tra2-18-10.5
                                        1 de vr_par2-vr_par1-18-10.5 x m_alto-vr_tra2-18-10.5
                                        1 de m_ancho-vr_par2-18-10.5 x m_alto-vr_tra2-18-10.5
				M.OBRA 0.35+4*0.1
                        FIN DESARME
			DESARMAR SOLO SI vr_tra1!=0 .AND. vr_tra2!=0 .AND. vr_tra3!=0
				PERFIL 801
					3 x m_ancho-32
					2 x vr_tra1-15.5-5.5
					2 x vr_tra2-vr_tra1-5.5-5.5
					2 x vr_tra3-vr_tra2-5.5-5.5
					2 x m_alto-vr_tra3-15.5-5.5
				VIDRIOS
                                        1 de vr_par1-18-10.5 x vr_tra1-18-10.5 
					1 de vr_par2-vr_par1-10.5-10.5 x vr_tra1-18-10.5
                                        1 de m_ancho-vr_par2-18-10.5 x vr_tra1-18-10.5
					1 de vr_par1-18-10.5 x vr_tra2-vr_tra1-10.5-10.5
					1 de vr_par2-vr_par1-10.5-10.5 x vr_tra2-vr_tra1-10.5-10.5
                                        1 de m_ancho-vr_par2-18-10.5 x vr_tra2-vr_tra1-10.5-10.5
					1 de vr_par1-18-10.5 x vr_tra3-vr_tra2-10.5-10.5
					1 de vr_par2-vr_par1-10.5-10.5 x vr_tra3-vr_tra2-10.5-10.5
                                        1 de m_ancho-vr_par2-18-10.5 x vr_tra3-vr_tra2-10.5-10.5
                                        1 de vr_par1-18-10.5 x m_alto-vr_tra3-18-10.5
                                        1 de vr_par2-vr_par1-10.5-10.5 x m_alto-vr_tra3-18-10.5
                                        1 de m_ancho-vr_par2-18-10.5 x m_alto-vr_tra3-18-10.5
				M.OBRA 0.35+5*0.1
                        FIN DESARME
                FIN DESARME

		/* 3 parantes */
		DESARMAR SOLO SI vr_par1!=0 .AND. vr_par2!=0 .AND. vr_par3!=0
			DESARMAR SOLO SI vr_tra1!=0 .AND. vr_tra2=0 .AND. vr_tra3=0
				PERFIL 801
					1 x m_ancho-32
					3 x vr_tra1-15.5-5.5
					3 x m_alto-vr_tra1-15.5-5.5
				VIDRIOS
                                        1 de vr_par1-18-10.5 x vr_tra1-18-10.5 
					1 de vr_par2-vr_par1-10.5-10.5 x vr_tra1-18-10.5
					1 de vr_par3-vr_par2-10.5-10.5 x vr_tra1-18-10.5
                                        1 de m_ancho-vr_par3-18-10.5 x vr_tra1-18-10.5
                                        1 de vr_par1-18-10.5 x m_alto-vr_tra1-18-10.5
                                        1 de vr_par2-vr_par1-10.5-10.5 x m_alto-vr_tra1-18-10.5
                                        1 de vr_par3-vr_par2-10.5-10.5 x m_alto-vr_tra1-18-10.5
                                        1 de m_ancho-vr_par3-18-10.5 x m_alto-vr_tra1-18-10.5
				M.OBRA 0.35+4*0.1
                        FIN DESARME
			DESARMAR SOLO SI vr_tra1!=0 .AND. vr_tra2!=0 .AND. vr_tra3=0
				PERFIL 801
					2 x m_ancho-32
					3 x vr_tra1-15.5-5.5
					3 x vr_tra2-vr_tra1-5.5-5.5
					3 x m_alto-vr_tra2-15.5-5.5
				VIDRIOS
                                        1 de vr_par1-18-10.5 x vr_tra1-18-10.5 
					1 de vr_par2-vr_par1-10.5-10.5 x vr_tra1-18-10.5
					1 de vr_par3-vr_par2-10.5-10.5 x vr_tra1-18-10.5
                                        1 de m_ancho-vr_par3-18-10.5 x vr_tra1-18-10.5
					1 de vr_par1-18-10.5 x vr_tra2-vr_tra1-10.5-10.5
					1 de vr_par2-vr_par1-10.5-10.5 x vr_tra2-vr_tra1-10.5-10.5
					1 de vr_par3-vr_par2-10.5-10.5 x vr_tra2-vr_tra1-10.5-10.5
                                        1 de m_ancho-vr_par3-18-10.5 x vr_tra2-vr_tra1-10.5-10.5
                                        1 de vr_par1-18-10.5 x m_alto-vr_tra2-18-10.5
                                        1 de vr_par2-vr_par1-18-10.5 x m_alto-vr_tra2-18-10.5
                                        1 de vr_par3-vr_par2-18-10.5 x m_alto-vr_tra2-18-10.5
                                        1 de m_ancho-vr_par3-18-10.5 x m_alto-vr_tra2-18-10.5
				M.OBRA 0.35+5*0.1
                        FIN DESARME
			DESARMAR SOLO SI vr_tra1!=0 .AND. vr_tra2!=0 .AND. vr_tra3!=0
				PERFIL 801
					3 x m_ancho-32
					3 x vr_tra1-15.5-5.5
					3 x vr_tra2-vr_tra1-5.5-5.5
					3 x vr_tra3-vr_tra2-5.5-5.5
					3 x m_alto-vr_tra3-15.5-5.5
				VIDRIOS
                                        1 de vr_par1-18-10.5 x vr_tra1-18-10.5 
					1 de vr_par2-vr_par1-10.5-10.5 x vr_tra1-18-10.5
					1 de vr_par3-vr_par2-10.5-10.5 x vr_tra1-18-10.5
                                        1 de m_ancho-vr_par3-18-10.5 x vr_tra1-18-10.5
					1 de vr_par1-18-10.5 x vr_tra2-vr_tra1-10.5-10.5
					1 de vr_par2-vr_par1-10.5-10.5 x vr_tra2-vr_tra1-10.5-10.5
					1 de vr_par3-vr_par2-10.5-10.5 x vr_tra2-vr_tra1-10.5-10.5
                                        1 de m_ancho-vr_par3-18-10.5 x vr_tra2-vr_tra1-10.5-10.5
					1 de vr_par1-18-10.5 x vr_tra3-vr_tra2-10.5-10.5
					1 de vr_par2-vr_par1-10.5-10.5 x vr_tra3-vr_tra2-10.5-10.5
					1 de vr_par3-vr_par2-10.5-10.5 x vr_tra3-vr_tra2-10.5-10.5
                                        1 de m_ancho-vr_par3-18-10.5 x vr_tra3-vr_tra2-10.5-10.5
                                        1 de vr_par1-18-10.5 x m_alto-vr_tra3-18-10.5
                                        1 de vr_par2-vr_par1-10.5-10.5 x m_alto-vr_tra3-18-10.5
                                        1 de vr_par3-vr_par2-10.5-10.5 x m_alto-vr_tra3-18-10.5
                                        1 de m_ancho-vr_par3-18-10.5 x m_alto-vr_tra3-18-10.5
				M.OBRA 0.35+6*0.1
                        FIN DESARME
                FIN DESARME
      	FIN DESARME





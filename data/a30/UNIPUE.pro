

/* MARCO UNIFICADO PARA PRODUCTOS COMBINADOS 29/05/01 */
                                                        
/* CALCULOS

   m_desc:=0
   d_tra:=18
/*if (tipo_patr=1,0,18)
	cant_marco:=marco_c()
	cant_par:=par_c()

PERFIL C6040

	DESARMAR SOLO SI cant_marco>=1
      marco_cant(0) x marco_med(0)
	FIN DESARME
	DESARMAR SOLO SI cant_marco>=2
      marco_cant(1) x marco_med(1)
	FIN DESARME
	DESARMAR SOLO SI cant_marco>=3
      marco_cant(2) x marco_med(2)
	FIN DESARME
	DESARMAR SOLO SI cant_marco>=4
      marco_cant(3) x marco_med(3)
	FIN DESARME
	DESARMAR SOLO SI cant_marco>=5
      marco_cant(4) x marco_med(4)
	FIN DESARME
	DESARMAR SOLO SI cant_marco>=6
      marco_cant(5) x marco_med(5)
	FIN DESARME



   PERFIL C6060

	DESARMAR SOLO SI cant_par>=1
      par_cant(0) x par_med(0)-49-m_desc
	FIN DESARME
	DESARMAR SOLO SI cant_par>=2
      par_cant(1) x par_med(1)-49-m_desc
	FIN DESARME
	DESARMAR SOLO SI cant_par>=3
      par_cant(2) x par_med(2)-49-m_desc
	FIN DESARME
	DESARMAR SOLO SI cant_par>=4
      par_cant(3) x par_med(3)-49-m_desc
	FIN DESARME
	DESARMAR SOLO SI cant_par>=5
      par_cant(4) x par_med(4)-49-m_desc
	FIN DESARME

/* accesorios */
PARTE E83
   1 x 4	
   
PARTE 227251
   1 x 6
   6 x cant_vid()

   PARTE E71
   2 x cant_vid()

M.OBRA 1.5




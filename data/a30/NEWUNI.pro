

/* MARCO UNIFICADO PARA PRODUCTOS COMBINADOS 29/05/01 */
                                                        


   m_desc:=0
   d_tra:=18
/*if (tipo_patr=1,0,18)
	cant_marco:=marco_c()
	cant_par:=par_c()

SEGUN marco PERFIL C6055,C6051,C6059

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

i:=0
WHILE i<cant_mu
	largo := mu[i].hasta - mu[i].desde

	IF mu[i].tipo_perfil==0
	// Parante o travesaño
		dto_izq:=0
		dto_der:=0
		IF mu[i].desde<50
		// toca contra el marco a izquierda
			dto_izq:=29.5
		ELSE
			dto_izq:=16.5
		ENDIF
		IF mu[i].hasta>m_ancho-50
		// toca contra el marco a derecha
			dto_der:=29.5
		ELSE
			dto_der:=16.5
		ENDIF
			1 x largo - dto_der - dto_izq
	ENDIF

	i:=i+1
END WHILE

/* accesorios */
PARTE E83
   1 x 4	
   
PARTE 227251
   1 x 6
   6 x cant_vid()

   PARTE E71
   2 x cant_vid()

M.OBRA 1.5




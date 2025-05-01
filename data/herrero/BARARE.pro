/* baranda glazing */  22/10/01

DESARMAR SOLO SI baran=1 .OR. baran=2 .OR. baran=4
   DESARMAR SOLO SI m_ancho>6000
      CALCULOS
         exed:=(INT(m_ancho/6000))*6000
      FIN CALCULOS
      PERFIL 5567
         par1+1 x m_ancho/(par1+1)
         2*INT(m_ancho/6000) x 6000
         2 x m_ancho-exed
      DESARMAR SOLO SI baran=1
      PERFIL 5640
         2*INT(m_ancho/6000) x 6000
         2 x m_ancho-exed
      FIN DESARME
      DESARMAR SOLO SI baran=2
      PERFIL 5641
         2*INT(m_ancho/6000) x 6000
         2 x m_ancho-exed
      FIN DESARME
      DESARMAR SOLO SI baran=4
      PERFIL 5662
         par1+2 x 25
      PERFIL 8800
         2*INT(m_ancho/6000) x 6000
         2 x m_ancho-exed

      FIN DESARME
   FIN DESARME
   DESARMAR SOLO SI m_ancho<=6000
      DESARMAR SOLO SI baran=1
      PERFIL 5640
         1 x m_ancho
      FIN DESARME
      DESARMAR SOLO SI baran=2
      PERFIL 5641
         1 x m_ancho
      FIN DESARME
      DESARMAR SOLO SI baran=4
      PERFIL 5662
         par1+2 x 25
      FIN DESARME
   FIN DESARME      
  PERFIL 5567
      2 x m_ancho
 PERFIL 5648  
    par1+2 x m_alto    
   PERFIL 5650
      1 x m_ancho
   /*   2+2*(par1+1) x m_alto-120
   
   VIDRIOS
   CALCULOS
   DESARMAR SOLO SI par1>0
      cant_par:=par1
   FIN DESARME
   DESARMAR SOLO SI par1=0
      cant_par:=1
   FIN DESARME
   
   FIN CALCULOS
   
      par1+1 de (m_ancho-16-16*par1)/(par1+1) x m_alto-33

FIN DESARME
DESARMAR SOLO SI baran=3
   DESARMAR SOLO SI m_ancho>6000
   CALCULOS
         exed:=(INT(m_ancho/6000))*6000
   FIN CALCULOS
   PERFIL 5675
      2*INT(m_ancho/6000) x 6000
      2 x m_ancho-exed
   PERFIL 5666
      2*INT(m_ancho/6000) x 6000
      2 x m_ancho-exed
   FIN DESARME
   
   DESARMAR SOLO SI m_ancho<=6000
   PERFIL 5675
      1 x m_ancho
   PERFIL 5666
      1 x m_ancho
   FIN DESARME
   
   PERFIL 5667
    
     par1+2 x m_alto
   
   PERFIL 5668
      1 x m_ancho
      /*2+2*(par1+1) x m_alto-120
   
   VIDRIOS
   CALCULOS
   DESARMAR SOLO SI par1>0
      cant_par:=par1
   FIN DESARME
   DESARMAR SOLO SI par1=0
      cant_par:=1
   FIN DESARME
   
   FIN CALCULOS
   
      par1+1 de (m_ancho-16-16*par1)/(par1+1) x m_alto-33

FIN DESARME
DESARMAR SOLO SI baran=4
   PERFIL 8800
   DESARMAR SOLO SI m_ancho>6000
   CALCULOS
         exed:=(INT(m_ancho/6000))*6000
   FIN CALCULOS
	1 x m_ancho  
   FIN DESARME
   
   DESARMAR SOLO SI m_ancho<=6000
	1 x m_ancho 
   FIN DESARME
   
 
   
   
   PERFIL 5651
      1 x m_ancho
   /*   2+2*(par1+1) x m_alto-120
   
   VIDRIOS
   CALCULOS
   DESARMAR SOLO SI par1>0
      cant_par:=par1
   FIN DESARME
   DESARMAR SOLO SI par1=0
      cant_par:=1
   FIN DESARME
   
   FIN CALCULOS
   
/*      par1+1 de (m_ancho-16-16*par1)/(par1+1) x m_alto-33

FIN DESARME

/* ACCESORIOS */


DESARMAR SOLO SI baran=3
   PARTE A3309
      1 x 2+par1
FIN DESARME

M.OBRA .3*(m_ancho/1000)





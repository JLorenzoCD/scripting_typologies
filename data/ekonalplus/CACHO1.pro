/* POSTIGON DE REBATIR SIMPLE LINEA EKONAL */

/* OPCION VARIANTE, Y CON HOJA A 45 GRADOS */

                CORTES A 45:
        /* MARCO */
                SEGUN marco PERFIL 6579,6768,6577
                        2 x m_ancho
                        2 x m_alto

DESARMAR SOLO SI n_hojas=1
        DESARMAR SOLO SI c_rect=1

        /* postigon de una hoja */
                PERFIL E4047
                        2 x m_ancho-52
                        2 x m_alto-52
   
         VIDRIOS
                 n_hojas de m_ancho-116 x m_alto-110
         PARTE UVW
               2 x (m_ancho-116)/1000
               2 x (m_alto-110)/1000
   

      FIN DESARME

        DESARMAR SOLO SI c_rect=2
        /* postigon de una hoja */
                CORTES A RECTO
                PERFIL 6328
                        2 x m_ancho-52-76
                PERFIL E4047
                        2 x m_alto-52

            VIDRIOS
                 1 de m_ancho-116 x m_alto-110
         PARTE UVW
               2 x (m_ancho-116)/1000
               2 x (m_alto-110)/1000

        FIN DESARME

        DESARMAR SOLO SI c_rect=3
        /* postigon de una hoja */
                CORTES A RECTO
                PERFIL 902
                        2 x m_ancho-56-56
                PERFIL 6576
                        2 x m_alto-52

         VIDRIOS
                 1 de m_ancho-90 x m_alto-110
         PARTE UVW
               2 x (m_ancho-90)/1000
               2 x (m_alto-110)/1000

         
        FIN DESARME
FIN DESARME

DESARMAR SOLO SI n_hojas=2
        DESARMAR SOLO SI c_rect=1
        /* postigon de 2 hojas */
                PERFIL E4047
                CORTES A 45:
                        4 x m_ancho/2-29
                        4 x m_alto-52

                CORTES A RECTO:
        /* ENCUENTRO CENTRAL*/
                PERFIL 5820
                        2 x m_alto-56
         VIDRIOS
                 2 de m_ancho/2-82 x m_alto-110
         PARTE UVW
               4 x (m_ancho/2-90)/1000
               4 x (m_alto-110)/1000
        FIN DESARME

        DESARMAR SOLO SI c_rect=2
        /* postigon de 2 hojas */
                CORTES A RECTO:
                PERFIL 6328
                        4 x m_ancho/2-29-76
                PERFIL E4047
                        4 x m_alto-52

                CORTES A RECTO:
        /* ENCUENTRO CENTRAL*/
                PERFIL 5820
                        2 x m_alto-56

            VIDRIOS
                 2 de m_ancho/2-82 x m_alto-110
         PARTE UVW
               4 x (m_ancho/2-90)/1000
               4 x (m_alto-110)/1000

        FIN DESARME


        DESARMAR SOLO SI c_rect=3
        /* postigon de 2 hojas */
                CORTES A RECTO:
                PERFIL 902
                        4 x m_ancho/2-89
                PERFIL 6576
                        4 x m_alto-52

                CORTES A RECTO:
        /* ENCUENTRO CENTRAL*/
                PERFIL 5820
                        2 x m_alto-56
            VIDRIOS
                 2 de m_ancho/2-69 x m_alto-110
         PARTE UVW
               4 x (m_ancho/2-90)/1000
               4 x (m_alto-110)/1000

        FIN DESARME
FIN DESARME

DESARMAR SOLO SI n_hojas=3
        DESARMAR SOLO SI c_rect=1
        /* postigon de 3 hojas */
                PERFIL E4047
                        6 x m_ancho/3-100
                        6 x m_alto-56

                CORTES A RECTO:
        /* ENCUENTRO CENTRAL*/
                PERFIL 5820
                        4 x m_alto-56
             VIDRIOS
                 3 de m_ancho/3-100 x m_alto-110
         PARTE UVW
               6 x (m_ancho/3-100)/1000
               6 x (m_alto-110)/1000

        FIN DESARME

        DESARMAR SOLO SI c_rect=2
        /* postigon de 3 hojas */
                CORTES A RECTO:
                PERFIL 6328
                        6 x m_ancho/3-100
                PERFIL E4047
                        6 x m_alto-56

                CORTES A RECTO:
        /* ENCUENTRO CENTRAL*/
                PERFIL 5820
                        6 x m_alto-56
            VIDRIOS
               3 de m_ancho/3-100 x m_alto-110
         PARTE UVW
               6 x (m_ancho/3-100)/1000
               6 x (m_alto-110)/1000

        FIN DESARME

        DESARMAR SOLO SI c_rect=3
        /* postigon de 3 hojas */
                CORTES A RECTO:
                PERFIL 902
                        6 x m_ancho/3-82
                PERFIL 6576
                        6 x m_alto-56

                CORTES A RECTO:
        /* ENCUENTRO CENTRAL*/
                PERFIL 5820
                        6 x m_alto-56
            VIDRIOS
                 3 de m_ancho/3-62 x m_alto-110
         PARTE UVW
               6 x (m_ancho/3-62)/1000
               6 x (m_alto-62)/1000
    FIN DESARME
FIN DESARME

DESARMAR SOLO SI n_hojas=4
        DESARMAR SOLO SI c_rect=1
        /* postigon de 4 hojas */
                PERFIL E4047
                        8 x m_ancho/4-96
                        8 x m_alto-56

                CORTES A RECTO:
        /* ENCUENTRO CENTRAL*/
                PERFIL 5820
                        4 x m_alto-56
            VIDRIOS
                 4 de m_ancho/4-96 x m_alto-110
         PARTE UVW
               8 x (m_ancho/4-96)/1000
               8 x (m_alto-62)/1000

        FIN DESARME

        DESARMAR SOLO SI c_rect=2
        /* postigon de 4 hojas */
                CORTES A RECTO:
                PERFIL 6328
                        8 x m_ancho/4-96-76
                PERFIL E4047
                        8 x m_alto-56

                CORTES A RECTO:
        /* ENCUENTRO CENTRAL*/
                PERFIL 5820
                        4 x m_alto-56
            VIDRIOS
                 4 de m_ancho/4-96 x m_alto-110
         PARTE UVW
               8 x (m_ancho/4-96)/1000
               8 x (m_alto-62)/1000


        FIN DESARME

        DESARMAR SOLO SI c_rect=3
        /* postigon de 4 hojas */
                CORTES A RECTO:
                PERFIL 902
                        8 x m_ancho/4-79
                PERFIL 6576
                        8 x m_alto-56

                CORTES A RECTO:
        /* ENCUENTRO CENTRAL*/
                PERFIL 5820
                        4 x m_alto-56
               VIDRIOS
                    4 de m_ancho/4-96 x m_alto-110
            PARTE UVW
                  8 x (m_ancho/4-96)/1000
                  8 x (m_alto-62)/1000
     FIN DESARME
FIN DESARME

        /* ACCESORIOS */
PARTE H33
       2 x n_hojas
PARTE H14P
       1 x n_hojas-1 
DESARMAR SOLO SI c_rect=1
PARTE E36
       4 x n_hojas
FIN DESARME
PARTE D
      16 x n_hojas
PARTE C
       1 x 4
PARTE D
       1 x 36
PARTE I
       1 x 8
PARTE J
       1 x 8
PARTE H
       8 x (m_ancho/2-100)/1000
       6 x (m_alto-66)/1000
PARTE QRS
       4 x (m_ancho/2-100)/1000
       4 x (m_alto-66-100)/1000



PRODUCTO MOPOST





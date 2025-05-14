import pyodbc

# Ruta del archivo .mdb
mdb_path = r"H:\S.A.S\LORENZO COSAS\PROG\obtener-acc-winmaker\WINMAKER 05-05-25.MDB"
accesorios_path = "acc.txt"
output_path = "output.txt"

# Cadena de conexión ODBC
conn_str = (
    r"DRIVER={Microsoft Access Driver (*.mdb, *.accdb)};"
    fr"DBQ={mdb_path};"
)

try:
    # Leer los códigos desde acc.txt (uno por línea)
    with open(accesorios_path, 'r') as f:
        accesorios = [line.strip() for line in f if line.strip()]

    # Conectar a la base de datos
    conn = pyodbc.connect(conn_str)
    cursor = conn.cursor()

    resultados = []

    for cod in accesorios:
        query = """
        SELECT COD_PARTE, DESCRI, PRECIO, MONEDA
        FROM PARTES
        WHERE COD_PARTE = ?
        """
        cursor.execute(query, (cod,))
        rows = cursor.fetchall()

        # Guardar los resultados encontrados
        for row in rows:
            precio_str = str(row.PRECIO).replace('.', ',')
            moneda = int(row.MONEDA)
            resultados.append(f"{row.COD_PARTE}\t{row.DESCRI}\t{precio_str}\t{moneda}")

    # Escribir en output.txt
    with open(output_path, 'w', encoding='utf-8') as f_out:
        for linea in resultados:
            f_out.write(linea + '\n')

    print("¡Datos exportados correctamente a output.txt!")

except Exception as e:
    print(f"Ocurrió un error: {e}")

finally:
    if 'cursor' in locals():
        cursor.close()
    if 'conn' in locals():
        conn.close()
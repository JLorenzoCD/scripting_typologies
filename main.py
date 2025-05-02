import os
import re


class Typology:
    def __init__(self, line: str, code: str, profiles: list[str], accessories: list[str]):
        self.line = line
        self.code = code
        self.profiles = profiles
        self.accessories = accessories

    def __str__(self) -> str:
        return f"{self.line} - {self.code} - len profiles {len(self.profiles)} - len acc {len(self.accessories)}"


class AlumLine:
    def __init__(self, line: str, typologies: list[Typology]):
        self.line = line
        self.typologies = typologies

    def __str__(self) -> str:
        return f"{self.line} - len typologies {len(self.typologies)}"


class App:
    data: list[AlumLine] = []

    # Regex para PERFIL - Ej: PERFIL 123
    REGEX_PERFIL_SOLO = r'\bPERFIL\s+[A-Za-z0-9]+\b'
    # Ej: SEGUN tipo PERFIL 123,456
    REGEX_PERFIL_SEGUN = r'\bSEGUN\s+\w+\s+PERFIL\s+[A-Za-z0-9]+(?:,[A-Za-z0-9]+)*\b'

    # Regex para PARTE (alfanumérico) - Ej: PARTE ABC123
    REGEX_PARTE_SOLO = r'\bPARTE\s+[A-Za-z0-9]+\b'
    # Ej: SEGUN tipo PARTE ABC123,DEF456
    REGEX_PARTE_SEGUN = r'\bSEGUN\s+\w+\s+PARTE\s+[A-Za-z0-9]+(?:,[A-Za-z0-9]+)*\b'

    def main(self):
        base_path = 'data'
        output_file_name = "acc.txt"

        self.set_alu_lines_data(base_path)
        self.save_data(output_file_name)

    def set_alu_lines_data(self, base_path: str):
        # Recorremos todos las carpetas dentro de la carpeta 'base_path'
        for folder_name in os.listdir(base_path):
            folder_path = os.path.join(base_path, folder_name)

            if os.path.isdir(folder_path):
                alum_line = AlumLine(folder_path.upper(), [])

                self.__set_typologies_in_line(folder_path, alum_line)

                self.data.append(alum_line)

    def __set_typologies_in_line(self, folder_path_typologies: str, alum_line: AlumLine):

        # Recorremos todos los archivos dentro de la carpeta
        for file_name in os.listdir(folder_path_typologies):
            file_path = os.path.join(folder_path_typologies, file_name)

            if os.path.isfile(file_path):
                typology = Typology(
                    folder_path_typologies.upper(), file_name.split('.')[
                        0].upper(),
                    [],
                    []
                )

                try:
                    with open(file_path, 'r', encoding='latin1') as file:
                        for line in file:
                            line = line.strip()

                            if '/*' in line or '*/' in line:
                                continue

                            # Se busca mediante regex si la linea contiene el
                            # PERFIL o la PARTE para extraer el perfil o accesorio
                            if re.search(self.REGEX_PERFIL_SEGUN, line):
                                # Si es un 'SEGUN PERFIL '
                                profiles = line.split('PERFIL ')[1].split(',')

                                for profile in profiles:
                                    profile = profile.strip().upper()
                                    typology.profiles.append(profile)

                            elif re.search(self.REGEX_PERFIL_SOLO, line):
                                # Si es un 'PERFIL '
                                profile = line.split('PERFIL ')[1].upper()
                                typology.profiles.append(profile)

                            elif re.search(self.REGEX_PARTE_SEGUN, line):
                                # Si es un 'SEGUN PARTE '
                                accs = line.split('PARTE ')[1].split(',')

                                for acc in accs:
                                    acc = acc.strip().upper()
                                    typology.accessories.append(acc)

                            elif re.search(self.REGEX_PARTE_SOLO, line):
                                # Si es un 'PARTE '
                                acc = line.split('PARTE ')[1].upper()
                                typology.accessories.append(acc)

                except Exception as e:
                    print(f"Error al leer {file_path}: {e}")
                    print(typology)

                alum_line.typologies.append(typology)

    def get_all_accessories(self) -> list[str]:
        acc_set: set[str] = set()

        for alu_line in self.data:
            for typology in alu_line.typologies:
                acc_set.update(typology.accessories)

        acc_list = sorted(acc_set)
        return acc_list

    def get_all_profiles(self) -> list[str]:
        prof_set: set[str] = set()

        for alu_line in self.data:
            for typology in alu_line.typologies:
                prof_set.update(typology.profiles)

        prof_list = sorted(prof_set)
        return prof_list

    def save_data(self, output_file_name: str):
        acc_list: list[str] = self.get_all_accessories()

        # print(self.get_all_profiles())

        print(f"Se obtuvieron {len(acc_list)} accesorios en total.")

        try:
            with open(output_file_name, 'w') as file:
                for item in acc_list:
                    file.write(item + "\n")
            print(
                f"Se obtuvo todos los accesorios de forma exitosa y se guardaron en el archivo '{output_file_name}'."
            )
        except Exception as e:
            print(f"Error al guardar los datos: {e}")


if __name__ == '__main__':
    app = App()

    app.main()

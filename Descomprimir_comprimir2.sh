#!/bin/bash

#Script realizado por: variant
#Versión:1
   
#SHELLCHECK:
#shellcheck disable=SC2034

#ESTETICA DEL BASH.
# ESTABLECE EL COLOR POR DEFECTO.
reset="\e[0m"
#  ESPECIALES
Clarito="\e[1m"      Negrita="\e[2m"     Subrayado="\e[4m"       Intermitente="\e[5m"
Invertir="\e[7m" # Texto y fondo
Invisible="\e[8m"    Tachado="\e[9m"     Subrayado_Doble="\e[21m"
#  COLORES NORMALES
Negro="\e[30m" Rojo="\e[0;31m"   Verde="\e[32m" Amarillo="\e[33m"
Azul="\e[34m"  Purpura="\e[35m"  Cian="\e[36m"  Blanco="\e[37m"
#  CLARO
CNegro="\e[1;30m"   CRojo="\e[1;31m"   CVerde="\e[1;32m" CAmarillo="\e[1;33m"
CAzul="\e[1;34m"    CPurpura="\e[1;35m"  CCian="\e[1;36m"  CBlanco="\e[1;37m"
#  NEGRITA
NNegro="\e[2;30m"    NRojo="\e[2;31m"    NVerde="\e[2;32m"  NAmarillo="\e[2;33m"
NAzul="\e[2;34m"     NPurpura="\e[2;35m"  NCian="\e[2;36m"  NBlanco="\e[2;37m"

# SUBRAYADO CON COLOR
   # Simple
      #  Simple Normales
      S_Negro="\e[4;30m"    S_Rojo="\e[4;31m"    S_Verde="\e[4;32m"  S_Amarillo="\e[4;33m"
      S_Azul="\e[4;34m"     S_Purpura="\e[4;35m" S_Cian="\e[4;36m"   S_Blanco="\e[4;37m"
      # Simple Negrita
         NS_Negro="\e[2;4;30m"    NS_Rojo="\e[2;4;31m"    NS_Verde="\e[2;4;32m"  NS_Amarillo="\e[2;4;33m"
         NS_Azul="\e[2;4;34m"     NS_Purpura="\e[2;4;35m" NS_Cian="\e[2;4;36m"   NS_Blanco="\e[2;4;37m"
      # Simple Clarito
         CS_Negro="\e[1;4;30m"    CS_Rojo="\e[1;4;31m"    CS_Verde="\e[1;4;32m"  CS_Amarillo="\e[1;4;33m"
         CS_Azul="\e[1;4;34m"     CS_Purpura="\e[1;4;35m" CS_Cian="\e[1;4;36m"   CS_Blanco="\e[1;4;37m"

   # Doble Subrayado
      # Doble Normal
         SS_Negro="\e[21;30m"    SS_Rojo="\e[21;31m"     SS_Verde="\e[21;32m"  SS_Amarillo="\e[21;33m"
         SS_Azul="\e[21;34m"     SS_Purpura="\e[21;35m"  SS_Cian="\e[21;36m"   SS_Blanco="\e[21;37m"
      # Doble Negrita
         SSN_Negro="\e[2;21;30m"    SSN_Rojo="\e[2;21;31m"     SSN_Verde="\e[2;21;32m"  SSN_Amarillo="\e[2;21;33m"
         SSN_Azul="\e[2;21;34m"     SSN_Purpura="\e[2;21;35m"  SSN_Cian="\e[2;21;36m"   SSN_Blanco="\e[2;21;37m"
      # Doble Clarito
         SSC_Negro="\e[1;21;30m"    SSC_Rojo="\e[1;21;31m"     SSC_Verde="\e[1;21;32m"  SSC_Amarillo="\e[1;21;33m"
         SSC_Azul="\e[1;21;34m"     SSC_Purpura="\e[1;21;35m"  SSC_Cian="\e[1;21;36m"   SSC_Blanco="\e[1;21;37m"

# INTERMITENTE
   # Intermitente Normal
      INegro="\e[5;30m" IRojo="\e[5;31m"  IVerde="\e[5;32m" IAmarillo="\e[5;33m"
      IAzul="\e[5;34m"  IPurpura="\e[5;35m" ICian="\e[5;36m" IBlanco="\e[5;37m"
   # Intermitente Negrita
      INNegro="\e[2;5;30m" INRojo="\e[2;5;31m"  INVerde="\e[2;5;32m" INAmarillo="\e[2;5;33m"
      INAzul="\e[2;5;34m"  INPurpura="\e[2;5;35m" INCian="\e[2;5;36m" INBlanco="\e[2;5;37m"
   # Intermitente Clarito
      ICNegro="\e[1;5;30m" ICRojo="\e[1;5;31m"  ICVerde="\e[1;5;32m" ICAmarillo="\e[1;5;33m"
      ICAzul="\e[1;5;34m"  ICPurpura="\e[1;5;35m" ICCian="\e[1;5;36m" ICBlanco="\e[1;5;37m"

# TACHADO
   # Tachado Normal
      TNegro="\e[9;30m" TRojo="\e[9;31m"  TVerde="\e[9;32m" TAmarillo="\e[9;33m"
      TAzul="\e[9;34m"  TPurpura="\e[9;35m" TCian="\e[9;36m" TBlanco="\e[9;37m"
   # Tachado Negrita
      TNNegro="\e[2;9;30m" TNRojo="\e[2;9;31m"  TNVerde="\e[2;9;32m" TNAmarillo="\e[2;9;33m"
      TNAzul="\e[2;9;34m"  TNPurpura="\e[2;9;35m" TNCian="\e[2;9;36m" TNBlanco="\e[2;9;37m"
   # Tachado Clarito
      TCNegro="\e[1;9;30m" TCRojo="\e[1;9;31m"  TCVerde="\e[1;9;32m" TCAmarillo="\e[1;9;33m"
      TCAzul="\e[1;9;34m"  TCPurpura="\e[1;9;35m" TCCian="\e[1;9;36m" TCBlanco="\e[1;9;37m"

#Creación de variables:
v=0 #Banderas para los bucles
c=0 #Banderas para las funciones
lista_extensiones=(".bz2" ".gz" ".rar" ".tar" ".tar.bz2" ".tar.gz" ".zip" ".7z")


function ayuda(){
    argumento=$1

    if [ "${argumento}" == "-e" ] || [ "${argumento}" == "--extensiones" ];then
        echo -e "\t\tEXTENSIONES SOPORTADAS:"
        echo -e "${CRojo}.bz2${reset} ->\nNO COMPRIME DIRECTORIOS. Deja lastre (rutas absolutas, no copia solo el dir)."
        echo "Proporciona más compresión en comparación con gzip y zip pero es más lento."
        echo -e "Comprime si los archivo son la misma extensión, crea un fichero con el\ncontenido de todos los anteriores."
        echo "Ejemplo: Coge todos los .txt y crea un único .txt con el contenido de los demás."
        echo "Perfecto para fusionar varios .txt en uno."
        echo -e "${CRojo}.gzip${reset} ->\nExactamente igual que bz2 pero es más rápido que bz2 pero comprime menos."
        echo "Ambos son para Unix/Linux. Pero este acepta de forma recursiva y bzip2 no."
        echo "Además que este es recursivo entre carpetas."
        echo -e "${CRojo}.rar${reset} ->\nUsa las ventajas de zip, es lenta de ejecución.\nMuy alta compresión. Sin perdidas de datos." 
        echo "Tiene sistema de cifrado AES de 128 bits. Su software es privativo."
        echo -e "${CRojo}.tar${reset} ->\nConvierte múltiples archivo en uno solo (carpeta)."
        echo "Apenas comprime, es un 'fusionador' de archivo."
        echo -e "${CRojo}.tar.bz2${reset} ->\nFusiona tar y bz2, es decir, junta todos los archivo en una carpeta y luego"
        echo "esa carpeta se comprime a bz2 quitando el problema del único archivo de bz2."
        echo "Es más lento que tar.gz pero mejor comprime."
        echo -e "${CRojo}.tar.gz${reset} ->\nExactamente igual que tar.bz2 pero con gzip, es más rápido pero comprime menos."
        echo -e "${CRojo}.zip${reset} ->\nSúper rápido pero de menor compresión que muchos otros. Tiene mayor "
        echo "compatibilidad entre los S.O., es de compresión rápido y comprime bien."
        echo "Tiene cifrado simétrico de clave pública, es débil ante ataques de fuerza bruta o de diccionario."
        echo -e "${CRojo}.7z${reset} ->\nEs muy lento (utiliza más recursos) pero es el mejor compresor, se puede"
        echo -e "fragmentar. Dispone cifrado AES con clave de 256 bits. Sin perdidas de datos.\n" 
    elif [ "${argumento}" == "-m" ] || [ "${argumento}" == "--manual" ];then
        echo "Script que permite comprimir/descomprimir archivos fácilmente."
        echo -e "\nEn la zona de compresión, los dos compresores encerrados con ${Amarillo}*${reset}"
        echo "significa que son compresores especiales, solamente comprime un único fichero"
        echo -e "o varios ficheros idénticos en uno (revisar extensiones soportadas con -e).\n"
        echo -e "${S_Azul}Zona de compresión${reset}${Blanco}:${reset}"
        echo "1º Se desplegará una lista con los compresores para saber cuál"
        echo "se va a comprimir el/los fichero(s)."
        echo "2º Luego, se preguntará SOLAMENTE por la ruta de los ficheros a comprimir."
        echo "3º A continuación, se pedirá que se introduzca la ruta donde se guardará"
        echo -e "el fichero comprimido.\nFinalmente, se mostrará los ficheros de la ruta que se"
        echo -e "guardó el archivo comprimido y se sombreará el nuevo fichero comprimido.\n"
        echo -e "${S_Azul}Zona de descompresión${reset}${Blanco}:${reset}"
        echo "1º Se pedirá que se introduzca la ruta con los ficheros a descomprimir,"
        echo "Si la ruta tiene comprimidos, se mostrará el nº de archivo comprimidos"
        echo "junto al tipo de compresión que se ha realizado y su nº."
        echo "Ej: Hay 3 ficheros en la ruta || 2 ficheros .rar y 1 fichero .7zip"
        echo "2º Luego, se mostrará una lista con todos los compresores para saber"
        echo "con que descompresor se realizará. A continuación, se visualizará todos los"
        echo "archivo de la ruta con la extensión indicada."
        echo "Después, se pedirá que introduzca el fichero a descomprimir."
        echo "Más tarde, se solicita la ruta para guardar el contenido del archico compreso."
        echo "Si todo va bien, se mostrará todos los ficheros de la ruta para saber cómo se guardó"
        echo "y que se encuentre en la ruta seleccionada."
        echo "Si algo falla, se mostrará un mensaje indicandolo."
        # Por  defecto,  bzip2 y bunzip2 no sobreescribirán ficheros existentes. Si quieres que esto
        #ocurra, especifica la opción -f.
        # Los ficheros de menos de cien bytes tienden a hacerse más grandes,
        # ya que el mecanismo de compresión tiene una sobrecarga constante de unos 50  bytes.
        # Si se intenta comprimir 2 o + ficheros con != se comprimirá como zip y luego 
    elif [ "${argumento}" == "-h" ] || [ "${argumento}" == "--help" ];then
        echo -e "\t\t${S_Azul}PARAMETROS DEL SCRIPT${reset}${Blanco}:${reset}"
        echo -e "\t-h, --help\tMuestra esta ayuda y finaliza."
        echo -e "\t-m, --manual\tAprendes el funcionamiento del script y cómo usarlo."
        echo -e "    -e, --extensiones\tExplica las extensiones."
        exit 1
    fi
}


function listarHerramientas(){
    echo -e "\n${Amarillo}Revisando que cuentas con las herramientas necesarias...${reset}"
    comandos=("bzip2" "gzip" "tar" "zip" "7z" "unzip" "gunzip" "unrar" "rar" "sl" "par" "par2")

    for i in "${comandos[@]}";do
        if hash "$i" 2>/dev/null;then
            sleep 0.48
            echo -e "${CPurpura}[${reset} OK ${CPurpura}]${reset}${Blanco} ${i}${reset}"
            sleep 0.48
        else
            failed+=("${i}")
            sleep 0.48
            echo -e "${CPurpura}[${reset} ${Rojo}FALLO${reset} ${CPurpura}]${reset} ${Blanco}${i}${reset}"
            sleep 0.48
        fi
    done

        if [ "${#failed[@]}" -eq 0 ];then
            echo -e "\n${CCian}¡${reset}${Amarillo}Perfecto${reset}${NAmarillo}.${reset}${Amarillo} Tienes todas las herramientas instaladas${reset}${CCian}!${reset}"
        else 
            echo -e "\n${Amarillo}Desactivando las opciones que no tienes instaladas...${reset}\n"
            DesactivarOpciones
        fi
}

function DesactivarOpciones(){

Dbzip2=0
Dgzip2=0
Dtar=0
Dzip=0
D7z=0
Dunzip=0
Dgunzip=0
Dunrar=0
local Dpar=0
local Dpar2=0
Drar=0
Dsl=0
    for i in "${failed[@]}";do
        declare -g D$i=1
    done
}


function RutaExiste(){
  local ruta=$1
  variable=$2
  while [ "${c}" -eq 0 ];do
    if [[ -d "${ruta}" ]];then
        return
    else
        errorLog 5
        read -rp " ·> " ruta
        declare -g "${variable}"="${ruta}"
    fi
  done
}


function PedirRutaComprimir(){
    echo -e "\n${Amarillo}Indica la ruta exacta del/los ficheros que se comprimirán${reset}${Blanco}:${reset}"
    read -rp " ·> " ruta_comprimir
    RutaExiste "${ruta_comprimir}" "ruta_comprimir"
}


function PedirRutaComprimirGuardar(){
    echo -e "\n${Amarillo}Ahora, introduzca la ruta exacta donde se creará el $1 comprimido (sin nombre)${reset}${NAmarillo}.${reset}"
    read -rp " ·> " salvar_comprimida
    RutaExiste "${salvar_comprimida}" "salvar_comprimida"
}


function PedirNombreGuardadoComprimir(){
    echo -e "${Amarillo}\nFinalmente ponga como se llamará el archivo comprimido (solo el nombre)${reset}${NAmarillo}.${reset}"
    read -rp " ·> " nombre_guardado
}

                
function PedirRutaDescomprimir(){
    echo -e "${Amarillo}Pon la ruta exacta donde se guardará el archivo descomprimido${reset}${NAmarillo}.${reset}"
    read -rp " ·> " ruta_salvado
    RutaExiste "${ruta_salvado}" "ruta_salvado"
    clear
}


function PedirNombreGuardadoDescomprimir(){
    echo -e "${Amarillo}Finalmente pon el nombre del fichero que se guardará al descomprimirlo${reset}${NAmarillo}.${reset}"
    read -rp " ·> " nombre_guardado
    clear
}


function seleccionarArchivoComprimido(){
    echo -e "${Amarillo}Selecciona un archivo de los anteriores para su descompresión${reset}${NAmarillo}.${reset}"
    read -rp " ·> " fichero_descomprimir
    
    while [ "${c}" -eq 0 ];do
        for i in ${limpio_ext[*]};do
            if [ "$i" == "${fichero_descomprimir}" ];then
                return
            fi
        done
        errorLog 4
        read -rp " ·> " fichero_descomprimir
    done
}


function RutaTieneComprimidos(){
    ruta=$1
    filtro23=()
    while [ "${c}" -eq 0 ];do
        for i in "${lista_extensiones[@]}";do
            filtro23+=($(find "${ruta}" -maxdepth 1 -name "*$i"))
    done

        if [ "${#filtro23}" -gt 0 ];then
            echo -e "Se han encontrado ${IRojo}${#filtro23[@]}${reset} fichero(s) comprimido(s) en la carpeta seleccionada${NAmarillo}.${reset}"
            verArchivosComprimidos "${ruta}"
            break
        else
            errorLog 6
            read -rp " ·> " ruta
        fi
    done
}


function verArchivosComprimidos(){
    ruta=$1
    for i in "${lista_extensiones[@]}";do
        limpio=()
        if [ "$i" == ".gz" ];then
            mapfile -t filtro < <(find "${ruta}" -maxdepth 1 -name "*.gz" | grep -v "tar" 2>/dev/null)
            for a in "${filtro[@]}";do
                limpio+=("$(basename "$a")")
            done
            numero=$(find "${ruta}" -maxdepth 1 -name "*.gz" | grep -v "tar" | wc -w 2>/dev/null)
            if [ "${numero}" -eq 0 ];then
            errorLog 7
            else
            echo -e "${NRojo}${numero}${reset} ${NPurpura}archivo(s) con ${reset}${Verde}$i${reset}  ${NPurpura}que es/son${reset}${Blanco}:${reset} ${Azul}${limpio[*]}${reset}"
            fi

        elif [ "$i" == ".bz2" ];then
            mapfile -t filtro < <(find "${ruta}" -maxdepth 1 -name "*.bz2" | grep -v "tar" 2>/dev/null)
            for a in "${filtro[@]}";do
                limpio+=("$(basename "$a")")
            done
            numero=$(find "${ruta}" -maxdepth 1 -name  "*.bz2" | grep -v "tar" | wc -w 2>/dev/null)
            if [ "${numero}" -eq 0 ];then
            errorLog 7
            else
            echo -e "${NRojo}${numero}${reset} ${NPurpura}archivo(s) con ${reset}${Verde}$i${reset}  ${NPurpura}que es/son${reset}${Blanco}:${reset} ${Azul}${limpio[*]}${reset}"
            fi
        
        else
            mapfile -t filtro < <(find "${ruta}" -maxdepth 1 -name "*$i" 2>/dev/null)
            for a in "${filtro[@]}";do
                limpio+=("$(basename "$a")")
            done    
            numero=$(find "${ruta}" -maxdepth 1 -name "*$i" | wc -w 2>/dev/null)

            if [ "${numero}" -eq 0 ];then
            errorLog 7
            else
            echo -e "${NRojo}${numero}${reset} ${NPurpura}archivo(s) con ${reset}${Verde}$i${reset}  ${NPurpura}que es/son${reset}${Blanco}:${reset} ${Azul}${limpio[*]}${reset}"
            fi

        fi
    done
}

# Desactivar opciones de comprimir/descomprimir utilizando array failed mediante una funcion como verExtens


function verArchivoExtension(){
    ruta=$1
    extension=$2
    limpio_ext=()
    numero=$(find "${ruta}" -maxdepth 1 -name "*${extension}" | tr "\n" " " | wc -w 2>/dev/null)

    if [ "${numero}" -gt 0 ];then
        
        if [ "${extension}" == "bz2" ];then
            seleccionar=$(find "${ruta}" -maxdepth 1 -name "*.bz2" | grep -v "tar" | tr "\n" " " 2>/dev/null)
        elif [ "${extension}" == "gz" ];then
            seleccionar=$(find "${ruta}" -maxdepth 1 -name "*.gz" | grep -v "tar" | tr "\n" " " 2>/dev/null)
        else
            seleccionar=$(find "${ruta}" -maxdepth 1 -name "*${extension}" | tr "\n" " " 2>/dev/null)
        fi

        for i in ${seleccionar};do
            limpio_ext+=("$(basename "$i")")
        done
        echo -e "${Purpura}Ficheros con ${reset}${CS_Verde}${extension}${reset}${Blanco}:\n${reset}${CAzul}${limpio_ext[*]}${reset}"
    else
        errorLog 9
        echo -e "${Amarillo}¿Quieres quedarte en la zona de descompresión de ${extension}? ${CCian}[${reset}S${reset}${Blanco}/${reset}${Rojo}n${reset}${CCian}]${reset}"
        read -rp " ·> " respuesta
        while [ "${c}" -eq 0 ];do
            if [ "${respuesta}" == "S" ] || [ "${respuesta}" == "s" ];then
                echo -e "${Amarillo}Cambia la ruta porque la actual no hay archivos${NAmarillo}.${reset}"
                read -rp " ·> " ruta
                RutaExiste "${ruta}"
                verArchivoExtension "${ruta}" "${extension}"
                break
            elif [ "${respuesta}" == "n" ] || [ "${respuesta}" == "N" ];then
                exit 1
            else
                errorLog 8
                read -rp " ·> " respuesta
            fi
        done
    fi
}

function sobreescribirFicheroGuardado(){
    ruta=$1
    fichero=$2

    echo -e "${Amarillo}¿Quieres sobreescribirlo? ${CCian}[${reset}S${reset}${Blanco}/${reset}${Rojo}n${reset}${CCian}]${reset}"
    read -rp " ·> " sobreescribir_respuesta
    while [ "${c}" -eq 0 ];do
        if [ "${sobreescribir_respuesta}" == "N" ] || [ "${sobreescribir_respuesta}" == "n" ];then
            echo -e "${Amarillo}Inserte el nuevo nombre del fichero${reset}${NAmarillo}.${reset}"
            read -rp " ·> " nombre_guardado
            comprobarArchivoGuardadoExiste "${ruta}" "${nombre_guardado}"
            break
        else
            if [ "${sobreescribir_respuesta}" == "S" ] || [ "${sobreescribir_respuesta}" == "s" ];then
                return
            else
                errorLog 8
                read -rp " ·> " sobreescribir_respuesta
            fi
        fi
    done
}


function comprobarArchivoGuardadoExiste(){
    ruta=$1
    fichero=$2

    if [ -f "${ruta}/${fichero}" ];then
       errorLog 10
       sobreescribirFicheroGuardado "${ruta}" "${fichero}"
    fi
}


function errorLog(){
    local error="${Rojo}ERROR${reset}${CPurpura}.${reset}\a"
    case $1 in
    1) echo -e "\n${error}${CAmarillo} Tienes que poner un número comprendido entre ${CPurpura}1${reset} ${CAmarillo}y${reset} ${CPurpura}$2${reset}"
    ;;
    2) echo -e "\n${error}${CAmarillo} Se desconoce el motivo pero la descompresión falló${NAmarillo}.${reset}\n${CAmarillo}Intente de nuevo y asegurese que escriba bien los nombres${reset}${NAmarillo}.${reset}"
    ;;
    3) echo -e "\n${error}${CAmarillo} No se han encontrado ficheros en la ruta ${reset}${CRojo}${ruta}${reset}"
       echo -e "${CAmarillo}Introduzca otra ruta que tenga ficheros comprimidos para su descompresión${reset}${NAmarillo}.${reset}"
    ;;
    4) echo -e "\n${error}${CAmarillo} Tienes que poner el nombre de un fichero de los anteriores${reset}${NAmarillo}.${reset}"
    ;;
    5) echo -e "\n${error}${CAmarillo} La ruta ${reset}${CRojo}${ruta}${reset}${CAmarillo} no es válida${reset}${NAmarillo}.${reset}${CAmarillo} Inserte una ruta adecuada${reset}${NAmarillo}.${reset}"
    ;;
    6) echo -e "\n${error}${CAmarillo} No se han encontrado archivos con extensiones comprimidas en la ruta${reset}${NAmarillo}.${reset}" 
    ;;
    7) echo -e "${error}${CAmarillo} No se han encontrado archivos con extensión ${reset}${CVerde}$i${reset}${CAmarillo} en la ruta seleccionada${reset}${NAmarillo}.${reset}"
    ;;
    8) echo -e "${error}${CAmarillo} Debes poner ${reset}${CPurpura}'${reset}S${reset}${CPurpura}'${reset}${CAmarillo} para aceptar o ${reset}${CPurpura}'${reset}${Rojo}N${reset}${CPurpura}'${reset}${CAmarillo} para negar ${CCian}[${reset}S${reset}${Blanco}/${reset}${Rojo}n${reset}${CCian}]${reset}"
    ;;
    9) echo -e "\n${error}${CAmarillo} No hay ficheros con extension ${reset}${CVerde}${extension}${reset}${NAmarillo}.${reset}"
    ;;
    10) echo -e "\n${error}${CAmarillo} Hay un fichero en ${reset}${CRojo}${ruta}${CAmarillo} con el nombre ${reset}${CVerde}${fichero}${reset}${NAmarillo}.${reset}"
    ;;
    11) echo -e "\n${error}${CAmarillo} Se desconoce el motivo pero la compresión falló${NAmarillo}.${reset}\n${CAmarillo}Intente de nuevo y asegurese que escriba bien los nombres${reset}${NAmarillo}.${reset}"
    ;;
    12) echo -e "\n${error}${CAmarillo} No tienes la herramienta $2. Asi que, esta caracteristica está desactivada${reset}${NAmarillo}.${reset}"
    ;;
    esac
    
}
ayuda "$1"
listarHerramientas

while [ "${v}" -eq 0 ];do
    echo -e "${Amarillo}¿Deseas comprimir/descomprimir/salir?${reset} ${CCian}[${reset}${Rojo}1${reset}/${Rojo}3${reset}${CCian}]${reset}"
    read -rp " ·> " respuesta
case "${respuesta}" in
1)
    while [ "${v}" -eq 0 ];do
    clear
    echo -e "${Blanco}Ha seleccionado formato ${Purpura}'${reset}${S_Rojo}Compresor${reset}${Purpura}'${reset}${NAmarillo}.${reset}"
    echo -e "${CRojo}1${reset}${CNegro})${reset} ${CAmarillo}*${reset} ${Azul}Bz2${reset} ${CAmarillo}*${reset}"
    echo -e "${CRojo}2${reset}${CNegro})${reset} ${CAmarillo}*${reset} ${Azul}Gzip${reset} ${CAmarillo}*${reset}"
    echo -e "${CRojo}3${reset}${CNegro})${reset} ${Azul}Tar${reset}"
    echo -e "${CRojo}4${reset}${CNegro})${reset} ${Azul}Tar.bz2${reset}"
    echo -e "${CRojo}5${reset}${CNegro})${reset} ${Azul}Tar.gz${reset}"
    echo -e "${CRojo}6${reset}${CNegro})${reset} ${Azul}Rar${reset}"
    echo -e "${CRojo}7${reset}${CNegro})${reset} ${Azul}Zip${reset}"
    echo -e "${CRojo}8${reset}${CNegro})${reset} ${Azul}7zip${reset}"
    echo -e "${CRojo}9${reset}${CNegro})${reset} ${Azul}Salir\n${reset}"
    read -rp " ·> " comprimir_metodo
        case "${comprimir_metodo}" in
            1)
                if [ "${Dbzip2}" -eq 1 ];then
                   errorLog 12 "bzip2"
                else
                    clear
                    echo -e "${Blanco}Ha seleccionado formato ${Purpura}'${reset}${S_Rojo}Bz2${reset}${Purpura}'${reset}${NAmarillo}.${reset}"
                    PedirRutaComprimir
                    PedirRutaComprimirGuardar ".bz2"
                    PedirNombreGuardadoComprimir
                    comprobarArchivoGuardadoExiste "${salvar_comprimida}" "${nombre_guardado}.bz2"
                    if bzip2 -9 -v -c -z "${ruta_comprimir}"/* > "${salvar_comprimida}/${nombre_guardado}.bz2" ;then
                    echo -e "\n${Amarillo}${Amarillo}Compresión finalizada, el fichero ${nombre_guardado} se encuentra en: ${salvar_comprimida}${reset}"
                    mostrar2=$(find "${salvar_comprimida}" -maxdepth 1 -name "${nombre_guardado}".bz2 -exec basename {} \;)
                    mapfile -t mostrar < <(ls "${salvar_comprimida}" --color=yes | grep -v "${nombre_guardado}".bz2 | tr "\n" " ")
                    echo -e "${Amarillo}Archivos en ${reset}${CRojo}${salvar_comprimida}${reset}${Amarillo} son${reset}:${Azul} ${mostrar[*]}${reset}${NRojo}${mostrar2}${reset}"
                    else
                        errorLog 11
                    fi  
                fi
                sleep 10s
            ;;
            2)
                if [ "${Dgzip2}" -eq 1 ];then
                   errorLog 12 "gzip"
                else
                    clear
                    echo -e "${Blanco}Ha seleccionado formato ${Purpura}'${reset}${S_Rojo}Gzip${reset}${Purpura}'${reset}${NAmarillo}.${reset}"
                    PedirRutaComprimir
                    PedirRutaComprimirGuardar ".gz"
                    PedirNombreGuardadoComprimir
                    comprobarArchivoGuardadoExiste "${salvar_comprimida}" "${nombre_guardado}.gz"
                    if gzip -9 -v -c -r "${ruta_comprimir}"/* > "${salvar_comprimida}/${nombre_guardado}.gz" 2>/dev/null;then
                    mostrar2=$(find "${salvar_comprimida}" -maxdepth 1 -name "${nombre_guardado}".gz -exec basename {} \;)
                    mapfile -t mostrar < <(ls "${salvar_comprimida}" --color=yes | grep -v "${nombre_guardado}".gz | tr "\n" " ")
                    echo -e "${Amarillo}Archivos en ${reset}${CRojo}${salvar_comprimida}${reset}${Amarillo} son${reset}:${Azul} ${mostrar[*]}${reset}${NRojo}${mostrar2}${reset}"
                    else
                        errorLog 11
                    fi
                fi
                sleep 10s
            ;;
            3)
                if [ "${Dtar}" -eq 1 ];then
                   errorLog 12 "tar"
                else
                    clear
                    echo -e "${Blanco}Ha seleccionado formato ${Purpura}'${reset}${S_Rojo}Tar${reset}${Purpura}'${reset}${NAmarillo}.${reset}"
                    PedirRutaComprimir
                    PedirRutaComprimirGuardar ".tar"
                    PedirNombreGuardadoComprimir
                    comprobarArchivoGuardadoExiste "${salvar_comprimida}" "${nombre_guardado}.tar"
                    if tar -cvf "${salvar_comprimida}/${nombre_guardado}.tar" "${ruta_comprimir}" 2>/dev/null;then
                    echo -e "${Amarillo}Compresión finalizada, el fichero ${nombre_guardado} se encuentra en: ${salvar_comprimida}"
                    mostrar2=$(find "${salvar_comprimida}" -maxdepth 1 -name "${nombre_guardado}".tar -exec basename {} \;)
                    mapfile -t mostrar < <(ls "${salvar_comprimida}" --color=yes | grep -v "${nombre_guardado}".gz | tr "\n" " ")
                    echo -e "${Amarillo}Archivos en ${reset}${CRojo}${salvar_comprimida}${reset}${Amarillo} son${reset}:${Azul} ${mostrar[*]}${reset}${reset}"
                    else
                        errorLog 11
                    fi
                fi
                sleep 10s
            ;;
            4)
                if [ "${Dtar}" -eq 1 ];then
                   errorLog 12 "tar"
                else
                    clear
                    echo -e "${Blanco}Ha seleccionado formato ${Purpura}'${reset}${S_Rojo}Tar.bz2${reset}${Purpura}'${reset}${NAmarillo}.${reset}"
                    PedirRutaComprimir
                    PedirRutaComprimirGuardar ".tar.bz2"
                    PedirNombreGuardadoComprimir
                    comprobarArchivoGuardadoExiste "${salvar_comprimida}" "${nombre_guardado}.tar.bz2"
                    if tar -cvjf "${salvar_comprimida}/${nombre_guardado}.tar.bz2" "${ruta_comprimir}" 2>/dev/null;then
                    echo -e "${Amarillo}Compresión finalizada, el fichero ${nombre_guardado} se encuentra en: ${salvar_comprimida}"
                    mostrar2=$(find "${salvar_comprimida}" -maxdepth 1 -name "${nombre_guardado}".tar.bz2 -exec basename {} \;)
                    mapfile -t mostrar < <(ls "${salvar_comprimida}" --color=yes | grep -v "${nombre_guardado}".tar.bz2 | tr "\n" " ")
                    echo -e "${Amarillo}Archivos en ${reset}${CRojo}${salvar_comprimida}${reset}${Amarillo} son${reset}:${Azul} ${mostrar[*]}${reset}${NRojo}${mostrar2}${reset}"
                    else
                        errorLog 11
                    fi 
                fi
                sleep 10s
            ;;
            5)
                if [ "${Dtar}" -eq 1 ];then
                    errorLog 12 "tar"
                else
                    clear
                    echo -e "${Blanco}Ha seleccionado formato ${Purpura}'${reset}${S_Rojo}Tar.gz${reset}${Purpura}'${reset}${NAmarillo}.${reset}"
                    PedirRutaComprimir
                    PedirRutaComprimirGuardar ".tar.gz"
                    PedirNombreGuardadoComprimir
                    comprobarArchivoGuardadoExiste "${salvar_comprimida}" "${nombre_guardado}.tar.gz"
                    if tar czvf "${salvar_comprimida}/${nombre_guardado}.tar.gz" "${ruta_comprimir}" 2>/dev/null;then
                    echo -e "${Amarillo}Compresión finalizada, el fichero ${nombre_guardado} se encuentra en: ${salvar_comprimida}"
                    mostrar2=$(find "${salvar_comprimida}" -maxdepth 1 -name "${nombre_guardado}".tar.gz -exec basename {} \;)
                    mapfile -t mostrar < <(ls "${salvar_comprimida}" --color=yes | grep -v "${nombre_guardado}".tar.gz | tr "\n" " ")
                    echo -e "${Amarillo}Archivos en ${reset}${CRojo}${salvar_comprimida}${reset}${Amarillo} son${reset}:${Azul} ${mostrar[*]}${reset}${NRojo}${mostrar2}${reset}"
                    else
                        errorLog 11
                    fi
                fi
                sleep 10s
            ;;
            6)
                if [ "${Drar}" -eq 1 ];then
                   errorLog 12 "rar"
                else
                    clear
                    echo -e "${Blanco}Ha seleccionado formato ${Purpura}'${reset}${S_Rojo}Rar${reset}${Purpura}'${reset}${NAmarillo}.${reset}"
                    PedirRutaComprimir
                    PedirRutaComprimirGuardar ".rar"
                    PedirNombreGuardadoComprimir
                    comprobarArchivoGuardadoExiste "${salvar_comprimida}" "${nombre_guardado}.rar"
                    if rar a "${salvar_comprimida}/${nombre_guardado}.rar" "${ruta_comprimir}" 2>/dev/null;then
                    echo -e "${Amarillo}Compresión finalizada, el fichero ${nombre_guardado} se encuentra en: ${salvar_comprimida}"
                    mostrar2=$(find "${salvar_comprimida}" -maxdepth 1 -name "${nombre_guardado}".rar -exec basename {} \;)
                    mapfile -t mostrar < <(ls "${salvar_comprimida}" --color=yes | grep -v "${nombre_guardado}".rar | tr "\n" " ")
                    echo -e "${Amarillo}Archivos en ${reset}${CRojo}${salvar_comprimida}${reset}${Amarillo} son${reset}:${Azul} ${mostrar[*]}${reset}${NRojo}${mostrar2}${reset}"
                    else
                    errorLog 11
                    fi
                fi
                sleep 10s
            ;;
            7)
                if [ "${Dzip}" -eq 1 ];then
                   errorLog 12 "zip"
                else
                    clear
                    echo -e "${Blanco}Ha seleccionado formato ${Purpura}'${reset}${S_Rojo}Zip${reset}${Purpura}'${reset}${NAmarillo}.${reset}"
                    PedirRutaComprimir
                    PedirRutaComprimirGuardar ".zip"
                    PedirNombreGuardadoComprimir
                    comprobarArchivoGuardadoExiste "${salvar_comprimida}" "${nombre_guardado}.zip"
                    if zip -r -9 -v "${salvar_comprimida}/${nombre_guardado}.zip" "${ruta_comprimir}" 2>/dev/null;then
                    echo -e "${Amarillo}Compresión finalizada, el fichero ${nombre_guardado} se encuentra en: ${salvar_comprimida}"
                    mostrar2=$(find "${salvar_comprimida}" -maxdepth 1 -name "${nombre_guardado}".zip -exec basename {} \;)
                    mapfile -t mostrar < <(ls "${salvar_comprimida}" --color=yes | grep -v "${nombre_guardado}".zip | tr "\n" " ")
                    echo -e "${Amarillo}Archivos en ${reset}${CRojo}${salvar_comprimida}${reset}${Amarillo} son${reset}:${Azul} ${mostrar[*]}${reset}${NRojo}${mostrar2}${reset}"
                    else
                        errorLog 11
                    fi
                fi
                sleep 10s
            ;;
            8)
                if [ "${D7z}" -eq 1 ];then
                   errorLog 12 "7z"
                else
                    clear
                    echo -e "${Blanco}Ha seleccionado formato ${Purpura}'${reset}${S_Rojo}7Zip${reset}${Purpura}'${reset}${NAmarillo}.${reset}"
                    PedirRutaComprimir
                    PedirRutaComprimirGuardar ".7zip"
                    PedirNombreGuardadoComprimir 
                    comprobarArchivoGuardadoExiste "${salvar_comprimida}" "${nombre_guardado}.7z"
                    if 7z a "${salvar_comprimida}/${nombre_guardado}.7z" "${ruta_comprimir}" 2>/dev/null;then
                    echo -e "\n${Amarillo}${Amarillo}Compresión finalizada, el fichero ${nombre_guardado} se encuentra en:${reset} ${salvar_comprimida}"
                    mostrar2=$(find "${salvar_comprimida}" -maxdepth 1 -name "${nombre_guardado}".7z -exec basename {} \;)
                    mapfile -t mostrar < <(ls "${salvar_comprimida}" --color=yes | grep -v "${nombre_guardado}".7z | tr "\n" " ")
                    echo -e "${Amarillo}Archivos en ${reset}${CRojo}${salvar_comprimida}${reset}${Amarillo} son${reset}:${Azul} ${mostrar[*]}${reset}${NRojo}${mostrar2}${reset}"
                    else
                    errorLog 11
                    fi
                fi
                sleep 10s
            ;;
            9)
                echo -e "${Amarillo}Saliendo de la zona de compresión${NAmarillo}.${reset}\n"
                break
            ;;
            *) errorLog 1 9
               sleep 4s
            ;;
        esac
    done
;;
2)
    while [ "${v}" -eq 0 ];do
    echo -e "\n${Amarillo}Introduzca la ruta exacta del archivo comprimido (sin su nombre)${reset}${Blanco}:${reset}"
    read -rp " ·> " ruta_descomprimir
    RutaExiste "${ruta_descomprimir}" ruta_descomprimir
    RutaTieneComprimidos "${ruta_descomprimir}"
    sleep 10s

    clear
    echo -e "${CRojo}1${reset}${CNegro})${reset} ${Azul}Bz2${reset}"
    echo -e "${CRojo}2${reset}${CNegro})${reset} ${Azul}Gzip${reset}"
    echo -e "${CRojo}3${reset}${CNegro})${reset} ${Azul}Tar${reset}"
    echo -e "${CRojo}4${reset}${CNegro})${reset} ${Azul}Tar.bz2${reset}"
    echo -e "${CRojo}5${reset}${CNegro})${reset} ${Azul}Tar.gz${reset}"
    echo -e "${CRojo}6${reset}${CNegro})${reset} ${Azul}Rar${reset}"
    echo -e "${CRojo}7${reset}${CNegro})${reset} ${Azul}Zip${reset}"
    echo -e "${CRojo}8${reset}${CNegro})${reset} ${Azul}7zip${reset}"
    echo -e "${CRojo}9${reset}${CNegro})${reset} ${Azul}Salir${reset}\n"
    read -rp " ·> " descomprimir_metodo
        case "${descomprimir_metodo}" in
            1)
                if [ "${D7z}" -eq 1 ];then
                   errorLog 12 "7z"
                else
                    clear
                    echo -e "${Blanco}Ha seleccionado formato${reset} ${Purpura}'${reset}${S_Rojo}Bz2${Purpura}'${reset}${NAmarillo}.${reset}"
                    verArchivoExtension "${ruta_descomprimir}" "bz2"
                    seleccionarArchivoComprimido
                    PedirRutaDescomprimir
                    PedirNombreGuardadoDescomprimir
                    clear
                    if bzcat -dk "${ruta_descomprimir}/${fichero_descomprimir}" > "${ruta_salvado}/${nombre_guardado}" 2>/dev/null;then
                        echo -e "\n${Amarillo}Descompresión finalizada con éxito${reset}${NAmarillo}.${reset}"
                        mostrar2=$(find "${ruta_salvado}" -maxdepth 1 -name "${nombre_guardado}".tar.bz2 -exec basename {} \;)
                        mapfile -t mostrar < <(ls "${ruta_salvado}" --color=yes | grep -v "${nombre_guardado}".tar.bz2 | tr "\n" " ")
                        echo -e "${Amarillo}Archivos en ${reset}${CRojo}${ruta_salvado}${reset}${Amarillo} son${reset}${Blanco}:${reset}${Azul} ${mostrar[*]}${reset}${NRojo}${mostrar2}${reset}"
                    else
                        errorLog 2
                    fi
                fi
                sleep 15
            ;;
            2)
                if [ "${D7z}" -eq 1 ];then
                   errorLog 12 "7z"
                else
                    clear
                    echo -e "${Blanco}Ha seleccionado formato${reset} ${Purpura}'${reset}${S_Rojo}Gzip${reset}${Purpura}'${reset}${NAmarillo}.${reset}"
                    verArchivoExtension "${ruta_descomprimir}" "gz"
                    seleccionarArchivoComprimido
                    PedirRutaDescomprimir
                    PedirNombreGuardadoDescomprimir
                    clear
                    if gzip -d -c -k "${ruta_descomprimir}/${fichero_descomprimir}" > "${ruta_salvado}/${nombre_guardado}" 2>/dev/null;then
                        echo -e "\n${Amarillo}Descompresión finalizada con éxito${reset}${NAmarillo}.${reset}"
                        mostrar2=$(find "${ruta_salvado}" -maxdepth 1 -name "${nombre_guardado}".tar.bz2 -exec basename {} \;)
                        mapfile -t mostrar < <(ls "${ruta_salvado}" --color=yes | grep -v "${nombre_guardado}".tar.bz2 | tr "\n" " ")
                        echo -e "${Amarillo}Archivos en ${reset}${CRojo}${ruta_salvado}${reset}${Amarillo} son${reset}${Blanco}:${reset}${Azul} ${mostrar[*]}${reset}${NRojo}${mostrar2}${reset}"   
                    else
                        errorLog 2
                    fi
                fi
                sleep 15s
            ;;
            3)
                if [ "${D7z}" -eq 1 ];then
                   errorLog 12 "7z"
                else
                    clear
                    echo -e "${Blanco}Ha seleccionado formato ${reset}${Purpura}'${reset}${S_Rojo}Tar${reset}${Purpura}'${reset}${NAmarillo}.${reset}"
                    verArchivoExtension "${ruta}" "tar"
                    seleccionarArchivoComprimido
                    PedirRutaDescomprimir
                    clear

                    if tar -vxf "${ruta}/${fichero_descomprimir}" -C "${ruta_salvado}" 2>/dev/null;then
                        echo -e "\n${Amarillo}Descompresión finalizada con éxito${reset}${NAmarillo}.${reset}"
                        mostrar2=$(find "${ruta_salvado}" -maxdepth 1 -name "${nombre_guardado}".tar -exec basename {} \;)
                        mapfile -t mostrar < <(ls "${ruta_salvado}" --color=yes | grep -v "${nombre_guardado}".tar.bz2 | tr "\n" " ")
                        echo -e "${Amarillo}Archivos en ${reset}${CRojo}${ruta_salvado}${reset}${Amarillo} son${reset}${Blanco}:${reset}${Azul} ${mostrar[*]}${reset}${NRojo}${mostrar2}${reset}"    
                    else
                        errorLog 2
                    fi
                fi
                sleep 15s
            ;;
            4)
                if [ "${D7z}" -eq 1 ];then
                   errorLog 12 "7z"
                else
                    clear
                    echo -e "${Blanco}Ha seleccionado formato ${reset}${Purpura}'${reset}${S_Rojo}Tar.bz2${reset}${Purpura}'${reset}${NAmarillo}.${reset}"
                    verArchivoExtension "${ruta}" "tar.bz2"
                    seleccionarArchivoComprimido
                    PedirRutaDescomprimir
                    clear

                    if tar -xjvf "${ruta}/${fichero_descomprimir}" -C "${ruta_salvado}" 2>/dev/null;then
                        echo -e "\n${Amarillo}Descompresión finalizada con éxito${reset}${NAmarillo}.${reset}"
                        mostrar2=$(find "${ruta_salvado}" -maxdepth 1 -name "${nombre_guardado}".tar.bz2 -exec basename {} \;)
                        mapfile -t mostrar < <(ls "${ruta_salvado}" --color=yes | grep -v "${nombre_guardado}".tar.bz2 | tr "\n" " ")
                        echo -e "${Amarillo}Archivos en ${reset}${CRojo}${ruta_salvado}${reset}${Amarillo} son${reset}${Blanco}:${reset}${Azul} ${mostrar[*]}${reset}${NRojo}${mostrar2}${reset}"
                    else
                        errorLog 2
                    fi
                fi
                sleep 15s
            ;;
            5)  
                if [ "${D7z}" -eq 1 ];then
                   errorLog 12 "7z"
                else
                    clear
                    echo -e "${Blanco}Ha seleccionado formato ${reset}${Purpura}'${reset}${S_Rojo}Tar.gz${reset}${Purpura}'${reset}${NAmarillo}.${reset}"
                    verArchivoExtension "${ruta}" "tar.gz"
                    seleccionarArchivoComprimido
                    PedirRutaDescomprimir
                    clear

                    if tar -xzvf "${ruta}/${fichero_descomprimir}" -C "${ruta_salvado}" 2>/dev/null;then
                        echo -e "\n${Amarillo}Descompresión finalizada con éxito${NAmarillo}.${reset}"
                        mostrar2=$(find "${ruta_salvado}" -maxdepth 1 -name "${nombre_guardado}".tar.bz2 -exec basename {} \;)
                        mapfile -t mostrar < <(ls "${ruta_salvado}" --color=yes | grep -v "${nombre_guardado}".tar.bz2 | tr "\n" " ")
                        echo -e "${Amarillo}Archivos en ${reset}${CRojo}${ruta_salvado}${reset}${Amarillo} son${reset}:${Azul} ${mostrar[*]}${reset}${NRojo}${mostrar2}${reset}"
                    else
                        errorLog 2
                    fi
                fi
                sleep 15s
            ;;
            6)
                if [ "${D7z}" -eq 1 ];then
                   errorLog 12 "7z"
                else            
                    clear
                    echo -e "${Blanco}Ha seleccionado formato ${reset}${Purpura}'${reset}${S_Rojo}Rar${reset}${Purpura}'${reset}${NAmarillo}.${reset}"
                    verArchivoExtension "${ruta}" "rar"
                    seleccionarArchivoComprimido
                    PedirRutaDescomprimir
                    clear

                    if unrar x -r "${ruta}/${fichero_descomprimir}" "${ruta_salvado}" 2>/dev/null;then
                        echo -e "\n${Amarillo}Descompresión finalizada con éxito${reset}${NAmarillo}.${reset}"
                        mostrar2=$(find "${ruta_salvado}" -maxdepth 1 -name "${nombre_guardado}".rar -exec basename {} \;)
                    
                        mapfile -t mostrar < <(find "${ruta_salvado}" -maxdepth 1  ! -name "${nombre_guardado}".rar -exec basename {} \;)
                        echo -e "${Amarillo}Archivos en ${reset}${CRojo}${ruta_salvado}${reset}${Amarillo} son${reset}${Blanco}:${reset}${Azul} ${mostrar[*]}${reset}${NRojo}${mostrar2}${reset}"
                    else
                        errorLog 2
                    fi
                fi
                sleep 15s
            ;;
            7)
                if [ "${D7z}" -eq 1 ];then
                   errorLog 12 "7z"
                else
                    clear
                    echo -e "${Blanco}Ha seleccionado formato ${reset}${Purpura}'${reset}${S_Rojo}Zip${reset}${Purpura}'${reset}${NAmarillo}.${reset}"
                    verArchivoExtension "${ruta}" "zip"
                    seleccionarArchivoComprimido
                    PedirRutaDescomprimir
                    PedirNombreGuardadoDescomprimir
                    clear
                    if unzip "${ruta}/${fichero_descomprimir}" -d "${ruta_salvado}/${nombre_guardado}" 2>/dev/null;then
                        echo -e "\n${Amarillo}Descompresión finalizada con éxito${reset}${NAmarillo}.${reset}"
                        mostrar2=$(find "${ruta_salvado}" -maxdepth 1 -name "${nombre_guardado}".tar.bz2 -exec basename {} \;)
                        mapfile -t mostrar < <(ls "${ruta_salvado}" --color=yes | grep -v "${nombre_guardado}".tar.bz2 | tr "\n" " ")
                        echo -e "${Amarillo}Archivos en ${reset}${CRojo}${ruta_salvado}${reset}${Amarillo} son${reset}${Blanco}:${reset}${Azul} ${mostrar[*]}${reset}${NRojo}${mostrar2}${reset}"
                    else
                        errorLog 2
                    fi
                fi
                sleep 15s
            ;;
            8)
                if [ "${D7z}" -eq 1 ];then
                   errorLog 12 "7z"
                else
                    clear
                    echo -e "${Blanco}Ha seleccionado formato ${reset}${Purpura}'${reset}${S_Rojo}7Zip${reset}${Purpura}'${reset}${NAmarillo}.${reset}"

                    verArchivoExtension "${ruta}" "7z"
                    seleccionarArchivoComprimido
                    PedirRutaDescomprimir
                    PedirNombreGuardadoDescomprimir
                    clear

                    if 7z x "${ruta}/${fichero_descomprimir}" -o"${ruta_salvado}/${nombre_guardado}" 2>/dev/null;then
                        echo -e "\n${Amarillo}Descompresión finalizada con éxito${reset}${NAmarillo}.${reset}"
                        mostrar2=$(find "${ruta_salvado}" -maxdepth 1 -name "${nombre_guardado}".tar.bz2 -exec basename {} \;)
                        mapfile -t mostrar < <(ls "${ruta_salvado}" --color=yes | grep -v "${nombre_guardado}".tar.bz2 | tr "\n" " ")
                        echo -e "${Amarillo}Archivos en ${reset}${CRojo}${ruta_salvado}${reset}${Amarillo} son${reset}${Blanco}:${reset}${Azul} ${mostrar[*]}${reset}${NRojo}${mostrar2}${reset}"
                    else
                        errorLog 2
                    fi
                fi
                sleep 15s
            ;;
            9)
                echo -e "${Amarillo}Saliendo de la zona de descompresión...${reset}\n"
                break
            ;;
            *) errorLog 1 9
            ;;
            esac
    done
;;
3)
    echo -e "${Amarillo}\nSaliendo del script...${reset}"
    break
    exit 1
;;
*)
    echo -e "\n${CAmarillo}Tienes que poner poner ${CPurpura}'${reset}${Rojo}1${reset}${CPurpura}'${reset}${CAmarillo} (comprimir), ${CPurpura}'${reset}${Rojo}2${reset}${CPurpura}'${reset}${CAmarillo} (descomprimir) o ${CPurpura}'${reset}${Rojo}3${reset}${CPurpura}'${reset}${CAmarillo} para salir${NAmarillo}.${reset}"
;;
esac
done
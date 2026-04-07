# Para que un script de Power shell se ejecute debe estar activado:
# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# ---------------------------------
function Set-HugoLocalhost {
    param(
        [string]$archivo = "hugo.toml"
    )
    
    if (-not (Test-Path $archivo)) {
        Write-Error "El archivo $archivo no existe"
        return
    }
    
    $lineas = Get-Content $archivo
    $resultado = @()
    
    foreach ($linea in $lineas) {
        switch -Regex ($linea) {
            '# baseurl = "http://localhost"' {
                $resultado += $linea -replace '^# ', ''
            }
            'baseurl = "https://personal.us.es/rjsevillano"' {
                if ($linea -notmatch '^#') {
                    $resultado += '# ' + $linea
                } else {
                    $resultado += $linea
                }
            }
            'baseurl = "https://jescuderosic.github.io/personal-US-hugo-universal/"' {
                if ($linea -notmatch '^#') {
                    $resultado += '# ' + $linea
                } else {
                    $resultado += $linea
                }
            }
            default {
                $resultado += $linea
            }
        }
    }
    
    $resultado | Set-Content $archivo
    Write-Host "✅ Configurado para localhost" -ForegroundColor Green
}



# ---------------------------------

# Con privilegios de administrador debemos instalar los siguientes programas:
winget install --id Git.Git -e --source winget --scope machine
winget install Hugo.Hugo.Extended --scope machine
winget install --id Microsoft.VisualStudioCode -e --scope machine

# por si no existieran tambien vamos a instalar los siguientes programas:
winget install --id GIMP.GIMP -e --scope machine
winget install --id FileZilla.Client -e --scope machine

# Instalamos la extensión de idioma español para Visual Studio Code
# Instalamos la extensión de corrector ortográfico para Visual Studio Code
# Instalamos la extensión de Markdown All in One para Visual Studio Code
code --install-extension yzhang.markdown-all-in-one
code --install-extension ms-ceintl.vscode-language-pack-es
code --install-extension streetsidesoftware.code-spell-checker


# Si existiese la carpeta "C:\WWW" se renombrará a c:\WWW_%date:yyyy-MM-dd_HH-mm-ss%
if (Test-Path "C:\WWW") {
    Rename-Item "C:\WWW" "C:\WWW_$((Get-Date).ToString('yyyy-MM-dd_HH-mm-ss'))"
}

# Se crea la carpeta "C:\WWW" y se le asignan permisos de lectura y escritura a todos los usuarios
New-Item -Path "C:\WWW" -ItemType Directory
$acl = Get-Acl "C:\WWW"
$accessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("Everyone", "FullControl", "ContainerInherit, ObjectInherit", "None", "Allow")
$acl.SetAccessRule($accessRule)
Set-Acl "C:\WWW" $acl

# Accedemos a la carpeta "C:\WWW" y clonamos el repositorio de GitHub
Set-Location "C:\WWW"
# git clone https://github.com/jescuderoSIC/personal-US-hugo-universal.git

# nos colocamos en el directorio personal-US-hugo-universal
Set-Location "C:\WWW\personal-US-hugo-universal"

# Ejecutar la función para activar el localhost
Set-HugoLocalhost


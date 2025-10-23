# Conteúdo do arquivo script.ps1

Write-Host "Iniciando instalação de aplicativos..."

# Essenciais
winget install --id=Google.Chrome -e --silent
winget install --id=AnyDesk.AnyDesk -e --silent

# Office (Microsoft 365)
winget install --id=Microsoft.Office -e --silent

# Ferramentas Power User
winget install --id=Microsoft.PowerToys -e --silent
winget install --id=Microsoft.WindowsTerminal -e --silent

Write-Host "Instalação de aplicativos concluída!"

# Opcional: Remover Bloatware
Write-Host "Removendo alguns apps..."
Get-AppxPackage *Microsoft.XboxApp* | Remove-AppxPackage
Get-AppxPackage *Microsoft.ZuneVideo* | Remove-AppxPackage

Write-Host "Script finalizado."
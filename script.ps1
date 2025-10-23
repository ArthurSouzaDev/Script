# Conteúdo do arquivo script.ps1 (CORRIGIDO)

Write-Host "Iniciando instalação de aplicativos..."

# Essenciais
winget install --id=Google.Chrome -e --silent --accept-source-agreements --accept-package-agreements
winget install --id=AnyDesk.AnyDesk -e --silent --accept-source-agreements --accept-package-agreements
winget install --id=7zip.7zip -e --silent --accept-source-agreements --accept-package-agreements

# Office (Microsoft 365)
winget install --id=Microsoft.Office -e --silent --accept-source-agreements --accept-package-agreements

# Ferramentas Power User
winget install --id=Microsoft.PowerToys -e --silent --accept-source-agreements --accept-package-agreements
winget install --id=Microsoft.WindowsTerminal -e --silent --accept-source-agreements --accept-package-agreements

Write-Host "Instalação de aplicativos concluída!"

# Opcional: Remover Bloatware
Write-Host "Removendo alguns apps..."
Get-AppxPackage *Microsoft.XboxApp* | Remove-AppxPackage
Get-AppxPackage *Microsoft.ZuneVideo* | Remove-AppxPackage

Write-Host "Script finalizado."
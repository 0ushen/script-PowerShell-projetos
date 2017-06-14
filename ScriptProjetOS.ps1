function StartOrStopService
{
    param(
        [string]$service,
        [string]$action
    )
    switch ($action){
        'start'{
            Start-Service $service
        }
        'stop'{
            Stop-Service $service
        }
        default{
            Write-Host 'error'
        }
    }
}

function ADNewUser
{
    [string]$name = Read-Host "Nom de l'utilisateur"
    [string]$domain = Read-Host "Nom du domaine"
    $password = Read-Host -AsSecureString "Mot de passe"

    New-ADUser -name $name -server $domain -AccountPassword $password -Enabled $true
}
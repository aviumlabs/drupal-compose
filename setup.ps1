#==============================================================================
# 
#          FILE: setup.ps1
#         USAGE: .\setup.ps1 -Init
#                .\setup.ps1 -Clean
#  DESCRIPTION: Initialize a Drupal docker project with database support
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: This script generates the .env and .secret_db files for 
#               supporting the Drupal docker environment
#       AUTHOR: Michael Konrad
# ORGANIZATION: 
#      CREATED: 04/30/2024 
#     REVISION: ---
#==============================================================================
param (
    [switch]$Init = $false,
    [switch]$Clean = $false
)

$ENV_FILE = "$pwd\.env"
$DB_SECRET_FILE = "$pwd\.secret_db"

# Information to store in the environment file
# POSTGRES_DB=postgres
# POSTGRES_USER=postgres
function Write-EnvFile {
    $content = "POSTGRES_DB=postgres`nPOSTGRES_USER=postgres"
    
    $content | Out-File -FilePath $ENV_FILE -NoClobber
}

# Generate a random password of length PasswordLength, no special characters 
# included 
# lowercase alphabet characters [char]97..[char]122
# uppercase alphabet characters [char]65..[char]90
# numbers [char]48..[char]57
# based on "The Random Password Generator for PowerShell Core 6 and 7" by
# mtsimmons
function Get-RandomPassword {
    param (
        [int]$PasswordLength = 14
    )
    $charList = [char]97..[char]122 + [char]65..[char]90 + [char]48..[char]57

    $tmp = @()
    For ($i = 0; $i -lt $PasswordLength + 1; $i++) {
        $tmp += $charList | Get-Random
    }

    $pass = -join $tmp
    
    return $pass
}

# Write the database secret file
function Write-DbSecret {
    $line1 = Get-RandomPassword
    
    $line1 | Out-File -FilePath $DB_SECRET_FILE -NoClobber
}

function Reset-Env {
    Remove-Item -Path $ENV_FILE -Confirm
    Remove-Item -Path $DB_SECRET_FILE -Confirm
}

function Start-Docker {
    docker ps > $null
    if($LastExitCode -eq 0) {
        docker compose up 
    } else {
        Write-Host "Please start docker and run docker compose up to start Drupal."
    }
}

# Script Driver
function main {
    

    if($Init) {
        Write-Host "Initializing Drupal docker environment..."
        Write-EnvFile
        Write-DbSecret
        Write-Host "Initialization completed."
        Start-Docker
    }

    if($Clean) {
        Write-Host "Warning!!! Deleting these files may make your Drupal system unrecoverable."
        Write-Host "Removing docker environment and database files..."
        Reset-Env
        Write-Host "Drupal docker environment files have been deleted."
    }
    
}

main
oh-my-posh --init --shell pwsh --config $env:USERPROFILE\khazababa.omp.json | Invoke-Expression

Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -Colors @{ InlinePrediction = "$([char]0x1b)[36;7;238m"}


function gotoGithub { 
	Set-Location "~\Desktop\github"
}

New-Alias github gotoGithub;

function startNest{
	yarn start:dev
}

New-Alias devnest startNest;


function startDev{
	yarn dev
}

New-Alias dev startDev;

function genPrisma{
	yarn prisma generate;
}

New-Alias generate genPrisma;

function openCode{
	code .
}

New-Alias c  openCode;


$env:POSH_GIT_ENABLED = $true
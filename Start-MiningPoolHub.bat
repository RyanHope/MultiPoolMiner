cd %~dp0

setx GPU_FORCE_64BIT_PTR 1
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100

set "command=& .\multipoolminer.ps1 -wallet 1554hpypbECLDc1eKtMjzGZkRMmbpZTfEA -username PuffTheMagic -workername multipoolminer -region us -currency btc,usd -type amd,nvidia,cpu -poolname miningpoolhub,miningpoolhubcoins -algorithm cryptonight,ethash,ethash2gb,equihash,groestl,lyra2re2,lyra2z,neoscrypt,siaclaymore -donate 0 -watchdog -interval 10"

pwsh -noexit -executionpolicy bypass -windowstyle maximized -command "%command%"
powershell -version 5.0 -noexit -executionpolicy bypass -windowstyle maximized -command "msiexec -i https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-rc/PowerShell-6.0.0-rc-win-x64.msi -qn; %command%"
msiexec -i https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-rc/PowerShell-6.0.0-rc-win-x64.msi -qb!
pwsh -noexit -executionpolicy bypass -windowstyle maximized -command "%command%"

pause
# Start-Process powershell -Verb runas setup.ps1
$localDir = $Env:LOCALAPPDATA + "\nvim"
If(-not (Test-Path $localDir)) {
    mkdir $Env:LOCALAPPDATA/nvim
}
# local
$initvim = Resolve-Path ..\..\dotfiles\nvim\init.vim
$localInitVim = $localDir + "\init.vim"
If(-not (Test-Path $localInitVim)) {
    New-Item -Value $initvim -Path $localDir -Name init.vim -ItemType symboliclink
}
$ginitvim = Resolve-Path ..\..\dotfiles\nvim\ginit.vim
$localGinitVim = $localDir + "\ginit.vim"
If(-not (Test-Path $localGinitVim)) {
    New-Item -Value $ginitvim -Path $localDir -Name ginit.vim -ItemType symboliclink
}

$configDir = $Env:HOMEPATH + "\.config"
# config
If(-not (Test-Path $configDir)) {
    mkdir $configDir
}
$configNvimDir = $configDir + "\nvim"
If(-not (Test-Path $configNvimDir)) {
    mkdir $configNvimDir
}
$configNvimPlugSettingDir = $configNvimDir + "\plug-setting"
$plugSetting = Resolve-Path ..\..\dotfiles\nvim\plug-setting
If(-not (Test-Path $configNvimPlugSettingDir)) {
    New-Item -Value $plugSetting -Path $configNvimDir -Name "plug-setting" -ItemType symboliclink
}

$configNvimKeymap = $configNvimDir + "\keymap.vim"
$nvimKeymap= Resolve-Path ..\..\dotfiles\nvim\keymap.vim
If(-not (Test-Path $configNvimKeymap)) {
    New-Item -Value $nvimKeymap -Path $configNvimDir -Name "keymap.vim" -ItemType symboliclink
}

$localAutoDir = $localDir + "\autoload"
If(-not (Test-Path $localAutoDir)) {
   mkdir $localAutoDir
}
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    $localAutoDir + "\" +"plug.vim"
  )
)

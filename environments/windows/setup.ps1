# Start-Process powershell -Verb runas setup.ps1
$localDir  = $Env:LOCALAPPDATA + "\nvim"
If(-not (Test-Path $localDir)) {
    mkdir $Env:LOCALAPPDATA/nvim
}
$initvim = Resolve-Path ..\..\dotfiles\nvim\init.vim
If(-not (Test-Path $initvim)) {
    New-Item -Value $initvim -Path $localDir -Name init.vim -ItemType symboliclink
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
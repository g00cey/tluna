$f = (Get-Content ../vagrant-install-plugins) -as [string[]]
$i=1
foreach ($l in $f) {
    Write-Host $i : $l
    vagrant.exe plugin install $l
    $i++
}

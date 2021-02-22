# インストール前にやること

## chocolatey

[Chocolatey Software \| Installing Chocolatey](https://chocolatey.org/install#installing-chocolatey)

## powershell

```powershell
Set-ExecutionPolicy RemoteSigned
```

## chocoでインストール

.\install-media.ps1
.\install-dev.ps1
.\install-gaming.ps1

### git

git config --global core.autocrlf false
git config --global user.name g00chy
git config --global user.email totugekiluna@gmail.com

### 接続情報

.sshフォルダを持ってくる

### WSL2

- [Updating the WSL 2 Linux kernel \| Microsoft Docs](https://docs.microsoft.com/en-us/windows/wsl/wsl2-kernel)  
  - install wsl2 linux kernel
- adminでwsl2.ps1実行
- wslの中で下記を実行

```shell
cp .wslconfig /mnt/c/Users/totug/.wslconfig
sudo cp wsl.config /etc/wsl.config
```

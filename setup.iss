[Setup]
AppName=My Go App
AppVersion=1.0
DefaultDirName={pf}\MyGoApp
DefaultGroupName=MyGoApp
UninstallDisplayIcon={app}\myapp.exe
OutputDir=.
OutputBaseFilename=MyGoAppInstaller
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinesesimplified"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"

[CustomMessages]
chinesesimplified.WelcomeLabel1=欢迎使用 My Go App 安装向导
chinesesimplified.WelcomeLabel2=此向导将指导您完成 My Go App 的安装过程。
chinesesimplified.FinishedHeadingLabel=安装完成！
chinesesimplified.FinishedLabel=My Go App 已成功安装。您可以在 "开始" 菜单或桌面快捷方式中找到它。

[Files]
Source: ".\myapp.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\My Go App"; Filename: "{app}\myapp.exe"; IconFilename: "{app}\app.ico"

[Run]
Filename: "{app}\myapp.exe"; Description: "启动 My Go App"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\app.ico"

[Setup]
AppName=create_project
AppVersion=1.0
DefaultDirName={pf}\create_project
DefaultGroupName=create_project
UninstallDisplayIcon={app}\create_project.exe
OutputDir=.
OutputBaseFilename=create_project
Compression=lzma
SolidCompression=yes

[Files]
Source: ".\create_project.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\create_project"; Filename: "{app}\create_project.exe"

[Tasks]
Name: "desktopicon"; Description: "创建桌面快捷方式"; GroupDescription: "其他任务"; Flags: unchecked

[Run]
Filename: "{app}\readme.txt"; Description: "查看使用教程"; Flags: postinstall shellexec

[Code]
procedure CurStepChanged(CurStep: TSetupStep);
begin
  if CurStep = ssPostInstall then
  begin
    MsgBox('安装完成！请阅读使用教程。', mbInformation, MB_OK);
  end;
end;

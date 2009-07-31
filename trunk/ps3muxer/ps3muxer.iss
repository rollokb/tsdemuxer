; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#include "version.h"
#define MyAppName "PS3 Muxer"
#define MyAppExeName "ps3muxer.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{49A1D307-D9D3-493C-BA62-8D13581F99C1}
AppName={#MyAppName}
AppVerName={#MyAppVerName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\PS3Muxer
DefaultGroupName={#MyAppName}
AllowNoIcons=true
LicenseFile=..\ps3muxer\LICENSE
OutputDir=output
OutputBaseFilename=ps3muxer_setup
SetupIconFile=icons\film_go.ico
Compression=lzma/ultra64
SolidCompression=true
InternalCompressLevel=ultra64

[Languages]
Name: english; MessagesFile: compiler:Default.isl
Name: russian; MessagesFile: compiler:Languages\Russian.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: ..\ps3muxer\ps3muxer.exe; DestDir: {app}; Flags: ignoreversion
Source: ..\ps3muxer\QtGui4.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\ps3muxer\mkvtracks.exe; DestDir: {app}; Flags: ignoreversion
Source: ..\ps3muxer\ps3muxer_ru.qm; DestDir: {app}; Flags: ignoreversion
Source: ..\ps3muxer\ps3muxer_win32.cfg; DestDir: {app}; Flags: ignoreversion
Source: ..\ps3muxer\QtCore4.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\ps3muxer\ffmpeg\*; DestDir: {app}\ffmpeg; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ..\ps3muxer\mkvtoolnix\*; DestDir: {app}\mkvtoolnix; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ..\ps3muxer\tsmuxer\*; DestDir: {app}\tsmuxer; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: {group}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}
Name: {group}\{cm:ProgramOnTheWeb,{#MyAppName}}; Filename: {#MyAppURL}
Name: {group}\{cm:UninstallProgram,{#MyAppName}}; Filename: {uninstallexe}
Name: {commondesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Tasks: desktopicon; WorkingDir: {app}
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Tasks: quicklaunchicon; WorkingDir: {app}

[Run]
Filename: {app}\{#MyAppExeName}; Description: {cm:LaunchProgram,{#MyAppName}}; Flags: nowait postinstall skipifsilent; WorkingDir: {app}
[_ISTool]
UseAbsolutePaths=false

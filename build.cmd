@echo off
cd %~dp0
cd SkeletonMvcTemplate
REM create the project template zip
..\tools\7za.exe a -tzip -mx9 ..\ProjectTemplates\CSharp\Web\SkeletonMvcTemplate.zip *
pushd %~dp0
REM create the VSIX file based on the zip and manifest data
tools\7za.exe a -tzip -mx9 SkeletonMvcWebAppTemplate.vsix @vsixfiles.txt
REM delete the temporary zip
rmdir /s /q ProjectTemplates
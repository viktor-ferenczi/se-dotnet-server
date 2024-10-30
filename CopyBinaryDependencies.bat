@echo off
echo Copying binary dependencies...

set BIN64=Bin64
set TARGET=%1

REM Native binary dependencies
xcopy /Q /D /Y /-I "Bin64\EOSSDK-Shipping.dll" "%TARGET%\EOSSDK-Shipping.dll"
xcopy /Q /D /Y /-I "Bin64\GfnRuntimeSdk.dll" "%TARGET%\GfnRuntimeSdk.dll"
xcopy /Q /D /Y /-I "Bin64\Havok.dll" "%TARGET%\Havok.dll"
xcopy /Q /D /Y /-I "Bin64\NLog.dll" "%TARGET%\NLog.dll"
xcopy /Q /D /Y /-I "Bin64\Optick.dll" "%TARGET%\Optick.dll"
xcopy /Q /D /Y /-I "Bin64\opus.dll" "%TARGET%\opus.dll"
xcopy /Q /D /Y /-I "Bin64\RecastDetour.dll" "%TARGET%\RecastDetour.dll"
xcopy /Q /D /Y /-I "Bin64\steam_api64.dll" "%TARGET%\steam_api64.dll"
xcopy /Q /D /Y /-I "Bin64\vstdlib_s.dll" "%TARGET%\vstdlib_s.dll"
xcopy /Q /D /Y /-I "Bin64\vstdlib_s64.dll" "%TARGET%\vstdlib_s64.dll"
xcopy /Q /D /Y /-I "Bin64\tier0_s.dll" "%TARGET%\tier0_s.dll"
xcopy /Q /D /Y /-I "Bin64\tier0_s64.dll" "%TARGET%\tier0_s64.dll"
xcopy /Q /D /Y /-I "Bin64\Telerik*.dll" "%TARGET%\"

REM Managed binary dependencies
xcopy /Q /D /Y /-I "Bin64\VRage.Native.dll" "%TARGET%\VRage.Native.dll"
xcopy /Q /D /Y /-I "Bin64\HavokWrapper.dll" "%TARGET%\HavokWrapper.dll"
xcopy /Q /D /Y /-I "Bin64\EmptyKeys.UserInterface.dll" "%TARGET%\EmptyKeys.UserInterface.dll"
xcopy /Q /D /Y /-I "Bin64\EmptyKeys.UserInterface.Core.dll" "%TARGET%\EmptyKeys.UserInterface.Core.dll"
xcopy /Q /D /Y /-I "Bin64\RecastDetourWrapper.dll" "%TARGET%\RecastDetourWrapper.dll"
xcopy /Q /D /Y /-I "Bin64\EOSSDK.dll" "%TARGET%\EOSSDK.dll"
xcopy /Q /D /Y /-I "Bin64\CppNet.dll" "%TARGET%\CppNet.dll"

REM Archives
xcopy /Q /D /Y /-I "Bin64\steamcmd.zip" "%TARGET%\steamcmd.zip"

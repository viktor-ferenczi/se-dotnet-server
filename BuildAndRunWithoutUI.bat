set SolutionDir=%cd%
dotnet dotnet build --configuration Release
if %ERRORLEVEL% NEQ 0 goto :end
dotnet run --configuration Release --project SpaceEngineersDedicated -- -noconsole
:end
pause

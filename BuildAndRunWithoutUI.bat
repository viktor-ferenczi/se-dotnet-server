@set SolutionDir=%cd%
@echo The log output goes into a log file in this folder:
@echo %APPDATA%\SpaceEngineersDedicated
dotnet run --configuration Release --project SpaceEngineersDedicated -- -noconsole >build.log 2>&1

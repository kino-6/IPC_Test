@echo off
setlocal

pushd "%~dp0"
set BasePath=%~dp0

set ClientPath=%BasePath%\Client
set ClientBinPath=%ClientPath%\bin\Debug\net5.0\

set ServerPath=%BasePath%\Server
set ServerBinPath=%ServerPath%\bin\Debug\net5.0\

pushd %ServerPath%
dotnet build
start %ServerBinPath%\Server.exe
@REM copy %ServerBinPath%\Server* %ClientBinPath%
@REM popd

pushd %ClientPath%
start %ClientBinPath%\Client.exe
dotnet run

popd
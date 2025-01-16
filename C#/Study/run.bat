@echo off
REM 기존 Main 폴더 삭제
rmdir /s /q Main >nul 2>&1

REM 새로운 콘솔 앱 생성
dotnet new console --force -o Main >nul 2>&1

REM 입력받은 파일을 Program.cs로 복사
copy /Y %1 "Main/Program.cs" >nul 2>&1

REM Main 폴더로 이동
cd Main

@echo on
REM 실행
dotnet run
@echo off

REM 상위 디렉터리로 이동
cd ..

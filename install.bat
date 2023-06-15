@echo off

set CURRENT_DIR=%~dp0
set CURRENT_DIR=%CURRENT_DIR:\=/%

(
  echo source %CURRENT_DIR%basic.vim
  echo source %CURRENT_DIR%indent.vim
) > %homepath%/_vimrc

@echo off

set CURRENT_DIR=%~dp0

(
  echo source %CURRENT_DIR%basic.vim
  echo source %CURRENT_DIR%indent.vim"
) >> %homepath%/_vimrc


@echo off
dir *.svg /b > filelist.txt
for /f "tokens=1 delims=." %%a in ( filelist.txt ) do (
inkscape -p %%a.svg -o %%a.eps
)
del filelist.txt
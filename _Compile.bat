@echo off
setlocal

echo ========================================
echo  Application Builder
echo ========================================
echo.

for %%f in (00_Cover_Letter 01_Cover 02_Curriculum_Vitae 03_Project_Portfolio 04_Supporting_Documents) do (
    echo Generating %%f.tex ...
    pdflatex %%f.tex >nul
    pdflatex %%f.tex >nul
    del /q %%f.aux %%f.log %%f.out 2>nul
)

echo.
echo Done.
pause
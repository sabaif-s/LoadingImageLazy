@echo off
rem Loop through all .jpg files
for %%i in (*.jpg) do (
    ffmpeg -i "%%i" -vf scale=20:-1 "%%~ni-small.jpg"
    echo Created: %%~ni-small.jpg
)

rem Loop through all .png files
for %%i in (*.png) do (
    ffmpeg -i "%%i" -vf scale=20:-1 "%%~ni-small.png"
    echo Created: %%~ni-small.png
)

pause
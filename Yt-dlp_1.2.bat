@echo off
set /a rand=%RANDOM% %% 6
set "url=https://youtu.be/dQw4w9WgXcQ"

:menu
cls
set choice=7
if %rand%==0 (color 0A) else if %rand%==1 (color 0B) else if %rand%==2 (color 0C) else if %rand%==3 (color 0D) else if %rand%==4 (color 0E) else (color 0F)

REM Display menu
echo Download [%url%] as:
echo  1. video
echo  2. video playlist
echo  3. audio
echo  4. audio playlist
echo.
echo Other options:
echo  5. set URL
echo  6. Install/update
echo  7. Exit
echo.
set /p choice=
cls

if %choice%==6 (
  echo Installing dependencies
  color 09
  echo --- 0/3 ---
  winget install ffmpeg
  color 09
  echo --- 1/3 ---
  winget install mpv
  color 09
  echo --- 2/3 ---
  winget install yt-dlp
  color 09
  echo --- 3/3 ---
  echo Installation complete.
  echo WARNING: ffmpeg install usually fails so you may need to install it manually
) else if %choice%==1 (
  yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" --merge-output-format mp4 -o "%USERPROFILE%\Downloads\Yt-dlp\Video\%%(playlist)s\%%(title)s.%%(ext)s" %url%
) else if %choice%==2 (
  yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" --merge-output-format mp4 -o "%USERPROFILE%\Downloads\Yt-dlp\Video\%%(playlist)s\%%(title)s.%%(ext)s" %url%
) else if %choice%==3 (
  yt-dlp -f bestaudio -x --audio-format opus --embed-thumbnail --add-metadata -o "%USERPROFILE%\Downloads\Yt-dlp\Music\%%(title)s.%%(ext)s" %url%
) else if %choice%==4 (
  yt-dlp -f bestaudio -x --audio-format opus --embed-thumbnail --add-metadata -o "%USERPROFILE%\Downloads\Yt-dlp\Music\%%(playlist)s\%%(title)s.%%(ext)s" %url%
) else if %choice%==5 (
  set /p url=Enter URL:
  goto menu
) else if %choice%==7 (
  exit
) else (
  echo Invalid choice
)
pause
goto menu

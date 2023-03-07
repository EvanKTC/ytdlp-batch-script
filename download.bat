@echo off
title etruongs7's ytdlp Download Script

:menu
cls
echo Enter URL of video, playlist or channel to download
set /p url=URL:
echo Type 1 to download as mp3, 2 to download as video
set /p format=Select:
if %format% == 1 goto mp3
if %format% == 2 goto video

:mp3
yt-dlp -i -o "%%(title)s.%%(ext)s" -x --audio-format mp3 %url%
goto menu2

:video
yt-dlp -i -o "%%(title)s.%%(ext)s" %url%
goto menu2

:menu2
echo Download finished. Type 1 to exit, 2 to download another video
set /p repeat=Select:
if %repeat% == 1 goto exit
if %repeat% == 2 goto menu

:exit
exit

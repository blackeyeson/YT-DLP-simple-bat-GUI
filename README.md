# YT-DLP-simple-bat-GUI
 simple Terminal user interface for yt-dlp (https://github.com/yt-dlp/yt-dlp)
# setup 
 1. run bat file.
 2. pick the 6th option ( 6. Install/update )
 3. you might need to install ffmpeg manually 
   3.1 to do this google "ffmpeg install windows" for instructions
   3.2 first search result: https://www.geeksforgeeks.org/how-to-install-ffmpeg-on-windows/
 4. after initial setup restart the bat file and you are ready to go

# usage
 Download [URL] as:
  1. video - downloads video in the dir "%USERPROFILE%\Downloads\Yt-dlp\Video"
  2. video playlist - downloads videos in the dir "%USERPROFILE%\Downloads\Yt-dlp\Video\(PLAYLIST_NAME)
  3. audio - downloads audio in the dir "%USERPROFILE%\Downloads\Yt-dlp\Music
  4. audio playlist - downloads audios in the dir "%USERPROFILE%\Downloads\Yt-dlp\Music\(PLAYLIST_NAME) 

 Other options:
  5. set URL - sets the url that you want to download
  6. Install/update - used for setup and updating dependencies
  7. Exit

# extra
 you can set the output format by editing the bat file
 eg for audio: replace "opus"  with "mp3"
 eg for video: replace "mp4"  with "mov"

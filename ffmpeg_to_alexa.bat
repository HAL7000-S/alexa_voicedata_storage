for %%f in (./akane_voice_raw\*) do (
  ffmpeg -i "%%f" -ac 2 -codec:a libmp3lame -b:a 48k -ar 24000 -write_xing 0 "./akane_voice/%%~nf_output.mp3"
)
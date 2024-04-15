#Create file video.h264 from demo.mp4
ffmpeg -i demo.mp4 -an -vcodec libx264 -f rawvideo video.h264
#Create file audio.g711a from demo.mp4
ffmpeg -i demo.mp4 -vn -acodec pcm_mulaw -f alaw audio.g711a
#Run convert_video_to_array.py to create video.h264.h
#Run convert_audio_to_array.py to create audio.g711a.h

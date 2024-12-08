from pydub import AudioSegment
import imageio_ffmpeg

# Set the path to the ffmpeg binary for pydub
AudioSegment.converter = r"C:\Users\vkasy\anaconda3\envs\music-env\lib\site-packages\imageio_ffmpeg\binaries\ffmpeg-win64-v4.2.2.exe"

path = r"C:\Users\vkasy\OneDrive\Documents\Sound Recordings\High and Dry Sangah Noona.m4a"

# Load the audio file
audio = AudioSegment.from_file(path)

# Continue with your processing...
print("Audio loaded successfully!")


import ffmpeg

# Specify the path to the ffmpeg binary
ffmpeg_path = r"C:\Users\vkasy\ffmpeg-7.1-essentials_build\bin\ffmpeg.exe"
ffprobe_path = r"C:\Users\vkasy\ffmpeg-7.1-essentials_build\bin\ffprobe.exe"

# Path to your audio file
path = r"C:\Users\vkasy\OneDrive\Documents\Sound Recordings\High and Dry Sangah Noona.m4a"

# Probe the audio file to get metadata
try:
    info = ffmpeg.probe(path, cmd=ffprobe_path)
    print("File information:", info)
except ffmpeg.Error as e:
    print("Error:", e.stderr.decode())
    exit(1)

# Extract audio stream (if needed, for further processing)
output_path = "output.wav"
try:
    ffmpeg.input(path).output(output_path, cmd=ffmpeg_path).run()
    print(f"Audio successfully converted to {output_path}")
except ffmpeg.Error as e:
    print("Error during conversion:", e.stderr.decode())

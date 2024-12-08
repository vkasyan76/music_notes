import subprocess

# Paths to local ffmpeg binaries
ffmpeg_path = r"ffmpeg.exe"
ffprobe_path = r"ffprobe.exe"

# Path to your audio file
input_path = r"C:\Users\vkasy\OneDrive\Documents\Sound Recordings\High and Dry Sangah Noona.m4a"
output_path = "output.wav"

# Probe the audio file for metadata
try:
    result = subprocess.run([ffprobe_path, '-i', input_path], stdout=subprocess.PIPE, stderr=subprocess.PIPE, check=True)
    print("FFprobe output:", result.stdout.decode())
except subprocess.CalledProcessError as e:
    print("FFprobe error:", e.stderr.decode())
    exit(1)

# Convert the audio file using ffmpeg
try:
    subprocess.run([ffmpeg_path, '-i', input_path, output_path], check=True)
    print(f"Audio successfully converted to {output_path}")
except subprocess.CalledProcessError as e:
    print("FFmpeg error:", e.stderr.decode())

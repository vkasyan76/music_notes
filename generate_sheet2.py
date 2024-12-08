import subprocess
import pretty_midi
import librosa
import music21
import os
import sys

# Define paths to ffmpeg and ffprobe executables
ffmpeg_path = os.path.join(os.getcwd(), "ffmpeg.exe")
ffprobe_path = os.path.join(os.getcwd(), "ffprobe.exe")

# Define path to local LilyPond executable
lilypond_path = os.path.join(os.getcwd(), "lilypond", "bin", "lilypond.exe")

# Set the LilyPond path in music21's environment
music21.environment.set('lilypondPath', lilypond_path)

# Input and output file paths
input_audio = r"C:\Users\vkasy\OneDrive\Documents\Sound Recordings\High and Dry Sangah Noona.m4a"
output_wav = "output.wav"
output_mid = "output.mid"
output_pdf = "output_notation.pdf"

# Function to check if LilyPond is present
def is_lilypond_present():
    return os.path.exists(lilypond_path)

# Step 1: Probe and Convert Audio
def probe_and_convert(input_path, ffmpeg, ffprobe, output_path):
    try:
        result = subprocess.run([ffprobe, '-i', input_path], stdout=subprocess.PIPE, stderr=subprocess.PIPE, check=True)
        print("FFprobe output:", result.stdout.decode())
    except subprocess.CalledProcessError as e:
        print("FFprobe error:", e.stderr.decode())
        sys.exit(1)
    
    # Check if output.wav already exists
    if os.path.exists(output_path):
        overwrite = input(f"File '{output_path}' already exists. Overwrite? [y/N] ").strip().lower()
        if overwrite != 'y':
            print("Operation cancelled by user.")
            sys.exit(0)
    
    try:
        subprocess.run([ffmpeg, '-i', input_path, output_path], check=True)
        print(f"Audio successfully converted to {output_path}")
    except subprocess.CalledProcessError as e:
        print("FFmpeg error:", e.stderr.decode())
        sys.exit(1)

# Step 2: Onset Detection and MIDI Generation
def generate_midi(input_wav, output_midi):
    try:
        y, sr = librosa.load(input_wav)
    except Exception as e:
        print(f"Failed to load audio file {input_wav}: {e}")
        sys.exit(1)
    
    onset_frames = librosa.onset.onset_detect(y=y, sr=sr, backtrack=True)
    onset_times = librosa.frames_to_time(onset_frames, sr=sr)
    
    pitches, magnitudes = librosa.piptrack(y=y, sr=sr, fmin=librosa.note_to_hz('C2'), fmax=librosa.note_to_hz('C7'))
    
    midi = pretty_midi.PrettyMIDI()
    piano = pretty_midi.Instrument(program=0)  # Acoustic Grand Piano
    
    for i, onset in enumerate(onset_times):
        # Find the pitch with the highest magnitude at the onset frame
        if i < len(onset_frames):
            pitch_candidates = pitches[:, onset_frames[i]]
            magnitude_candidates = magnitudes[:, onset_frames[i]]
            index = magnitude_candidates.argmax()
            pitch_hz = pitch_candidates[index]
            
            if pitch_hz > 0:
                note_number = pretty_midi.hz_to_note_number(pitch_hz)
                # Define a default duration or calculate based on next onset
                if i < len(onset_times) - 1:
                    end = onset_times[i + 1]
                else:
                    end = onset + 0.5  # Default duration for the last note
                note = pretty_midi.Note(velocity=100, pitch=int(round(note_number)), start=onset, end=end)
                piano.notes.append(note)
    
    midi.instruments.append(piano)
    try:
        midi.write(output_midi)
        print(f"MIDI file saved as {output_midi}")
    except Exception as e:
        print(f"Failed to write MIDI file {output_midi}: {e}")
        sys.exit(1)

# Step 3: Convert MIDI to PDF using music21 and local LilyPond
def midi_to_pdf(midi_file, pdf_file):
    if not is_lilypond_present():
        print("LilyPond executable not found in the project folder.")
        sys.exit(1)
    
    try:
        # Parse MIDI file using music21
        score = music21.converter.parse(midi_file)
        
        # Convert to LilyPond (.ly) format
        ly_file = "output.ly"
        score.write('lilypond', fp=ly_file)
        print(f"LilyPond file created: {ly_file}")
        
        # Insert \version statement at the top
        with open(ly_file, 'r+', encoding='utf-8') as file:
            content = file.read()
            if not content.startswith('\\version'):
                file.seek(0, 0)
                file.write('\\version "2.24.4"\n' + content)
                print("Inserted \\version statement into the .ly file.")
        
        # Remove or comment out invalid commands
        invalid_commands = ['\\RemoveEmptyStaffContext']
        with open(ly_file, 'r+', encoding='utf-8') as file:
            lines = file.readlines()
            file.seek(0)
            for line in lines:
                for cmd in invalid_commands:
                    if cmd in line:
                        line = line.replace(cmd, f"% {cmd}")
                        print(f"Commented out invalid command: {cmd}")
                file.write(line)
            file.truncate()
        
        # (Optional) Fix unterminated ties and voice settings
        # Implement additional fixes here if necessary
        
        # Run LilyPond to generate PDF from LilyPond file
        lilypond_command = [lilypond_path, '--pdf', ly_file]
        subprocess.run(lilypond_command, check=True)
        
        # The output PDF will have the same base name as the LilyPond file
        generated_pdf = os.path.splitext(ly_file)[0] + ".pdf"
        if os.path.exists(generated_pdf):
            os.rename(generated_pdf, pdf_file)
            print(f"PDF successfully created: {pdf_file}")
        else:
            print("Failed to find the generated PDF from LilyPond.")
            sys.exit(1)
    except subprocess.CalledProcessError as e:
        print(f"Failed to run LilyPond: {e}")
        sys.exit(1)
    except Exception as e:
        print(f"An error occurred during PDF generation: {e}")
        sys.exit(1)

# Main Execution
def main():
    # Step 1: Probe and Convert Audio
    probe_and_convert(input_audio, ffmpeg_path, ffprobe_path, output_wav)
    
    # Step 2: Generate MIDI
    generate_midi(output_wav, output_mid)
    
    # Step 3: Convert MIDI to PDF using LilyPond
    midi_to_pdf(output_mid, output_pdf)

if __name__ == "__main__":
    main()

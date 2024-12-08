import librosa
import pretty_midi
import numpy as np

# Load the audio file
audio_file = "output.wav"
y, sr = librosa.load(audio_file, sr=22050)

# Onset detection (detects note start times)
onset_frames = librosa.onset.onset_detect(y=y, sr=sr)
onset_times = librosa.frames_to_time(onset_frames, sr=sr)

# Generate MIDI file
midi = pretty_midi.PrettyMIDI()
piano = pretty_midi.Instrument(program=0)  # Acoustic Grand Piano
for onset in onset_times:
    note = pretty_midi.Note(velocity=100, pitch=60, start=onset, end=onset + 0.5)
    piano.notes.append(note)
midi.instruments.append(piano)

# Save MIDI file
midi.write("output.mid")
print("MIDI file saved as output.mid")

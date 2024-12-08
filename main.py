from pydub import AudioSegment
from pydub.silence import detect_nonsilent
import pretty_midi

path = r"C:\Users\vkasy\OneDrive\Documents\Sound Recordings\High and Dry Sangah Noona.m4a"

# Load the audio file
# audio = AudioSegment.from_file("your_audio_file.m4a")
audio = AudioSegment.from_file(path)

# Convert audio to raw data
samples = audio.get_array_of_samples()

# Identify nonsilent sections
nonsilent_ranges = detect_nonsilent(samples, min_silence_len=500, silence_thresh=-40)

# Generate MIDI notes
def generate_midi(notes, file_path="output.mid"):
    midi = pretty_midi.PrettyMIDI()
    piano_program = pretty_midi.instrument_name_to_program("Acoustic Grand Piano")
    piano = pretty_midi.Instrument(program=piano_program)
    for start, end, pitch in notes:
        note = pretty_midi.Note(velocity=100, pitch=pitch, start=start, end=end)
        piano.notes.append(note)
    midi.instruments.append(piano)
    midi.write(file_path)

# Map the nonsilent ranges to MIDI notes
midi_notes = []
for start_ms, end_ms in nonsilent_ranges:
    start_time = start_ms / 1000
    end_time = end_ms / 1000
    pitch = pretty_midi.note_name_to_number("E5")  # Replace with your detected note
    midi_notes.append((start_time, end_time, pitch))

# Generate MIDI file
generate_midi(midi_notes, "piano_output.mid")
print("MIDI file generated as 'piano_output.mid'")

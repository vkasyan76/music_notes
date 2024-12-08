from music21 import converter

# Load the MIDI file
midi_file = "output.mid"
score = converter.parse(midi_file)

# Save as PDF
pdf_file = "output.pdf"
score.write('lily.pdf', fp=pdf_file)

print(f"Sheet music saved as {pdf_file}")

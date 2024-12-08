import pretty_midi
from reportlab.pdfgen import canvas

# Input and output files
midi_file = "output.mid"
pdf_file = "output_notation.pdf"

# Load the MIDI file using pretty_midi
midi_data = pretty_midi.PrettyMIDI(midi_file)

# Create a PDF canvas
c = canvas.Canvas(pdf_file)
c.setFont("Helvetica", 12)
c.drawString(100, 800, "Generated Sheet Music from MIDI")
y = 750

# Iterate through instruments and notes
for instrument in midi_data.instruments:
    instrument_name = instrument.name if instrument.name else "Unknown Instrument"
    c.drawString(50, y, f"Instrument: {instrument_name}")
    y -= 20

    for note in instrument.notes:
        note_name = pretty_midi.note_number_to_name(note.pitch)
        start_time = round(note.start, 2)
        end_time = round(note.end, 2)
        duration = round(note.end - note.start, 2)
        c.drawString(50, y, f"Note: {note_name}, Start: {start_time}s, End: {end_time}s, Duration: {duration}s")
        y -= 20

        # Add a new page if content exceeds the page
        if y < 50:
            c.showPage()
            c.setFont("Helvetica", 12)
            y = 800

# Save the PDF
c.save()
print(f"PDF successfully created: {pdf_file}")


import subprocess
import music21
import os

# Function to install LilyPond (example for Windows)
def install_lilypond():
    lilypond_installer_url = "http://ftp.linux.org.uk/pub/lilypond/binaries/windows/lilypond-2.24.2.exe"
    installer_path = "lilypond_installer.exe"
    
    # Download LilyPond installer
    subprocess.run(['curl', '-L', lilypond_installer_url, '-o', installer_path], check=True)
    
    # Run installer silently (this might vary based on installer options)
    subprocess.run([installer_path, '/S'], check=True)
    
    # Clean up installer
    os.remove(installer_path)

# Check if LilyPond is installed
def is_lilypond_installed():
    try:
        subprocess.run(['lilypond', '--version'], stdout=subprocess.PIPE, stderr=subprocess.PIPE, check=True)
        return True
    except subprocess.CalledProcessError:
        return False
    except FileNotFoundError:
        return False

if not is_lilypond_installed():
    print("LilyPond not found. Installing...")
    install_lilypond()
    print("LilyPond installed successfully.")

# Convert MIDI to PDF using music21 and LilyPond
def midi_to_pdf(midi_file, pdf_file):
    score = music21.converter.parse(midi_file)
    score.write('lily.pdf', fp=pdf_file)

# Usage
midi_file = "output.mid"
pdf_file = "output_notation.pdf"
midi_to_pdf(midi_file, pdf_file)
print(f"PDF successfully created: {pdf_file}")

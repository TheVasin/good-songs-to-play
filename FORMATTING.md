Formatting guide
================

All songs should be located in folders with name of the artist. Filename should represent name of the song.
Songs should be provided in ASCIIDOC .ad format.
Use http://www.methods.co.nz/asciidoc/ for reference.

Song starts with srtist title and song name separated by '-'. This line should be first line of the file and formatted as a second level header(Started with '==').

Each part of the song should be separated from other text by empty line. Name of the song part also separated from other text by empty line and ended with ':'.

Lyrics with chords indented by tabulation. Chords should be separated only by one space symbol - no more.

Use tab width 4 and unix line endings.

I use 'generator.py' to generate ASCIIDOC containing content of all '.ad' files from subfolder.

Then this document could be converted by 'asciidoc' and 'asciidoctor'.

Alexander Vasin

# Introduction and getting set up

Scorpion is a game engine targeted at low end, 68K Amiga computers. The three key principles of the engine are:

1. The engine is designed to support fluid games on unexpanded Amigas - a carefully crafted, minimalistic game will run smoothly on an A500 (there are also options for 25FPS and less available).
2. The compiler for the engine is for Windows, and supports PNGs for importing graphics. These are converted to raw bitplanes using a reference PNG as a source palette, and the alpha channel is used to generate a mask.
3. The engine features a flexible virtual machine, based on a subset of Ink script, for logic and dialogue management.


## Disclaimer

This is a very early release of the engine. Both the engine and compiler will be buggy. The engine is constantly evolving so projects made with earlier versions of the engine cannot be guaranteed to be compatible with later versions of the compiler (though hopefully, updating early Scorpion projects should be easy to do)

Please report all issues you're having on the EAB thread: http://eab.abime.net/showthread.php?p=1322826


## Getting set up

While to play a Scorpion game, you only need an A500 and the appropriate amount of RAM, to compile a Scorpion game you will need:

- A download of this repository.
- A Windows (10 recommended) computer.
- A copy of the Spriter Beta to edit animations (also in this repository).
- A copy of Tiled for map editing.
- Any text editor for editing Ink and Txt files.

## Licencing

The Scorpion engine is free and unrestricted for use on non-commercial, freeware projects. Commercial licencing is entirely unavailable until such time that the engine is more mature.


## Running the compiler

Simply run Scorpion.exe. If you have at least one Scorpion project in a subfolder (the download will come with one or more sample games already), it will ask you which project you'd like to compile.

The output folder will have both the game data and a Scorpion game.exe for Amiga.

Alternatively, if you have multiple projects in one folder, run "Scorpion.exe [projectname]" to compile a specific project.

# [Back to Table of Contents](../)

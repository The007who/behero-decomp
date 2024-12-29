![Logo](docs/logo.png)
# Behero Decompilation
The Behero is an Italian toy released in 2010 by Giochi Preziosi. 

This is an effort in extracting the game data from it and hopefully reverse engineer for preservation and cross play. This branch is only for the decompilation process.

All info about the inner workings of the console can be found in `docs/hardware-documentation.odt`.
For general info about the game, you can find it all on the [Wiki](https://the007who.github.io/behero-decomp/).
# Roadmap
[ ] Backup all software on the console(the rated lifetime of the EEPROM is near the end!)
[ ] Obtain root filesystem.
[ ] Run the binaries in an emulated environment, maybe QEMU.
[ ] Decompile the game.
Make ports for all major platforms:
    [ ] Linux and Mac: Qt framework.
    [ ] Windows: .NET 2.0 framework so that it can run all the way down to win9x thanks to [this](https://github.com/itsmattkc/dotnet9x) compatibility layer.
    [ ] Android: Use the Android NDK to use C code.
    [ ] WASM: Compile to Web Assembly to make it run on directly on the Wiki.
# Boing

This bash script "app" was create for an Amiga emulator laptop I built as a helper to boot the various Amiga OSes and games.

It's geared towards the laptop I made it for but can be modified to suit any needs.

![Screenshot](https://ironet.kytschi.com/mike/boing/raw/master/screenshots/logo.png)

![Screenshot](https://ironet.kytschi.com/mike/boing/raw/master/screenshots/menu.png)

## Config

Before starting create the config file in the boing folder either by creating a file and filling in the following settings. 

Or by copying the sample and renaming it from comfig.sample to config.

## Software

The following software is used with this app. Some of it is optional but recommended if you want the full experience.

* fs-uae (required)
* fs-uae-arcade (optional)
* fs-uae-launcher (optional)
* upower (optional, required for battery percentage output)
* mpg123 (optional)
* firefox (optional)
* gnome network manager (optional)

### I hate your taste in music

Yeah, yeah, people hate my music but I love it! To disable the start up tune you just need to edit the config in **cfgs** and set **TUNE** to **false**

You can also disable the logo from playing by setting **LOGO** to **false** and if both are false you'll get no startup sequence at all.

## License

Copyright 2022 Mike Welsh (mike@amigamike.com)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

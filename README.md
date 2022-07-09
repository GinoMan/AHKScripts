# Personal Autohotkey Scripts #

[![Author: Gino Vincenzini](https://ginovincenzini.com/public/images/Author-GinoVincenzini-brightgreen-badge.png)](https://ginovincenzini.com)
[![Lines of code](https://img.shields.io/tokei/lines/github/GinoMan/AHKScripts?label=Total%20Lines&logo=github&logoColor=white)](https://github.com/GinoMan/AHKScripts)
[![GitHub License](https://img.shields.io/github/license/GinoMan/AHKScripts?label=License&logo=creativecommons&logoColor=white)](https://github.com/GinoMan/AHKScripts/blob/master/LICENSE)
[![Platform AutoHotKey](https://img.shields.io/badge/Platform-AutoHotKey-green?logo=autohotkey&logoColor=white)](https://autohotkey.com)

## Description ##

[AutoHotKey][ahk] is a programmable scripting tool that allows you to set "hotkeys" and "hotstrings" that perform various functions, such as replacing words and phrases, initiating system processes, and many other things. Included are several scripts that are all linked into "Hotkeys.ahk" using `#Include` directives. These contain additional features described below.

## Hotkeys.ahk ##

This script is the main entrypoint script. It includes several features:

- Forces a single instance of the listener.
- Causes hotstrings to be case sensitive and omit the key that triggers them.
- Sets the triggering key for Hotstrings to Tab.
- Shows a Toast notification indicating that the listener has started.
- Creates a menu entry in the context menu for the tray icon that sets the listener to run at startup.
- Includes the other features in this repository.
- Provides Ctrl+Win+Alt+F1 (the sleep key on my laptop) to hibernate the system immediately.
- Creates Hotstrings that turn into Science™.

## Timestamp.ahk ##

Provides three Hotstrings: `<now>`, `<today>`, and `<time>` that return the following by example:

- `<now>`: 7/6/2022 4:26 PM
- `<today>`: 7/6/2022
- `<time>`: 4:26 PM

## Spanish.ahk ##

Replaces hotstrings with Spanish special characters. The Letter examples also work with lowercase letters.

- `A*`: Á
- `E*`: É
- `I*`: Í
- `O*`: Ó
- `U*`: Ú
- `N~`: Ñ
- `!!`: ¡
- `??`: ¿

## ScriptManagement.ahk ##

This script defines two hotkeys that allow you to reload and edit the script in VSCode:

- LControl + R: Reload the main script
- LControl + E: Edit the scripts in VSCode

## ClipQueue.ahk ##

ClipQueue creates a pipe of copy operations and then allows you to paste them in the order they were copied. Without it, you would have to go back and forth between where you were copying from, and where you're pasting it to. It provides the following functions:

- Ctrl+Shift+C: Copy into the pipe
- Ctrl+Shift+V: Paste from the pipe

If you copy into the pipe after beginning to paste from the pipe, the pipe will be reset with a new pipe. Also, it saves the clipboard state before and after copying and pasting to/from the pipe so normal copy and paste operations are not interrupted.

## _secrets.ahk ##

This file is not provided in the repository, but if you create it, the Hotkeys.ahk script will load it in. Mine includes a set of dot-separated hierarchical information (e.g. me.discord, me.facebook, me.twitter, bank.routing, bank.gino, etc.) which are replaced with personal information when they're typed in and then the tab key is hit.

## External Scripts ##

There is an external script referenced in the main script that was not written by me:

### AutoCorrect.ahk ###

This script was created and posted on the [Autohotkey Forums][autoc]. I have [downloaded](https://raw.githubusercontent.com/cdelahousse/Autocorrect-AutoHotKey/master/AutoCorrect.ahk) it into this repository and referenced it in the main script.

[ahk]: https://www.autohotkey.com/
[autoc]: https://www.autohotkey.com/board/topic/7379-autoreplace/

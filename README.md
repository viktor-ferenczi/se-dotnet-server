# How to run the SE Dedicated Server on .NET 8.0 

For support please [join the SE Mods Discord](https://discord.gg/PYPFPGf3Ca).

**Please consider supporting my work on [Patreon](https://www.patreon.com/semods) or a one time donation via [PayPal](https://www.paypal.com/paypalme/vferenczi/).**

*Thank you and enjoy!*

## What's this?

This repository provides a way to decompile the Dedicated Server into C# 11.0 source
code in several projects, combined into a single solution. It also 
contains a script and patches to fix the code to run on .NET 8.0.

See also: [Torch Server on .NET 8.0](https://github.com/viktor-ferenczi/se-dotnet-torch)

## Legal

_Space Engineers is a trademark of Keen Software House s.r.o._

_I have no affiliation with Keen Software House._

### Warning for players

This repository contains an advanced development and server side deployment tool.
If you are only playing Space Engineers and not developing for it or hosting a
busy server, then you **should not** use this repository in any way.

### Disclaimer

The method described in this repository is completely unsupported
by the game's developer. Use it only at your own risk.

**Do not** report any bugs based on running the game this way, unless
the exact same issue is reproducible with the original game server.

If decompiling software for your own personal learning, research,
testing or debugging purposes is against the law in your country,
then do not use this repository. 

**Never** publish the decompiled source code, including, but not
limited to uploading it to publicly available source code repositories.

## Prerequisites

- **Space Engineers Dedicated Server** installed via Steam
- [.NET 8.0 SDK, Windows x64](https://dotnet.microsoft.com/en-us/download/dotnet/8.0)
- [JetBrains Rider](https://www.jetbrains.com/rider/) or Microsoft Visual Studio
- [ILSpy](https://github.com/icsharpcode/ILSpy) version 8.2.0.7535 - Install it by running `SetupILSpy.bat`
- [Python 3.12](https://python.org) or newer
- [Git](https://gitforwindows.org/) to create a **local** repository 

Make sure these executables are available on `PATH`:
- `ilspycmd`
- `python`
- `git`

Define this environment variable: `DEDICATED_SERVER_ROOT`
- Usual value: `C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineersDedicatedServer`
- If you installed the server at a custom path, then use that path.

## Usage

Run `Prepare.bat`, it should take about 10-20 minutes to complete.

It should print `DONE` at the end. If it prints `FAILED`, then investigate
the console output and try again. This script is designed to be retryable,
but it requires reverting the working copy to the latest commit beforehand.

You can then open and built the project in your C# IDE (Rider, Visual Studio).

Alternatively you can build and run a `Release` build from the command line by
executing the `BuildAndRun.bat` script. It should work without an IDE.

_Enjoy!_

### Build targets

`Debug` builds are running a bit slower than normal due to the lack
of code optimization, but still usable for development/research.

`Release` builds should also work and provide the usual performance. 
Release builds are less debuggable due to code optimization, you
may not be able to break the code everywhere and some variable
values may not be observable.

## Expected use cases

**Investigating game bugs and performance issues** directly without 
continuously waiting on the decompiler. Being able to quickly navigate 
the code and even change it at runtime. You can see all variable values 
and can break the code anywhere if you run a `Debug` build.

**Prototyping plugins** by directly changing the game's source code. Once it
works and tested, it can be turned into a Torch plugin. Combined with
publicizer support it would be a powerful way to develop new plugins.

**Server hosting** with better performance, especially if you want to make
custom code changes which are not available via plugins.
 
## Remarks

### Disabled code

- The script performance profiling is disabled, because it broke the script compiler. It has not been fixed, because without game analytics it is pointless to have anyway.

### Ceveats

- Plugins most likely won't work, especially if they depend on transpiler patches.
- The server will not update itself when a new game version is released, it has to be recompiled once an updated set of patches are available here.

### How the manual patch was made?

```shell
git format-patch -1 HEAD --stdout >Manual_fixes.patch
```

## Credits

*In alphabetical order*

### Patreon

#### Admiral level supporters
- BetaMark
- Bishbash777
- Casinost
- Dorimanx
- wafoxxx

#### Captain level supporters
- DontFollowOrders
- Gabor
- Lazul
- Lotan
- mkaito
- ransomthetoaster
- Raidfire

### Developers
- zznty: motivation, slight hints into the right direction

## Troubleshooting

### Dependencies appear to be missing

Make sure you have the `DedicatedServer64` folder linked to your solution folder.
If it is not there, then run `LinkBin64.bat` to restore it.

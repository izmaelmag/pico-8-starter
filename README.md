# Pico-8 Starter Platformer

This repository contains a minimal Pico-8 platformer. The code is split into modules and combined via `#include` in `src/main.p8`.

## Requirements
- [Pico-8](https://www.lexaloffle.com/pico-8.php) installed and available in your `$PATH` as `pico8`.

## Usage
Run the game:

```sh
make run
```

Export a binary cartridge:

```sh
make build
```

Build output will appear in the `build/` directory.

## Project Structure
- `src/main.p8` – main cartridge file
- `modules/` – Lua modules included by the cartridge
  - `player/` – player logic
  - `world/` – world definitions

Each module directory has its own `README.md` describing its purpose.

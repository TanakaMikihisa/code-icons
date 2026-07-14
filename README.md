# Code Icons

[🇬🇧EN](./README.md) / [🇯🇵JP](./README-JP.md) / [🇨🇳CH](./README-CH.md)

Code Icons is a file icon theme for Visual Studio Code / Cursor.
It keeps the default Seti coverage and adds custom icons for common project files and folders.

## How To Use

1. Install this extension.
2. Open Command Palette.
3. Run `File Icon Theme`.
4. Select `Code Icons`.

## Sample Grid (Image + Mapping)

| `.cursor` folder / `.cursorignore` file | `.claude` folder / `CLAUDE.md` file | `.codex` folder |
| --- | --- | --- |
| ![cursor](assets/cursor-sm.png) | ![claude](assets/claude.png) | ![codex](assets/codex.png) |
| `.agent` folder | `config.json` file | `docs` / `note` folders |
| ![agent](assets/agent-sm.png) | ![config](assets/config.png) | ![docs](assets/docs.png) |
| `.venv` / `venv` / `env` / `.virtualenv` / `virtualenv` folders | `rules` folder | `skills` folder |
| ![venv](assets/venv-sm.png) | ![rule](assets/rule-sm.png) | ![skill](assets/skill-sm.png) |
| `.env` file / `private` folder | `*.swift` files | `.swiftformat` file |
| ![private](assets/private.png) | ![swift](assets/swift.png) | ![swiftformat](assets/swiftformat.png) |
| `index.html` file | `404.html` file | `deploy.sh` file (`samples/deploy.sh` uses small mapping) |
| ![index](assets/index.png) | ![404](assets/404.png) | ![deploy](assets/deploy-sm.png) |
| `README-CH.md` file  | `README-EN.md` file | `README-JP.md` file |
| ![readme ch](assets/CH.png) | ![readme en](assets/EN.png) | ![readme jp](assets/JP.png) |
| `template.md` / `template.txt` files | `daily` folder | `Life` / `life` folders |
| ![template](assets/template.png) | ![daily](assets/celendar.png) | ![life](assets/Life.png) |
| `scr` / `scripts` folders | `lab` / `laboratory` / `experiment` folders | `temp` / `temporary` folders |
| ![tool](assets/tool.png) | ![lab](assets/lab.png) | ![temp](assets/clock.png) |
| `.cache` / `__pycache__` / cache folders & related files | | |
| ![garbage](assets/garbage.png) | | |
| `.vscode` / `.vscode-test` folders | `.vscodeignore` file | `*.code-workspace` / `*.vsix` files |
| ![vscode](assets/vscode.png) | | |
| `test` / `tests` / `__tests__` / `*.test.*` / `*.spec.*` | `mock` / `fixtures` / `stubs` folders | `bench` / `benchmark` folders |
| ![lab](assets/lab.png) | ![lab2](assets/lab2.png) | ![benchmark](assets/benchmark.png) |
| `schema` / `proto` / `contract` folders | `CONTRIBUTING.md` / `SECURITY.md` | Firebase (`.firebase`, `firebase.json`, etc.) |
| ![schemas](assets/schemas.png) | | ![firebase](assets/firebase.png) |
| `locales` / `i18n` folders | `fonts` / `typography` folders | `hooks` folder |
| ![earth](assets/earth.png) | ![font](assets/font.png) | ![hook](assets/hook.png) |
| `themes` / `icons` / `snapshots` folders (+ assets) | `AGENT.md` | `package` / `dist` / `build` folders & `package.json` |
| ![camera](assets/camera.png) | ![agent](assets/agent-sm.png) | ![box](assets/box.png) |

## About Icon Assets

Some icons used in this extension are created by the developer (Tanaka Mikihisa).
Other icons are sourced from the following websites, and used/edited as needed under their respective licenses.

- [Simple Icons](https://simpleicons.org)
- [Cursor](https://cursor.com/en/brand)
- [shadcn,io](https://www.shadcn.io)
- [SVG REPO](https://www.svgrepo.com)

### [1.0.1] -- 2026.3.30

Applied the Cursor icon to `.cursorignore` files.

### [1.0.3] -- 2026.4.6

Added icons for `template.md` / `template.txt` files and the `daily` folder.

### [1.0.4] -- 2026.4.8

Added icon mapping for `Life` / `life` folders.

### [1.0.5] -- 2026.7.12

- Applied the Git icon to `.github` folders.
- Added icons for `scr` / `scripts`, `lab` / `laboratory` / `experiment`, and `temp` / `temporary` folders.
- Applied the docs icon to `note` folders.

### [1.0.6] -- 2026.7.12

Added the garbage icon for cache folders/files (`.cache`, `__pycache__`, `*.pyc`, `.eslintcache`, etc.).

### [1.0.8] -- 2026.7.14

- Added VS Code icons (`.vscode`, `.vscode-test`, `.vscodeignore`, `*.code-workspace`, `*.vsix`).
- Added test / mock / benchmark icons (`lab`, `lab2`, `benchmark`).
- Added schema, locale, font, hook, Firebase, and box icons.
- Extended camera icon to `themes` / `icons` / `snapshots` folders.
- Added `AGENT.md`, `CONTRIBUTING.md`, and `SECURITY.md` mappings.


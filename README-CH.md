# Code Icons

[EN](./README.md) / [JP](./README-JP.md) / [CH](./README-CH.md)

Code Icons 是一个用于 Visual Studio Code / Cursor 的文件图标主题。  
它保留了 Seti 的默认覆盖范围，并为常见文件名与文件夹名添加了自定义图标。

## 使用方法

1. 安装此扩展
2. 打开命令面板
3. 执行 `File Icon Theme`
4. 选择 `Code Icons`

## 示例（图片 + 对应规则）

| `.cursor` folder / `.cursorignore` file | `.claude` folder / `CLAUDE.md` file | `.codex` folder |
| --- | --- | --- |
| ![cursor](assets/cursor-sm.png) | ![claude](assets/claude-sm.png) | ![codex](assets/codex-sm.png) |
| `.agent` folder | `config.json` file | `docs` / `note` 文件夹 |
| ![agent](assets/agent-sm.png) | ![config](assets/config-sm.png) | ![docs](assets/docs-sm.png) |
| `.venv` / `venv` / `env` / `.virtualenv` / `virtualenv` folders | `rules` folder | `skills` folder |
| ![venv](assets/venv-sm.png) | ![rule](assets/rule-sm.png) | ![skill](assets/skill-sm.png) |
| `.env` file / `private` folder | `*.swift` files | `.swiftformat` file |
| ![private](assets/private-sm.png) | ![swift](assets/swift-sm.png) | ![swiftformat](assets/swiftformat-sm.png) |
| `index.html` file | `404.html` file | `deploy.sh` file (`samples/deploy.sh` uses small mapping) |
| ![index](assets/index-sm.png) | ![404](assets/404-sm.png) | ![deploy](assets/deploy-sm.png) |
| `README-CH.md` file  | `README-EN.md` file | `README-JP.md` file |
| ![readme ch](assets/CH-sm.png) | ![readme en](assets/EN-sm.png) | ![readme jp](assets/JP-sm.png) |
| `template.md` / `template.txt` 文件 | `daily` 文件夹 | `Life` / `life` 文件夹 |
| ![template](assets/template-sm.png) | ![daily](assets/celendar-sm.png) | ![life](assets/Life-sm.png) |
| `scr` / `scripts` 文件夹 | `lab` / `laboratory` / `experiment` 文件夹 | `temp` / `temporary` 文件夹 |
| ![tool](assets/tool-sm.png) | ![lab](assets/lab-sm.png) | ![temp](assets/clock-sm.png) |
| `.cache` / `__pycache__` 等缓存相关文件夹与文件 | | |
| ![garbage](assets/garbage-sm.png) | | |
| `.vscode` / `.vscode-test` 文件夹 | `.vscodeignore` 文件 | `*.code-workspace` / `*.vsix` 文件 |
| ![vscode](assets/vscode-sm.png) | | |
| `test` / `tests` / `__tests__` / `*.test.*` / `*.spec.*` | `mock` / `fixtures` / `stubs` 文件夹 | `bench` / `benchmark` 文件夹 |
| ![lab](assets/lab-sm.png) | ![lab2](assets/lab2-sm.png) | ![benchmark](assets/benchmark-sm.png) |
| `schema` / `proto` / `contract` 文件夹 | `CONTRIBUTING.md` / `SECURITY.md` | Firebase（`.firebase`、`firebase.json` 等） |
| ![schemas](assets/schemas-sm.png) | | ![firebase](assets/firebase-sm.png) |
| `locales` / `i18n` 文件夹 | `fonts` / `typography` 文件夹 | `hooks` 文件夹 |
| ![earth](assets/earth-sm.png) | ![font](assets/font-sm.png) | ![hook](assets/hook-sm.png) |
| `themes` / `icons` / `snapshots` 文件夹（+ assets 系） | `AGENT.md` | `package` / `dist` / `build` 文件夹 & `package.json` |
| ![camera](assets/camera-sm.png) | ![agent](assets/agent-sm.png) | ![box](assets/box-sm.png) |
| `*.plist` 文件 | `GitHooks` / `.githooks` 文件夹 | `info` 文件夹 |
| ![list](assets/list-sm.png) | ![hook](assets/hook-sm.png) | ![info](assets/info-sm.png) |
| `log` / `logs` 文件夹 | `CHANGELOG.md` | |
| ![clock](assets/clock-sm.png) | ![clock](assets/clock-sm.png) | |

## 关于图标素材

`assets/` 中的自定义图标使用 `-sm` 后缀命名（例如 `info-sm.png`、`clock-sm.png`）。  
它们会基于 `venv-sm.png` 转换为带统一边距的尺寸后使用。

添加新图标时:

1. 将源 PNG 放入 `assets/`（文件名不含 `-sm`）
2. 运行 `./pad-assets.sh` — 扫描源文件、生成 `-sm` 文件、删除源文件，并更新 `themes/file-icon-theme.json` / README / `package.json`

运行一次 `./install-git-hooks.sh` 后，提交 assets 变更时会自动执行 `pad-assets.sh`。

本扩展中使用的部分图标由开发者（Tanaka Mikihisa）制作。
其余图标来自以下网站，并在各自许可证允许范围内按需进行编辑与使用。

- [Simple Icons](https://simpleicons.org)
- [Cursor](https://cursor.com/en/brand)
- [shadcn,io](https://www.shadcn.io)
- [SVG REPO](https://www.svgrepo.com)

### [1.0.1] -- 2026.3.30

为 `.cursorignore` 文件应用 Cursor 图标

### [1.0.3] -- 2026.4.6

为 `template.md` / `template.txt` 与 `daily` 文件夹添加图标

### [1.0.4] -- 2026.4.8

为 `Life` / `life` 文件夹添加图标

### [1.0.5] -- 2026.7.12

- 为 `.github` 文件夹应用 Git 图标
- 为 `scr` / `scripts`、`lab` / `laboratory` / `experiment`、`temp` / `temporary` 文件夹添加图标
- 为 `note` 文件夹应用 docs 图标

### [1.0.6] -- 2026.7.12

为缓存相关文件夹与文件（`.cache`、`__pycache__`、`*.pyc`、`.eslintcache` 等）添加 garbage 图标

### [1.0.8] -- 2026.7.14

- 添加 VS Code 相关图标（`.vscode`、`.vscode-test`、`.vscodeignore`、`*.code-workspace`、`*.vsix`）
- 添加 test / mock / benchmark 图标（`lab`、`lab2`、`benchmark`）
- 添加 schema、locales、font、hook、Firebase、box 图标
- 将 camera 图标扩展到 `themes` / `icons` / `snapshots` 文件夹
- 添加 `AGENT.md`、`CONTRIBUTING.md`、`SECURITY.md` 映射

### [1.1.0] -- 2026.7.15

- 统一自定义图标的图片尺寸
- 添加 `*.plist`、`GitHooks` / `.githooks`、`info` 文件夹、`log` / `logs`、`CHANGELOG.md` 图标

### [1.1.1] -- 2026.7.15

- `pad-assets.sh` 转换后自动删除源图片


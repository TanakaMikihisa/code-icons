# Code Icons

[EN](./README.md) / [JP](./README-JP.md) / [CH](./README-CH.md)

Code Icons は、Visual Studio Code / Cursor 向けのファイルアイコンテーマです。  
Seti の既存カバレッジを活かしつつ、よく使うファイル名・フォルダ名に独自アイコンを追加しています。

## 使い方

1. この拡張機能をインストール
2. コマンドパレットを開く
3. `ファイル Icon Theme` を実行
4. `Code Icons` を選択

## サンプル（画像 + 対応）


| `.cursor` フォルダ / `.cursorignore` ファイル | `.claude` フォルダ / `CLAUDE.md` ファイル | `.codex` フォルダ |
| --- | --- | --- |
| ![cursor](assets/cursor-sm.png) | ![claude](assets/claude-sm.png) | ![codex](assets/codex-sm.png) |
| `.agent` フォルダ | `config.json` ファイル | `docs` / `note` フォルダ |
| ![agent](assets/agent-sm.png) | ![config](assets/config-sm.png) | ![docs](assets/docs-sm.png) |
| `.venv` / `venv` / `env` / `.virtualenv` / `virtualenv` フォルダs | `rules` フォルダ | `skills` フォルダ |
| ![venv](assets/venv-sm.png) | ![rule](assets/rule-sm.png) | ![skill](assets/skill-sm.png) |
| `.env` ファイル / `private` フォルダ | `*.swift` ファイルs | `.swiftformat` ファイル |
| ![private](assets/private-sm.png) | ![swift](assets/swift-sm.png) | ![swiftformat](assets/swiftformat-sm.png) |
| `index.html` ファイル | `404.html` ファイル | `deploy.sh` ファイル (`samples/deploy.sh` uses small mapping) |
| ![index](assets/index-sm.png) | ![404](assets/404-sm.png) | ![deploy](assets/deploy-sm.png) |
| `README-CH.md` ファイル  | `README-EN.md` ファイル | `README-JP.md` ファイル |
| ![readme ch](assets/CH-sm.png) | ![readme en](assets/EN-sm.png) | ![readme jp](assets/JP-sm.png) |
| `template.md` / `template.txt` ファイル | `daily` フォルダ | `Life` / `life` フォルダ |
| ![template](assets/template-sm.png) | ![daily](assets/celendar-sm.png) | ![life](assets/Life-sm.png) |
| `scr` / `scripts` フォルダ | `lab` / `laboratory` / `experiment` フォルダ | `temp` / `temporary` フォルダ |
| ![tool](assets/tool-sm.png) | ![lab](assets/lab-sm.png) | ![temp](assets/clock-sm.png) |
| `.cache` / `__pycache__` などキャッシュ系フォルダ・ファイル | | |
| ![garbage](assets/garbage-sm.png) | | |
| `.vscode` / `.vscode-test` フォルダ | `.vscodeignore` ファイル | `*.code-workspace` / `*.vsix` ファイル |
| ![vscode](assets/vscode-sm.png) | | |
| `test` / `tests` / `__tests__` / `*.test.*` / `*.spec.*` | `mock` / `fixtures` / `stubs` フォルダ | `bench` / `benchmark` フォルダ |
| ![lab](assets/lab-sm.png) | ![lab2](assets/lab2-sm.png) | ![benchmark](assets/benchmark-sm.png) |
| `schema` / `proto` / `contract` フォルダ | `CONTRIBUTING.md` / `SECURITY.md` | Firebase（`.firebase`、`firebase.json` など） |
| ![schemas](assets/schemas-sm.png) | | ![firebase](assets/firebase-sm.png) |
| `locales` / `i18n` フォルダ | `fonts` / `typography` フォルダ | `hooks` フォルダ |
| ![earth](assets/earth-sm.png) | ![font](assets/font-sm.png) | ![hook](assets/hook-sm.png) |
| `themes` / `icons` / `snapshots` フォルダ（+ assets 系） | `AGENT.md` | `package` / `dist` / `build` フォルダ & `package.json` |
| ![camera](assets/camera-sm.png) | ![agent](assets/agent-sm.png) | ![box](assets/box-sm.png) |
| `*.plist` ファイル | `GitHooks` / `.githooks` フォルダ | `info` フォルダ |
| ![list](assets/list-sm.png) | ![hook](assets/hook-sm.png) | ![info](assets/info-sm.png) |
| `log` / `logs` フォルダ | `CHANGELOG.md` | |
| ![clock](assets/clock-sm.png) | ![clock](assets/clock-sm.png) | |


## アイコンについて

`assets/` のカスタムアイコンは `-sm` 付きのファイル名で管理します（例: `info-sm.png`、`clock-sm.png`）。  
`venv-sm.png` を基準に、余白付きの統一サイズへ変換して使います。

新しいアイコンを追加するとき:

1. `assets/` に元画像を置く（ファイル名は `-sm` なし）
2. `./pad-assets.sh` を実行 — 元画像をスキャンし、`-sm` ファイルを生成、`themes/file-icon-theme.json` / README / `package.json` を更新
3. 変換後、元画像を削除する（拡張機能が使うのは `-sm` のみ）

`./install-git-hooks.sh` を一度実行すると、assets 変更時の commit で `pad-assets.sh` が自動実行されます。

使用した画像は開発者(Tanaka Mikihisa)が作成したもの、または以下のサイトより取得したものをライセンスに従った上で必要に応じて編集を行い使用しています。

- [Simple Icons](https://simpleicons.org)
- [Cursor](https://cursor.com/ja/brand)
- [shadcn,io](https://www.shadcn.io)
- [SVG REPO](https://www.svgrepo.com)

### [1.0.1] -- 2026.3.30

`.cursorignore`ファイルに`cursor`のアイコンを適用

### [1.0.3] -- 2026.4.6

`template.md` / `template.txt` と `daily` フォルダ用のアイコンを追加

### [1.0.4] -- 2026.4.8

`Life` / `life` フォルダ用のアイコンを追加

### [1.0.5] -- 2026.7.12

- `.github` フォルダに Git アイコンを適用
- `scr` / `scripts`、`lab` / `laboratory` / `experiment`、`temp` / `temporary` フォルダ用のアイコンを追加
- `note` フォルダに docs アイコンを適用

### [1.0.6] -- 2026.7.12

キャッシュ系フォルダ・ファイル（`.cache`、`__pycache__`、`*.pyc`、`.eslintcache` など）に garbage アイコンを追加

### [1.0.8] -- 2026.7.14

- VS Code 関連（`.vscode`、`.vscode-test`、`.vscodeignore`、`*.code-workspace`、`*.vsix`）のアイコンを追加
- test / mock / benchmark 用アイコン（`lab`、`lab2`、`benchmark`）を追加
- schema、locales、font、hook、Firebase、box 用アイコンを追加
- `themes` / `icons` / `snapshots` フォルダに camera アイコンを拡張
- `AGENT.md`、`CONTRIBUTING.md`、`SECURITY.md` のマッピングを追加

### [1.1.0] -- 2026.7.15

- カスタムアイコンの画像サイズを統一
- `*.plist`、`GitHooks` / `.githooks`、`info` フォルダ、`log` / `logs`、`CHANGELOG.md` のアイコンを追加


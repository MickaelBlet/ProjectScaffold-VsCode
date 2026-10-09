# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

ProjectScaffold-VsCode: VS Code extension for ProjectScaffold project files (`*.scaffold.{yaml,yml,json}`): the text stays a VS Code document, with an editable diagram preview beside it and the app's Explorer in a side bar view. The pages are the single-file web build of ProjectScaffold-Viewer, the `viewer/` git submodule. No code generation (ProjectScaffold-Generator does it).

## Commands

```sh
git submodule update --init          # viewer/ (ProjectScaffold-Viewer)
npm run viewer                       # npm ci (when stale) + build in viewer/ -> viewer/dist-web/index.html
npm run typecheck                    # tsc: src/ and the viewer files it imports
npm run compile                      # typecheck + esbuild src/extension.ts -> out/extension.js
npm run build                        # viewer + compile + media/ (index.html, icon)
scripts/build_vscode.sh              # .vsix into dist-vscode/
code --extensionDevelopmentPath="$PWD" viewer/examples   # Extension Development Host after npm run build
```

- Prettier: no semicolons, single quotes, width 110, no trailing commas.

## Architecture

- `src/extension.ts`: activation, VS Code commands (most run an app command in the active diagram, see `APP_COMMANDS`), text cursor → diagram selection.
- `src/session.ts`: a webview page bound to a document (`DiagramSession`), and all open pages (`Sessions`): the `TextDocument` is the source of truth, edits from the page are applied as minimal text edits, text changes made elsewhere are sent to the page; selection, views and actions go between pages; files the pages may read (project and IDL files, out of the workspace only once allowed).
- `src/preview.ts` (diagram beside the text, restored after reload), `src/sidebar.ts` (side bar view following the active project document), `src/html.ts` (page HTML with CSP and the inlined `WebviewInit`), `src/problems.ts` (Problems panel), `src/outline.ts` (Outline view).
- Message types: `viewer/src/renderer/src/vscodeProtocol.ts` (page side: `vscodeApi.ts` in the viewer). A protocol change is made in the viewer first, then the submodule pointer is moved here with the matching `session.ts` change.
- The extension imports viewer model files by relative path (`../viewer/src/renderer/src/model/...`, `components/completion.ts`); they must not use the viewer's `@/` alias. Their packages (yaml, zod) resolve from `viewer/node_modules`: build the viewer first.
- `package.json` is the extension manifest: commands, menus, keybindings (shortcuts the diagram handles itself map to `projectScaffold.noop` while it has the focus), settings.

## Conventions

- Update `CHANGELOG.md` `[Unreleased]` (Keep a Changelog) and the user documentation (`README.md`, the Marketplace page, and `docs/*.md`) for user-visible changes. A release removes the `[Unreleased]` heading: add it back above the latest version (its compare link at the bottom stays).
- Build scripts install with `npm ci` when `node_modules` is older than the lockfile.
- Commit each finished feature or fix with the `commit-gpg` skill (GPG-signed commit, CHANGELOG checked).

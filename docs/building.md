# Building

The extension's pages are the single-file web build of [ProjectScaffold-Viewer](https://github.com/MickaelBlet/ProjectScaffold-Viewer), checked out as the `viewer/` submodule; the extension itself (`src/`) imports a few of its model files (outline, problems, completion) and its message types (`viewer/src/renderer/src/vscodeProtocol.ts`).

```sh
git clone --recursive https://github.com/MickaelBlet/ProjectScaffold-VsCode   # or: git submodule update --init
npm install
npm run build                # viewer web build (viewer/dist-web) + out/extension.js + media/
scripts/build_vscode.sh      # -> dist-vscode/project-scaffold-vscode-<version>.vsix
code --install-extension dist-vscode/project-scaffold-vscode-*.vsix
```

| Script              | Does                                                                         |
| ------------------- | ---------------------------------------------------------------------------- |
| `npm run viewer`    | installs and builds the viewer submodule (`scripts/build_viewer.sh`)         |
| `npm run typecheck` | type-checks the extension and the viewer files it imports                    |
| `npm run compile`   | type-checks and bundles `src/extension.ts` into `out/extension.js` (esbuild) |
| `npm run media`     | copies the viewer's `dist-web/index.html` and icon into `media/`             |
| `npm run build`     | all three                                                                    |
| `npm run package`   | build, then `vsce package` into `dist-vscode/`                               |

Development: `npm run build`, then `code --extensionDevelopmentPath="$PWD" viewer/examples` opens an Extension Development Host.

Another viewer version: `cd viewer && git checkout <commit>`, build, then commit the new `viewer` pointer here. A change of `vscodeProtocol.ts` in the viewer needs the matching change in `src/session.ts`.

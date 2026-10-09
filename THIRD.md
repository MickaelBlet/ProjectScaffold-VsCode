# Third-party licenses

The ProjectScaffold VS Code extension is distributed under the MIT License (see [LICENSE](LICENSE)).
It bundles or is built on the third-party software listed below. Each component
remains under its own license; the copyright notices and license texts are
reproduced here as required.

Development-only tools (TypeScript, esbuild, vsce, Vite, Prettier, type
definitions) are not shipped and are not listed.

## 1. Pages of the extension (`media/index.html`)

These npm packages are bundled into the web build of ProjectScaffold-Viewer that
the extension shows. `out/extension.js` bundles `yaml` and `zod` from the same
list.

| Package                                                   | Version | License                     | Copyright                                                      |
| --------------------------------------------------------- | ------- | --------------------------- | -------------------------------------------------------------- |
| [@xyflow/react](https://github.com/xyflow/xyflow)         | 12.11.6 | MIT                         | Copyright (c) 2019-2025 webkid GmbH                            |
| [@xyflow/system](https://github.com/xyflow/xyflow)        | 0.0.82  | MIT                         | Copyright (c) 2019-2025 webkid GmbH                            |
| [classcat](https://github.com/jorgebucaran/classcat)      | 5.0.5   | MIT                         | Copyright © Jorge Bucaran <https://jorgebucaran.com>           |
| [d3-color](https://github.com/d3/d3-color)                | 3.1.0   | ISC                         | Copyright 2010-2022 Mike Bostock                               |
| [d3-dispatch](https://github.com/d3/d3-dispatch)          | 3.0.1   | ISC                         | Copyright 2010-2021 Mike Bostock                               |
| [d3-drag](https://github.com/d3/d3-drag)                  | 3.0.0   | ISC                         | Copyright 2010-2021 Mike Bostock                               |
| [d3-ease](https://github.com/d3/d3-ease)                  | 3.0.1   | BSD-3-Clause                | Copyright 2010-2021 Mike Bostock; Copyright 2001 Robert Penner |
| [d3-interpolate](https://github.com/d3/d3-interpolate)    | 3.0.1   | ISC                         | Copyright 2010-2021 Mike Bostock                               |
| [d3-selection](https://github.com/d3/d3-selection)        | 3.0.0   | ISC                         | Copyright 2010-2021 Mike Bostock                               |
| [d3-timer](https://github.com/d3/d3-timer)                | 3.0.1   | ISC                         | Copyright 2010-2021 Mike Bostock                               |
| [d3-transition](https://github.com/d3/d3-transition)      | 3.0.1   | ISC                         | Copyright 2010-2021 Mike Bostock                               |
| [d3-zoom](https://github.com/d3/d3-zoom)                  | 3.0.0   | ISC                         | Copyright 2010-2021 Mike Bostock                               |
| [dockview](https://github.com/dockview/dockview)          | 8.3.1   | MIT                         | Copyright (c) 2021 mathuo                                      |
| [dockview-core](https://github.com/dockview/dockview)     | 8.3.1   | MIT                         | Copyright (c) 2021 mathuo                                      |
| [dockview-react](https://github.com/dockview/dockview)    | 8.3.1   | MIT                         | Copyright (c) 2021 mathuo                                      |
| [elkjs](https://github.com/kieler/elkjs)                  | 0.12.0  | EPL-2.0 OR GPL-3.0-or-later | Copyright (c) 2017 Kiel University and others                  |
| [html-to-image](https://github.com/bubkoo/html-to-image)  | 1.11.13 | MIT                         | Copyright (c) 2017-2025 W.Y.                                   |
| [immer](https://github.com/immerjs/immer)                 | 11.1.18 | MIT                         | Copyright (c) 2017 Michel Weststrate                           |
| [react](https://github.com/react/react)                   | 19.3.0  | MIT                         | Copyright (c) Meta Platforms, Inc. and affiliates.             |
| [react-dom](https://github.com/react/react)               | 19.3.0  | MIT                         | Copyright (c) Meta Platforms, Inc. and affiliates.             |
| [scheduler](https://github.com/react/react)               | 0.28.0  | MIT                         | Copyright (c) Meta Platforms, Inc. and affiliates.             |
| [use-sync-external-store](https://github.com/react/react) | 1.7.0   | MIT                         | Copyright (c) Meta Platforms, Inc. and affiliates.             |
| [yaml](https://github.com/eemeli/yaml)                    | 2.9.1   | ISC                         | Copyright Eemeli Aro <eemeli@gmail.com>                        |
| [zod](https://github.com/colinhacks/zod)                  | 4.6.5   | MIT                         | Copyright (c) 2025 Colin McDonnell                             |
| [zundo](https://github.com/charkour/zundo)                | 2.3.0   | MIT                         | Copyright (c) 2021 Charles Kornoelje                           |
| [zustand](https://github.com/pmndrs/zustand)              | 4.5.7   | MIT                         | Copyright (c) 2019 Paul Henschel                               |
| [zustand](https://github.com/pmndrs/zustand)              | 5.0.15  | MIT                         | Copyright (c) 2019 Paul Henschel                               |

### Note on elkjs (EPL-2.0)

[elkjs](https://github.com/kieler/elkjs) is dual-licensed `EPL-2.0 OR
GPL-3.0-or-later`; ProjectScaffold uses it under the **Eclipse Public License
2.0**. It is included unmodified. Its source code is available at
<https://github.com/kieler/elkjs> and on npm (`elkjs@0.12.0`). The EPL-2.0
applies to elkjs only, not to ProjectScaffold as a whole.

## 2. License texts

### MIT

```text
MIT License

Copyright (c) <year> <copyright holders>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

### ISC

```text
Copyright (c) <year> <copyright holders>

Permission to use, copy, modify, and/or distribute this software for any purpose
with or without fee is hereby granted, provided that the above copyright notice
and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND
FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS
OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF
THIS SOFTWARE.
```

### BSD-3-Clause

```text
Copyright (c) <year> <copyright holders>
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.

* Neither the name of the author nor the names of contributors may be used to
  endorse or promote products derived from this software without specific prior
  written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```

### Other licenses

The full texts of the remaining licenses are available at:

- EPL-2.0: <https://www.eclipse.org/legal/epl-2.0/>

# Contributing

The handbook is a **single source file: [`index.qmd`](index.qmd)** — all content edits go there.
Everything else (the web page, PDF, EPUB) is generated from it by [Quarto](https://quarto.org); never edit
the generated files in `public/`.

## Generate locally

One-time setup (macOS):

```sh
brew install --cask quarto
```

Then, from the repo root:

```sh
quarto preview   # live-reloading HTML at http://localhost:… (best while writing)
quarto render    # build all formats into ./public
```

`quarto render` produces:

| Output | File | Notes |
|--------|------|-------|
| Web page (themed, single page, side TOC) | `public/index.html` | what gets published |
| PDF  | `public/index.pdf`  | via Typst — bundled with Quarto, no LaTeX needed |
| EPUB | `public/index.epub` | also the file to upload to Kindle / ElevenReader |

## Project layout

| File | Purpose |
|------|---------|
| `index.qmd` | the handbook content (edit this) |
| `_quarto.yml` | render config — formats, TOC, theme wiring |
| `theme.scss` | visual theme (fonts, colours, layout) |
| `_includes/enhance.html` | sidebar footer (download/listen/source/author links) + TOC scrollspy |


## Publishing

Pushing to `main` triggers `.github/workflows/publish.yml`, which renders all formats and deploys
the site to GitHub Pages. No manual build/upload step is needed.

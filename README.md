# Xulei Xie's Site

This site is built with [Sphinx](https://www.sphinx-doc.org/) using the [Read the Docs theme](https://sphinx-rtd-theme.readthedocs.io/), and deployed to GitHub Pages via GitHub Actions.

## Local build

```bash
pip install -r docs/requirements.txt
sphinx-build -b html docs docs/_build/html
```

Then open `docs/_build/html/index.html` in your browser.

## Deployment

The site is automatically built and deployed by the GitHub Actions workflow (`.github/workflows/sphinx.yml`) on every push to the `main` branch.

> **Important:** To enable deployment, a maintainer must go to **Settings → Pages → Build and deployment → Source** and select **GitHub Actions**.

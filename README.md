# Python Lint Demo

A minimal FastAPI project demonstrating a production-ready Python linting setup.

## Tools

| Tool | Purpose |
|------|---------|
| [black](https://black.readthedocs.io/) | Code formatter |
| [isort](https://pycqa.github.io/isort/) | Import sorter |
| [flake8](https://flake8.pycqa.org/) | Linter |

## Setup

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
pip install -r requirements-dev.txt
```

## Usage

```bash
make format   # auto-format with isort + black
make lint     # run flake8
make check    # CI-style check (no writes, exits non-zero if anything fails)
```

## Configuration

- `pyproject.toml` — black and isort config (line length: 120, target: py311)
- `.flake8` — flake8 config (max line length: 120)
- `.editorconfig` — editor-agnostic formatting rules

## VSCode

Install recommended extensions when prompted, or manually:

```bash
code --install-extension ms-python.python
code --install-extension ms-python.black-formatter
code --install-extension ms-python.flake8
code --install-extension ms-python.isort
```

Format on save is enabled by default via `.vscode/settings.json`.

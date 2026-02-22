.PHONY: format lint check

format:
	python -m isort .
	python -m black .

lint:
	python -m flake8 .

check: lint
	python -m black --check .
	python -m isort --check-only .

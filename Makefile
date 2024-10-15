.PHONY: all lint build

all: lint build

lint: mypy black flake8 isort

mypy:
	uv run mypy \
		--disable-error-code "annotation-unchecked" \
		--follow-imports=silent \
		--ignore-missing-imports \
		--implicit-optional \
		--install-types \
		--non-interactive \
		-p boa_zksync

black:
	uv run black -C -t py311 boa_zksync/ tests/

flake8: black
	uv run flake8 boa_zksync/ tests/

isort: black
	uv run isort boa_zksync/ tests/ setup.py

build:
	uv sync --all-extras

# run tests without forked tests (which require access to a node)
test:
	uv run pytest -nauto tests/

coverage:
	uv run pytest \
		  --cov=boa_zksync \
		  --cov-append \
		  --cov-report term-missing:skip-covered \
		  --cov-fail-under=80 \
		  tests/

clean:
	@find . -name '*.pyc' -exec rm -f {} +
	@find . -name '*.pyo' -exec rm -f {} +
	@find . -name '*~' -exec rm -f {} +
	@find . -name '__pycache__' -exec rmdir {} +

# note: for pypi upload, see pypi-publish.sh

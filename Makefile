install:
	pip3 install --upgrade pip && pip3 install -r requirements.txt

format:
	black .

lint:
	pwd; pylint --disable=R,C $(shell find . -name "*.py")

test:
	python3 -m pytest --cov -vv

all: install format lint test
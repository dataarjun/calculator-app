setup:
	python3 -m venv ~/.calculator-app
	source ~/.calculator-app/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py

lint:
	pylint --disable=all main.py

run:
	python main.py

all: install lint test

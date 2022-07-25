setup:
	python3 -m venv ~/.calculator-app
	#source calculator-app/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py

lint:
	pylint --disable=all app.py

run:
	python app.py

all: install lint test

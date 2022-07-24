setup:
	python3 -m venv ~/.calculator-app
	#source ~/.calculator-app/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py

lint:
	pylint --disable=R,C,W1203,W0702 app.py

run:
	python main.py

all: install lint test

install:
	python -m pip install --upgrade pip && \
	python -m pip install -r requirements.txt

test:
	python -m pytest --cov=tests

lint:
	pylint --disable=R,C ./

format:
	black *.py

clean:
	rm -rf __pycache__

build:
	dbt run --project-dir ./demo_db

all: install lint clean format test


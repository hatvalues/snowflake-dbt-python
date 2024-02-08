install:
	python -m pip install --upgrade pip && \
	python -m pip install -r requirements.txt

test:
	python -m pytest --cov=tests

lint:
	pylint --disable=R,C ./app_logic

format:
	black *.py app_logic/*.py

clean:
	rm -rf __pycache__

all: install lint clean format test
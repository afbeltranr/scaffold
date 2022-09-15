install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

install-azure:	
	pip install --upgrade pip &&\
		pip install -r requirements-azure.txt

format:
	black *.py
	
lint:
	pylint --disable=R,C hello.py #disables recommended and config
	
test:
	python -m pytest -vv -cov=hello test_hello.py
	
all: install lint test 
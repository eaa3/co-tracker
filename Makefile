# Use bash for shell commands
SHELL := /bin/bash

environment:
	echo "make sure you have virtualenv installed"
	virtualenv -p python3.10 venv

install:
	. venv/bin/activate && pip install -r requirements.txt


run:
	python live.py --grid_size=10 --capture_device=0
	
clean:
	rm -rf venv
	rm -rf __pycache__
	rm -rf *.egg-info
	rm -rf .pytest_cache
	rm -rf .mypy_cache



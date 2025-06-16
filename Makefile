# Use bash for shell commands
SHELL := /bin/bash

environment:
	echo "make sure you have virtualenv installed"
	virtualenv -p python3.10 venv
	mkdir checkpoints
	cd checkpoints
	wget https://dl.fbaipublicfiles.com/cotracker/cotracker_stride_4_wind_8.pth
	wget https://dl.fbaipublicfiles.com/cotracker/cotracker_stride_4_wind_12.pth
	wget https://dl.fbaipublicfiles.com/cotracker/cotracker_stride_8_wind_16.pth
	cd ..

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



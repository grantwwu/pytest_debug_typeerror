#!/bin/bash
REPRODUCE_ENV=reproduce_env
rm -rf ../$REPRODUCE_ENV
python3 -m venv ../$REPRODUCE_ENV
source ../$REPRODUCE_ENV/bin/activate
pip3 install -r requirements.txt
pytest
pytest --debug

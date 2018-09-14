#!/bin/bash
REPRODUCE_ENV=reproduce_env
rm -rf ../$REPRODUCE_ENV
python3 -m venv ../$REPRODUCE_ENV
source ../$REPRODUCE_ENV/bin/activate
pip3 install -r requirements.txt >/dev/null 2>&1
echo "##################################################"
echo "RUNNING pytest"
echo "##################################################"
echo ""
pytest
echo ""
echo ""
echo ""
echo "##################################################"
echo "RUNNING pytest --debug"
echo "##################################################"
echo ""
pytest --debug

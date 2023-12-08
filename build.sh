#!/usr/bin/env bash
# exit on error
set -o errexit

pip install --upgrade pip
pip install -r requirements.txt

poetry install

python main.py collectstatic
python main.py migrate
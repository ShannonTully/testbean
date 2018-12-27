#! /bin/bash

set -e

cd /src

sudo apt-get update && \
sudo apt-get install gcc -y && \
pip install -r requirements.txt && \
python3 manage.py makemigrations --noinput && \
python3 manage.py migrate --noinput && \
python3 manage.py collectstatic --noinput && \
gunicorn reviews_project.wsgi:application -w 3 -b :8000

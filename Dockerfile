FROM python:3

WORKDIR /usr/src/app

RUN python -m venv mi_env
RUN mi_env/bin/pip install django
RUN mi_env/bin/pip install Pillow

COPY . .

EXPOSE 8000

CMD ["mi_env/bin/python", "manage.py", "runserver", "0.0.0.0:8000"]
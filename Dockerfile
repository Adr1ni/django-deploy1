FROM python:3.8.13-slim-buster
WORKDIR /app
COPY ./my_app ./

RUN pip install --upgrade pip --no-cache-dir

RUN pip install -r /app/requirements.txt --no-cache-dir

CMD ["gunicorn", "main_app.wsgi:application","--bind","0.0.0.0:8000"]
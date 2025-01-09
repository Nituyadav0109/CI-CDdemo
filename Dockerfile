FROM python:3.8-slim-buster

WORKDIR /app

COPY . /app
RUN pip install --trusted-host pypi.python.org -r requirements.txt
RUN pip install Pillow
EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

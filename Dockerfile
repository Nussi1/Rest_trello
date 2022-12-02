FROM python:3

WORKDIR /rest_trello

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

ADD . /rest_trello

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

CMD python manage.py makemigrations && python manage.py migrate

# COPY . /app


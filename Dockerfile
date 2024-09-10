FROM python:3

WORKDIR /data

RUN pip install django==4.2.6

COPY . .

RUN python manage.py migrate

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]



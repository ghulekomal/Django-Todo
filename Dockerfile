FROM python:3
RUN pip install django==3.2

COPY . .

RUN python manage.py migrate
EXPOSE 8000
cMD ["python","mange.py","runserver","0.0.0.0.:8000"]

FROM python:3.11-slim

WORKDIR usr/src/app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY ./altitude_app .

EXPOSE 8080

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=8080", "--debug"]
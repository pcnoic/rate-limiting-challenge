FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9
COPY ./api/src /app
COPY ./api/requirements.txt /app/requirements.txt

RUN pip install -r /app/requirements.txt

EXPOSE 80
WORKDIR /app

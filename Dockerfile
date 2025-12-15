FROM python:3.12-slim
COPY . /app
WORKDIR /app
COPY requirements.txt  app.py ./
RUN pip install -r requirements.txt
CMD ["app.py"]

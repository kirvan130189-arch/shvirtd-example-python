FROM python:3.12-slim
COPY . /app
WORKDIR /app
COPY requirements.txt  ./
RUN pip install -r requirements.txt
COPY main.py ./
CMD ["python","uvicorn",""main.py","--host","0.0.0.0","--port","5000"]

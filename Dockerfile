FROM python:3.12-slim
WORKDIR /shvirtdexamle-python
COPY requirments.txt ./
RUN pip install -r requirments.txt
COPY main.py ./
# Запускаем приложение с помощью uvicorn, делая его доступным по сети
CMD [ "main.py", "--host", "0.0.0.0", "--port", "5000"] 

FROM shvirtdexamle-python
WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY main.py ./
# Запускаем приложение с помощью uvicorn, делая его доступным по сети
CMD [ "main.py", "--host", "0.0.0.0", "--port", "5000"] 

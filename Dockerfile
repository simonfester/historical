FROM python:slim
COPY requirements.txt .
RUN apt-get update \
&& apt-get install gcc -y \
&& apt-get clean
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py .
CMD [ "python3", "./app.py" ]

FROM python:slim
COPY requirements.txt .
RUN apt-get update \
&& apt-get install gcc -y \
&& apt-get clean
RUN pip install -r requirements.txt
COPY historical.py .
CMD [ "python", "./historical.py" ]

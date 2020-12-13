FROM python:latest

RUN pip install --no-cache-dir pandas python.binance
ADD historical.py /

CMD [ "python", "./historical.py" ]

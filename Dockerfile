FROM  continuumio/miniconda3

LABEL "maintainer"="syhester@gmail.com"
LABEL "type"="get_historical_data"

RUN conda install pandas -y
RUN pip install python.binance

ADD historical.py /

CMD [ "python", "./historical.py" ]

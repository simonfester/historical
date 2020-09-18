FROM continuumio/miniconda3

RUN conda install pandas -y \
&& pip install python.binance

ADD historical.py /

CMD [ "python", "./historical.py" ]
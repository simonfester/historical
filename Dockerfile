FROM continuumio/miniconda3

RUN conda install pandas -y \
&& pip install schedule python.binance

ADD historical.py /

CMD [ "python", "./historical.py" ]
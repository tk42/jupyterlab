FROM jupyter/datascience-notebook

ENV JUPYTER_ENABLE_LAB=yes

USER root

RUN pip install numpy>=1.20.3

RUN git clone https://github.com/jdtuck/fdasrsf_python && \
    python3 ./fdasrsf_python/setup.py install

RUN git clone https://github.com/GAA-UAM/scikit-fda.git && \
    pip install ./scikit-fda

COPY requirements.txt .
RUN pip install -r requirements.txt

CMD jupyter lab --no-browser --ip="0.0.0.0" --allow-root

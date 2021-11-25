FROM jupyter/datascience-notebook

ENV JUPYTER_ENABLE_LAB=yes

USER root

RUN git clone https://github.com/GAA-UAM/scikit-fda && \
    pip install numpy>=1.20.3 ./scikit-fda

COPY requirements.txt .
RUN pip install -r requirements.txt

CMD jupyter lab --no-browser --ip="0.0.0.0" --allow-root

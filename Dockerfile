FROM jupyter/datascience-notebook

ENV JUPYTER_ENABLE_LAB=yes

COPY . .

# To install scikit-fda
RUN git clone https://github.com/GAA-UAM/scikit-fda && \
    pip install ./scikit-fda

# To install other packages
RUN pip install -r requirements.txt

CMD jupyter lab --no-browser --ip="0.0.0.0" --allow-root

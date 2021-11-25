FROM jupyter/datascience-notebook

ENV JUPYTER_ENABLE_LAB=yes

COPY requirements.txt .
RUN pip install -r requirements.txt

# to install scikit-fda
RUN install_scikit-fda.sh

CMD jupyter lab --no-browser --ip="0.0.0.0" --allow-root

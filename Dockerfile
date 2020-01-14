FROM continuumio/anaconda3

RUN apt-get install vim -y

RUN pip install --upgrade pip && \
    pip install autopep8 && \
    pip install gensim && \
    pip install janome

WORKDIR /workdir

EXPOSE 8888

ENTRYPOINT ["jupyter-lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]

CMD ["--notebook-dir=/workdir"]
FROM tsutomu7/alpine-python

RUN conda install -y pillow numexpr simpy && \
    pip install ortoolpy dual && \
    rm -rf /root/.c* /opt/conda/pkgs/* 
EXPOSE 8888
ADD qiita_demo.tgz /root/
WORKDIR /root/
CMD ["sh", "-c", "jupyter notebook --ip=*"]


FROM centos:7

USER 0
ENV ES_HOME="/var/lib/elasticsearch"
RUN useradd -m -u 1000 elasticsearch
ADD elasticsearch/ ${ES_HOME}
ADD config/* ${ES_HOME}/config/
RUN mkdir -pv /var/lib/elasticsearch/{data,logs,snapshots} 
RUN chown -R elasticsearch:elasticsearch ${ES_HOME}  
  
USER 1000
ENV ES_HOME="/var/lib/elasticsearch" \
    ES_PATH_CONF="/var/lib/elasticsearch/config"
WORKDIR ${ES_HOME}

CMD ["sh", "-c", "${ES_HOME}/bin/elasticsearch"]
EXPOSE 9200 9300
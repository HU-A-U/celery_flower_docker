FROM python:3.7
ADD requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
COPY docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh
RUN apt-get install libfontconfig

ENV BROKER_HOST 47.102.218.137
ENV BROKER_PORT 5672
ENV BROKER_COUNT cic_admin
ENV BROKER_PWD JYcxys@3030


CMD /code/docker-entrypoint.sh
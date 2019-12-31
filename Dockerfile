FROM ubuntu:16.04


RUN apt-get update -y 
RUN apt-get install python python-pip -y

RUN mkdir /opt/app

COPY requirements.txt /opt/app/
COPY src/main.py /opt/app/

RUN pip install -r /opt/app/requirements.txt 
ADD ejecuto.sh /tmp/ 


ENTRYPOINT ["sh", "/tmp/ejecuto.sh"]
# CMD ["/tmp/ejecuto.sh"]

FROM daocloud.io/liuyuan960829/matlab_config

MAINTAINER yuan liu <2301794925@qq.com>

RUN mkdir -p /script

RUN mkdir -p /home/iuyuan/local/test

#在容器中下载可执行文件
RUN apt-get update

RUN apt-get -y install git

RUN cd /script && git clone https://github.com/liuyuan960829/test_docker.git

ADD test_data /home/iuyuan/local/test

RUN chmod 777 -R /home/iuyuan/local

RUN rm -rf /script

ENTRYPOINT ["/home/iuyuan/local/test"]

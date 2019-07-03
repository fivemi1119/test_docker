FROM daocloud.io/xin_cqu/matlab_config

MAINTAINER Xin Wen <nclxwen@gmail.com>


RUN mkdir -p /script

#在容器中下载可执行文件
RUN apt-get update

RUN apt-get -y install git

RUN cd /script && git clone https://github.com/Xin-cqu/test_docker.git

ADD test /root/matlab_script/test

RUN chmod 777 -R /root/matlab_script/

RUN rm -rf /script

ENTRYPOINT ["/root/matlab_script/test"]

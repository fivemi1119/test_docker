FROM daocloud.io/liuyuan960829/matlab_config

MAINTAINER yuan liu <2301794925@qq.com>

RUN sudo -i

RUN mkdir -p /script

#在容器中下载可执行文件
RUN apt-get update

RUN apt-get -y install git

RUN cd /script && git clone https://github.com/liuyuan960829/test_docker.git

RUN cd root

RUN mkdir matlab_script

RUN cd /root/matlab_script

RUN mkdir test_data

ADD test_data /root/matlab_script/test_data

RUN chmod 777 -R /root/matlab_script/

RUN rm -rf /script

ENTRYPOINT ["/root/matlab_script/test_data"]

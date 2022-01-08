# alpine为musl libc核心，虽然小巧，但一部分功能受限，下面的numpy安装时需要UnixCCompiler编译才可通过
#FROM python:3.8.0-alpine3.10
FROM python:3.8

RUN pip3 install numpy
RUN mkdir -p /workfolder
COPY ./main.py /workfolder/

CMD [ "python", "/workfolder/main.py" ]

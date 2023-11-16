FROM ubuntu:latest
COPY . /home
WORKDIR /home
RUN apt update && apt install python3 python3-pip -y
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:git-core/ppa && apt install git -y
RUN git clone https://github.com/kakaroter/data-visualization.git
RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt
RUN apt install vim tree -y
EXPOSE 8888

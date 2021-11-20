FROM python:3.9.5-buster

RUN apt-get update && apt-get upgrade -y

#Installing Requirements
RUN apt-get install -y git python3-pip

#Updating pip
RUN python3.9 -m pip install -U pip

# Cloning the repo
RUN git clone https://github.com/rahulkhatri137/TG-VC-Music /root/Music/

WORKDIR /root/Music/
#Installing Requirements
RUN apt-get install -y ffmpeg python3-pip opus-tools

RUN python3.9 -m pip install -U -r requirements.txt

#Running VCBot
CMD ["python3.9","main.py"]

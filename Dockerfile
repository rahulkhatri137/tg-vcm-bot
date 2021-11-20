FROM python:3.9.5-buster

RUN apt-get update && apt-get upgrade -y

#Installing Requirements
RUN apt-get install -y git ffmpeg python3-pip opus-tools

#Updating pip
RUN python3.9 -m pip install -U pip

# Cloning the repo
RUN git clone https://github.com/rahulkhatri137/TG-VC-Music .

RUN python3.9 -m pip install -U -r requirements.txt

#Running VCBot
CMD ["python3.9","main.py"]

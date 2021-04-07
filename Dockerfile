FROM ubuntu:hirsute

USER root
RUN apt-get update
RUN apt-get update --fix-missing
RUN apt-get upgrade -y 
RUN apt-get dist-upgrade -y
RUN apt-get install wget -y
RUN apt-get install chromium-browser -y
RUN apt-get install openjdk-8-jdk -y
RUN apt-get install python3.9 python3-pip -y
RUN apt-get autoremove -y
RUN python3 -m pip install --upgrade "pip < 21.0"
RUN python3 -m pip install robotframework
RUN python3 -m pip install --upgrade robotframework-seleniumlibrary
RUN python3 -m pip install robotframework-soaplibrary
RUN python3 -m pip install --upgrade RESTinstance
RUN python3 -m pip install --upgrade robotframework-appiumlibrary
RUN python3 -m pip install robotframework-SikuliLibrary
RUN python3 -m pip install robotframework-browser
RUN python3 -m pip install robotframework-faker
RUN python3 -m pip install webdrivermanager
RUN python3 -m webdrivermanager firefox chrome --linkpath /usr/local/bin

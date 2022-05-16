RUN chmod 777 /usr/src/app
RUN apt install git python3-pip
RUN pip3 install -U pip
RUN mkdir /app/
WORKDIR /app/
RUN git clone https://github.com/gillzxo/apptest.git /apptest
RUN pip3 install -U -r requirements.txt
CMD [ "bash", "up.sh" ]

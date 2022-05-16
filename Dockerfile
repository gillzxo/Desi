FROM breakdowns/mega-sdk-python:latest

RUN install git python3-pip
RUN pip3 install -U pip
RUN mkdir /app/
WORKDIR /app/
RUN git clone https://github.com/gillzxo/apptest.git /app
RUN pip3 install -U -r requirements.txt
CMD [ "bash", "up.sh" ]

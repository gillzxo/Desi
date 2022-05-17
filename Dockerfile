FROM anasty17/mltb:latest

RUN apt install git python3-pip
RUN pip3 install -U pip
RUN mkdir /app/
WORKDIR /app/
RUN git clone https://github.com/gillzxo/apptest.git /apptest
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
CMD ["bash", "oi.sh"]

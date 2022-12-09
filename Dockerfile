FROM python:alpine3.14

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /mumc/requirements.txt

WORKDIR /mumc

RUN pip install -r requirements.txt

#COPY . .

WORKDIR /config

#RUN chmod a+x mumc.py
#RUN chmod a+x mumc_config_defaults.py
#RUN chmod 0644 crontab

#RUN crontab crontabdd
#CMD ["crond", "-f"]
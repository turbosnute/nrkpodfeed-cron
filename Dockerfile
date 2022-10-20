FROM python:3
RUN apt-get update && apt-get -y install cron
WORKDIR /app
RUN git clone https://github.com/sindrel/nrk-pod-feeds.git
RUN mv nrk-pod-feeds/* .
RUN rm -rf nrk-pod-feeds
RUN python3 -m pip install --no-cache-dir -r requirements.txt
RUN rm -f /app/docs/rss/*

RUN touch /etc/cron.d/crontab
RUN chmod 0644 /etc/cron.d/crontab
RUN /usr/bin/crontab /etc/cron.d/crontab

# run crond as main process of container
CMD ["cron", "-f"]

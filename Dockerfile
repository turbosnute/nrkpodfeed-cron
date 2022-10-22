FROM python:3
RUN apt-get update && apt-get -y install cron
WORKDIR /app
RUN git clone https://github.com/sindrel/nrk-pod-feeds.git
RUN mv nrk-pod-feeds/* .
RUN rm -rf nrk-pod-feeds
RUN python3 -m pip install --no-cache-dir -r requirements.txt
RUN rm -f /app/docs/rss/*
COPY run.sh /app/run.sh
RUN chmod 744 /app/run.sh
RUN echo "0 * * * * python3 /app/generate_feeds.py" > /etc/cron.d/crontab
RUN chmod 0644 /etc/cron.d/crontab
RUN /usr/bin/crontab /etc/cron.d/crontab
CMD ["/app/run.sh"]

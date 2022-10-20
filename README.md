# nrkpodfeed-cron
```
git clone git@github.com:turbosnute/nrkpodfeed-cron.git
cd nrkpodfeed-cron
docker build -t nrkpodfeed .
docker run -d --name "nrkpodfeed" -v `pwd`/podcasts.json:/app/podcasts.json nrkpodfeed
sudo docker run -d --name "nrkpodfeed" -v `pwd`/podcasts.json:/app/podcasts.json nrkpodfeed -v /app/docs/rss/:/home/pi/www/cast/
```

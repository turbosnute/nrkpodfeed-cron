# nrkpodfeed-cron
```
git clone git@github.com:turbosnute/nrkpodfeed-cron.git
cd nrkpodfeed-cron
docker build -t nrkpodfeed .
docker run -it -v ./podcasts.json:/app/podcasts.json nrkpodfeed /bin/bash
```

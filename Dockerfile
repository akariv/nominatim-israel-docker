FROM mediagis/nominatim:3.3

RUN mkdir /data/ && cd /data/ && curl https://download.geofabrik.de/asia/israel-and-palestine-latest.osm.pbf > israel-and-palestine-latest.osm.pbf ₪&& \
    cd /app && /bin/sh ./init.sh /data/israel-and-palestine-latest.osm.pbf postgresdata 4 && \
    mv /var/lib/postgresql/11/main /var/lib/postgresql/11/main.bak && mv /data/postgresdata /var/lib/postgresql/11/main && rm -rf /data

ENTRYPOINT /bin/bash /app/start.sh


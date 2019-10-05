#!/bin/bash
docker build . -t akariv/nominatim-israel --cache-from akariv/nominatim-israel
docker push akariv/nominatim-israel

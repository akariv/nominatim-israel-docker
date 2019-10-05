# Nominatim server - Israel data

And OpenStreetMap Nominatim server, preloaded with Israel's data.

Docker image is updated weekly with up-to-date OSM data.

## Quickstart

```
$ docker run -d -p 8080:8080 akariv/nominatim-israel

$ pip install geocoder

$ python
Python 3.7.0 (default, Oct 15 2018, 10:12:10)
[Clang 9.0.0 (clang-900.0.39.2)] on darwin
Type "help", "copyright", "credits" or "license" for more information.
>>> import geocoder
>>> geocoder.osm('רוטשילד 14 תל אביב', url='http://localhost:8080/')
<[OK] Osm - Geocode [14, שדרות רוטשילד, תל אביב - יפו, נווה צדק, תל אביב-יפו, מחוז תל אביב, no, ישראל]>
>>> g=geocoder.osm('רוטשילד 14 תל אביב', url='http://localhost:8080/')
>>> g.lat
32.06278
>>> g.lng
34.770688
```


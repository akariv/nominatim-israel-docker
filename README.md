# Nominatim server - Israel data

And OpenStreetMap Nominatim server, preloaded with Israel's data.

Docker image is updated weekly with up-to-date OSM data.

## Quickstart + Examples

```
$ docker run -d -p 8080:8080 akariv/nominatim-israel

$ pip install geocoder

## Geocoding 

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

## Reverse Geocoding

$ curl -s -H "Accept-Language: he" "http://localhost:8080/reverse?lat=32.06278&lon=34.770688&format=json" | json_pp
{
   "osm_type" : "node",
   "boundingbox" : [
      "32.06268",
      "32.06288",
      "34.770588",
      "34.770788"
   ],
   "lat" : "32.06278",
   "licence" : "Data © OpenStreetMap contributors, ODbL 1.0. https://osm.org/copyright",
   "address" : {
      "house_number" : "14",
      "residential" : "תל אביב - יפו",
      "suburb" : "נווה צדק",
      "postcode" : "no",
      "country" : "ישראל",
      "city" : "תל אביב-יפו",
      "country_code" : "il",
      "state" : "מחוז תל אביב",
      "road" : "שדרות רוטשילד"
   },
   "display_name" : "14, שדרות רוטשילד, תל אביב - יפו, נווה צדק, תל אביב-יפו, מחוז תל אביב, no, ישראל",
   "lon" : "34.770688",
   "place_id" : 168367,
   "osm_id" : 2078990618
}
```


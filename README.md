# Nominatim server - Israel data

An OpenStreetMap Nominatim server, preloaded with Israel's data.

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
>>> geocoder.osm('רוטשילד 16 תל אביב', url='http://localhost:8080/')
<[OK] Osm - Geocode [היכל העצמאות, 16, שדרות רוטשילד, תל אביב - יפו, נווה צדק, תל אביב-יפו, מחוז תל אביב, no, ישראל]>
>>> g=geocoder.osm('רוטשילד 16 תל אביב', url='http://localhost:8080/')
>>> g.lat
32.0628337
>>> g.lng
34.7709175

## Reverse Geocoding

$ curl -s -H "Accept-Language: he" "http://localhost:8080/reverse?lat=32.0628337&lon=34.7709175&format=json" | json_pp
{
   "lon" : "34.7709247936668",
   "place_id" : 393938,
   "boundingbox" : [
      "32.0626117",
      "32.0628767",
      "34.7708169",
      "34.7710346"
   ],
   "address" : {
      "postcode" : "no",
      "country" : "ישראל",
      "road" : "שדרות רוטשילד",
      "city" : "תל אביב-יפו",
      "building" : "בית דיזנגוף",
      "house_number" : "16",
      "state" : "מחוז תל אביב",
      "residential" : "תל אביב - יפו",
      "suburb" : "נווה צדק",
      "country_code" : "il"
   },
   "osm_id" : 204436041,
   "display_name" : "בית דיזנגוף, 16, שדרות רוטשילד, תל אביב - יפו, נווה צדק, תל אביב-יפו, מחוז תל אביב, no, ישראל",
   "osm_type" : "way",
   "licence" : "Data © OpenStreetMap contributors, ODbL 1.0. https://osm.org/copyright",
   "lat" : "32.06278345"
}
```


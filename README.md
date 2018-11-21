# NasaAPIs

## This is a simple app to display a few of the NasaAPIs using RubyOnRails.

1. Get an api key for Nasa's APIs. [Nasa API Key](https://api.nasa.gov/index.html#apply-for-an-api-key)

2. Create a secrets.yml in the config directory. And place value for nasa_api_key.

```
development:
    nasa_api_key:
test:
    nasa_api_key:
```

3. Bundle install. ``bundle install``

4. Start rails. ``rails s``

5. APIs consumed are found here. [https://api.nasa.gov](https://api.nasa.gov/index.html)
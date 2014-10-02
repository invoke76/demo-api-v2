# API Demo


[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/invoke76/demo-api-v2)


## Testing using authorization token

Make sure to update the URL path to point to your URL.

### Creating a new review

```
curl -X POST -H "Cache-Control:no-cache" -H "Authorization: Bearer <token>" -F "title=My review" -F "body=This is my review. It was great." -F "rating=5" https://demo-api-v2.herokuapp.com/api/v1/reviews
```

### Get all reviews

```
curl -X GET -H "Cache-Control:no-cache" -H "Authorization: Bearer <token>" https://demo-api-v2.herokuapp.com/api/v1/reviews
```

### Get specific review

```
curl -X GET -H "Cache-Control:no-cache" -H "Authorization: Bearer <token>" https://demo-api-v2.herokuapp.com/api/v1/reviews/1
```
### Delete review

```
curl -X DELETE -H "Cache-Control:no-cache" -H "Authorization: Bearer <token>" https://demo-api-v2.herokuapp.com/api/v1/reviews/6
```

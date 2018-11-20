# Exercise 2
In this exercise, you'll practice working with a data API: specifically, the [New York Times API](https://developer.nytimes.com/) for movie reviews. To learn more about the API, see the [developer console](https://developer.nytimes.com/movie_reviews_v2.json).

To complete the exercise, open the `exercise-2/exercise.R` file in RStudio, and follow the instructions there.

## Getting an API Key
You will need to register with the NYT site at **<https://developer.nytimes.com/signup>** in order to get an API Key. Fill out the form (you can use fake information and a single-use email if you wish). Under "API" select **"Movie Reviews API"** (and note other APIs available for future projects)! The API key should be emailed to you once you sign up.

In order to utilize this key in your script, create a **separate* RScript called `apikey.R` inside this directory. Assign the key that was emailed to you to a variable:

```r
nty_apikey <- "my-api-key-as-a-string-inside-quotes"
```

You should also modify the included `.gitignore` file inside the directory to list your `apikey.R` script so that it doesn't get committed!

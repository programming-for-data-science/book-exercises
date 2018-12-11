# Exercise 1
In this exercise, you'll practice building a dynamic data report using the [New York Times API](https://developer.nytimes.com/) for movie reviews. The dynamic report you'll be building will be a summary review that look something like this:

![Completed movie review report](img/completed.png)

You will need to create and work with multiple files for this exercise, following the below steps:

## 1. Wrangle Data
You will need to implement a script to download the relevant movie review from the NY Times. Follow the instructions in the provided `exercise.R` file. 

_This wrangling is the same as that used in Chapter 14 exercise-2; you can and should reuse that content._

Note that you will need to register for an API key at **<https://developer.nytimes.com/signup>**. Save this in a file `apikey.R`, and be sure to modify your `.gitignore` file to list your `apikey.R` file as one to not be committed.

## 2. Create an R Markdown File
Next, create a new R Markdown file in this folder. Save it as **`index.Rmd`** (the traditional name for web files). The title should be _"Movie Review"_.

## 3. Setup the Data
In the `index.Rmd` file (e.g., in the `setup` code chunk created by default), use `source()` to load the `exercise.R` file that contains the instruction for data wrangling.

## 4. Markdown Content
Use Markdown syntax to reference the variables you created as part of your exercise script to specify the following content:

- Display the headline of the review in a **second-level header**
- Display the summary text of the review in a **blockquote**

For practice, also add a second code chunk named `link`. In this chunk, create a variable `link_markdown` that contains a string with the Markdown syntax for a hyperlink to the full movie review (hint: use the `paste()` function). Below this chunk, include that hyperlink in a sentence linking to the full movie review.
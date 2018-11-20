# Exercise 1: reading and querying a web API

# Load the httr and jsonlite libraries for accessing data
# You can also load `dplyr` if you wish to use it


# Create a variable base_uri that stores the base URI (as a string) for the 
# Github API (https://api.github.com)


# Under the "Repositories" category of the API documentation, find the endpoint 
# that will list _repos in an organization_. Then create a variable named
# `org_resource` that stores the endpoint for the `programming-for-data-science`
# organization repos (this is the _path_ to the resource of interest).


# Send a GET request to this endpoint (the `base_uri` followed by the 
# `org_resource` path). Print the response to show that your request worked. 
# (The listed URI will also allow you to inspect the JSON in the browser easily).


# Extract the content of the response using the `content()` function, saving it
# in a variable.


# Convert the content variable from a JSON string into a data frame.


# How many (public) repositories does the organization have?


# Now a second query:
# Create a variable `search_endpoint` that stores the endpoint used to search 
# for repositories. (Hint: look for a "Search" endpoint in the documentation).


# Search queries require a query parameter (for what to search for). Create a 
# `query_params` list variable that specifies an appropriate key and value for 
# the search term (you can search for anything you want!)


# Send a GET request to the `search_endpoint`--including your params list as the
# `query`. Print the response to show that your request worked.


# Extract the content of the response and convert it from a JSON string into a
# data frame. 


# How many search repos did your search find? (Hint: check the list names to 
# find an appropriate value).


# What are the full names of the top 5 repos in the search results?


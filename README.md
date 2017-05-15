== README

#Overview
This is a replica of a search feature that uses a standalone table-specific search model to run searches. The searches are persisted to the database so they may also be saved for commonly used searches much like a scope. For my purposes, this acts as a workaround for my inability to pass parameter arguments from the controller to the model where the scopes are called.

##User Flow
A user enters search params in the search form. The request is submitted to the `:search` resource which passes it to the `search#create` which persists a search record in the db before redirecting to the `search#show` where the results are displayed.

The search results are displayed by calling `@search.products` which in turn calls a private method `find_products` which does most of the heavy lifting.

##These are the things I'm unclear about:
+ How do the queries recognize they dynamic arguments? Is the difference here that the model is referencing an actual record?
+ What is the significance of the first query starting with the class `Product` while the rest are local variables? My assumption is that you need to use the class name to make the query, but once it's set in the first line as a local variable, we're just chaining each sequential query. The last line returns the chained query.
+ What is the significance of a `private` method?
+ I see now that each sequential query chains the previous query by beginning with `.products`. This leads me to believe that I could use this technique to pass in dynamic scope arguments. 

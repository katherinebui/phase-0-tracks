RELEASE 0: VIEW HTTP REQUESTS VIDEO NOTES: 
- status: 200 is something that you should aim for
  - meaning things are all good
  - not the only one that reps everything is okay 
- status code 404 - rep error
- what type was sent? 
  - type column shows
- key/values pairs that have info about the response
  - communicates some type of information to the web server
- Chrome makes it prettier
  - view source: shows that it looks like when sending info 
- GET: verb/action : method
  - GET wants to retreive something
  - GET wants to GET something
- Host: the phone number we are calling 
  - the computer you are trying to connect
- Accept: what is okay to response with
  - listing that is okay to be sent back
- User-Agent: if making a web server, don't count on user-agent to be accurate
  - sometime it is true, but can be spooked
- Cookie: sent as a header to your HTTP browser
- Response ---
- see key/values
- also sent a HTML file that spark other requests
  - request can be attached to file
- ROOT directory - our top
- GET: how to build code to respond to GET method 
  - how can you build better software for the web


https://developers.google.com/web/tools/chrome-devtools/profile/network-performance/resource-loading




RELEASE 0: FIND THE THING:
1. What are some common HTTP status codes?
  - 200 ok
  - 300 multiple choices
  - 301 moved permanently
  - 302 see other/found
  - 304 not modified
  - 307 temporary redirect
  - 400 bad request
  - 401 unauthorized 
  - 403 forbidden
  - 404 not found
  - 410 gone
  - 451 unavilable for legal reasons
  - 500 internal server error
  - 501 not implemented
  - 503 service unavailable
  - 550 permission denied
  the first digit of the status cdes specifies one of the five classes of response. an HTTP cient must regonise these five classes at minimum


2. What is the difference between a GET request and a POST request? When might each be used?
  
  http://stackoverflow.com/questions/3477333/what-is-the-difference-between-post-and-get
  http://www.w3schools.com/tags/ref_httpmethods.asp
  
  POST requests supply additional data from the cliet (browser)/ sumbits data to be processed to a specified resource
  
  Note that the query string (name/value pairs) is sent in the HTTP message body of a POST request:
  
              POST /test/demo_form.asp HTTP/1.1
              Host: w3schools.com
              name1=value1&name2=value2

  Some other notes on POST requests:
    - POST requests are never cached
    - POST requests do not remain in the browser history
    - POST requests cannot be bookmarked
    - POST requests have no restrictions on data length
  
  GET - include all required data in the URL/ requests data from a specified resource
  
  Note that the query string (name/value pairs) is sent in the URL of a GET request:
              /test/demo_form.asp?name1=value1&name2=value2
 
  Some other notes on GET requests:
    - GET requests can be cached
    - GET requests remain in the browser history
    - GET requests can be bookmarked
    - GET requests should never be used when dealing with sensitive data
    - GET requests have length restrictions
    - GET requests should be used only to retrieve data


3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies

   - a small piece of data sent from a website and stored in a user's web browser while the user is browsing
   - designed to remember stateful information or to record the user's browsing activity
   - can remember arbitrary pieces of info that the user previously entered into form fields such as names, addresses, passwords and credit card numbers
   - remembers stateful info fro the stateless HTTP protocol
   - main purposes are: 
    1. session management (user logins, shopping carts)
    2. personalization (user preferences)
    3. tracking (anazling user behavior)






















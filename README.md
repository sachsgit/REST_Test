# REST_TEST

## Overview

Create a public GITHUB repo (https://github.com) that contains as many
tests as you deem appropriate for HTTP GET requests against the /posts
route of http://jsonplaceholder.typicode.com.  Please view that link
for additional information.   
 
The tests should be implemented with the Robot Framework using the
robotframework- requests library to issue the GET requests and the
robotframework-jsonlibrary to interrogate the JSON responses.  Each
test should also verify the appropriate HTTP status code. 
 
## Files

`happy_path.robot`  Smoke Test
`random_post.robot` Test for Random Post
`all_posts.robot`   Test for All Posts

Feature: Hello World feature

Scenario: GoRest with AccessKey
  
  * print 'hello!!!'
  * url 'https://gorest.co.in/'
  * path 'public','v2','users'
  * header Authorization = 'Bearer a56cf70a43511b4dec6574882cca603f7ab3f4a259bc7b59f4709bf7907fe299'
  * method GET
  * print response

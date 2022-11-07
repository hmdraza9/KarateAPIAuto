Feature: Hello World feature

Scenario: Hello World

	* print 'hello!!!'
  * url 'https://gorest.co.in/'
  * path 'public-api','users'
  * header Authorization = 'Bearer a56cf70a43511b4dec6574882cca603f7ab3f4a259bc7b59f4709bf7907fe299'
  * def reqBody = '{"email":"shesh@gmail.com","name":"shesh","gender":"male","status":"inactive"}'
  * request reqBody
  * method POST
  * print response
  * print response.code
  * print response.data.length
  
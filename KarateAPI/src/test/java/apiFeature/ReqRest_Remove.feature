Feature: Req Resr remove feature

Scenario: Req Res remove scenario

  * url 'https://reqres.in/api/users?delay=3'
  * method GET
  * print response
  * print response.support
  * print response.support.text
  * print response.support.url
  * print response.support.length
  * print response
  * remove response.support.url
  * print response
  * remove response.support.text
  * print response
  * remove response.support
  * print response
  
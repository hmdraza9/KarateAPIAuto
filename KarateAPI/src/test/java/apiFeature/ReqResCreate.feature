Feature: Req Res register feature

Scenario: Req Res register scenario

  * url 'https://reqres.in/api/register'
  * def reqBody = read('../inputBody/ReqResRegister.json')
  * request reqBody
  * method POST
  * print response
  * def reqID = response.id
  * print 'User ID: ' + reqID
  * def reqToken = response.token
  * print 'User Token: ' + reqToken
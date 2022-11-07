Feature: Req Res user create

Scenario: Req Res user create 1

	* def getDate =
    """
      function() {
      var SimpleDateFormat = Java.type('java.text.SimpleDateFormat');
      var sdf = new SimpleDateFormat('dd_MMM_yyyy_HHmmss');
      var date = new java.util.Date();
      return sdf.format(date);
      }
    """
  * url 'https://gorest.co.in/'
  * path 'public-api','users'
  * header Authorization = 'Bearer a56cf70a43511b4dec6574882cca603f7ab3f4a259bc7b59f4709bf7907fe299'
  * def reqBody = read('../inputBody/GoRestUserCreate.json')
  * def dynEmail = getDate() + reqBody.email
  * set reqBody.email = dynEmail
  * request reqBody
  * method POST
  * print response
  * print response.code
  * print response.data.length
  
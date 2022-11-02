Feature: Hello World feature

Scenario: Hello World

	* print 'Hello world'
	* url 'https://reqres.in/api/users?page=2'
	* method GET
	* def dataLength = response.data.length
	* print dataLength
	* def dataList = []
	* eval for(var i = 0;i <= dataLength; i++) dataList.add(response.data[i])
	* print dataList
	* url 'https://reqres.in/api/unknown'
	* print response
	* def balance = 200
	* def fee = 20
	* print 'Total ->' + (balance + fee + fee)
	* set response.data[2].email = 'test@test.com'
	* karate.write(response,'../src/test/java/outputJSON/response.json')
	* def inputJSON = read('C:/GitClones/KarateAPIAuto/KarateAPI/src/test/java/inputBody/inputJSON.json')
	* set inputJSON.data[2].email = 'test@test.com'
	* match response == inputJSON
	* print 'inputJSON.data[2].email: '+inputJSON.data[2].email
	* print 'response.data[2].email: '+  response.data[2].email

	* def reqDataCount = inputJSON.data.length
	* def resDataCount = response.data.length
	
	* match reqDataCount == resDataCount
	
	* def myFunct = 
	"""
	function(){
	
		return 'FunctionWithoutParam'
	
	}
	"""
	* def myFunct2 = 
	"""
	function(arg){
	
		return 'FunctionWithParam: '+arg+', arg.len:'+arg.length
	
	}
	"""
	* def fun1Val = call myFunct
	* def fun2Val = call myFunct2 'param'
	* print fun1Val
	* print fun2Val
	* def featureReturnVal = call read('C:/WSs/newKarateAPIAuto/KarateAPI/src/test/java/apiFeature/calledFeature.feature')
	* def ll = featureReturnVal.response
	* print ll
	* def eefe = read('C:/GitClones/KarateAPIAuto/KarateAPI/src/test/java/apiFeature/calledFeature.feature')
  * print eefe
  * print eefe.name
  * match ll == featureReturnVal.response
  * print ll.length
  * print ll[0]
  * print ll[1]
  * print ll[2] 
  * print ll[3]
  * print ll[4]
  * print ll[5]
  * url 'https://gorest.co.in/public/v2/users'
  * method GET
  * print response
  

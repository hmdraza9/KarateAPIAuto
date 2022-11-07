@RunMeOne
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
	* def sleep =
	"""
	function(seconds){
	
				for(i = 0;i<=seconds;i++){
				
					java.lang.Thread.sleep(1*1000);
				
				}
		
			}
	"""
	* def fun1Val = call myFunct
	* def fun2Val = call myFunct2 'param'
	* print fun1Val
	* print fun2Val
	* def featureReturnVal = call read('C:/GitClones/KarateAPIAuto/KarateAPI/src/test/java/apiFeature/calledFeature.feature')
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
  #------------.. (double dot means one dir back i.e. parent directory.)------------
   #below creates file at given path which falls in project path
  * karate.write("sss","../src/test/java/outputJSON/blah1.json")
  #below creates file even before src
  * karate.write("sss","../blah2.json")
  #below 3 and 4 files creates file in target
  * karate.write('{"sss":"hello blah3"}','/blah3.json')
  * karate.write('{"sss":"hello blah4"}','blah4.json')
  * def readLocal = read('../inputBody/inputJSON.json')
  * print readLocal
  #below creates file before src, inside given path
  * karate.write('{"sss":"hello asdf/blah5"}','../asdf/blah5.json')
  #below creates file at given path which falls in project path
  * karate.write("sss","../src/test/java/blah6.json")
  #file create tutorial ends here
  #file to read should be inside src/test/java/ , can't go more backward as per current knowledge
  * def readIt = read("../inputBody/inputJSON.json")
  * print readIt
  * def readIt = read("../readFile.json")
  * print readIt
  * url 'https://demo.guru99.com/V4/sinkministatement.php?CUSTOMER_ID=68195&PASSWORD=1234!&Account_No=1'
  * method GET
  * print response
  * karate.write(response,'../src/test/java/outputJSON/guru99.json')
  * call sleep 5
  * def kiddo = read('classpath:src/test/java/outputJSON/guru99.json')
  * print kiddo
  * def onee = kiddo.result
  * print onee
 
  
  
  
    
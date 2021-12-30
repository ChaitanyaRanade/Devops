@isTest
global class AnimalLocatorMock implements HttpCalloutMock {
    global HTTPResponse respond(HTTPRequest request){
        HTTPResponse response = new HTTPResponse();
        
        response.setHeader('Content-type',	'application/json');
        response.setBody('{"animals":["id":1,"name":"hungry hippo", "test":"squeaky squirrel"]');
        response.setStatusCode(200);
        return response;
        
    }

}
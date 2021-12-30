@RestResource(urlMapping = '/cases/*')
global with sharing class CaseManager{
    
    @HttpGet
    global static Case getCaseById(){
        RestRequest request = RestContext.request;
        String caseURI = request.requestURI;
        String caseId = caseURI.substringAfter('cases/');
        Case result = [SELECT Id from Case where id =: caseId];
        return result;
    }
    
    @HttpPost
    global static Id createCase(String Subject, String status, String Origin, String priority){
        
        Case testCase = new Case();
        testCase.Subject = Subject;
        testCase.status = status;
        testCase.Origin = origin;
        testCase.Priority = priority;
        insert testCase;
        return testCase.Id;
    }
    
    @HttpPatch
    global static Id updateCaseFields(){
        RestRequest request = RestContext.request;
        String caseId = request.requestURI.substringAfter('cases/');
        Case rec = [SELECT id FROM Case where id =: caseId];
        Map<String,Object> mapCase = (Map<String,Object>) JSON.deserializeUntyped(request.requestBody.toString());
        for(String c:mapCase.keySet()){
            rec.put(c,mapCase.get(c));
        }
        update rec;
        return rec.id;	
        
    } 
    
}
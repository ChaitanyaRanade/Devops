@isTest	
public class CaseManagerTest {
	
    @isTest static void getCase(){
        Id recordId = createCase1();
        RestRequest testReq = new RestRequest();
        testReq.requestURI = 'https://wazir-dev-ed.my.salesforce.com/services/apexrest/cases/'+recordId;
        testReq.httpMethod = 'GET';
        RestContext.request = testReq;
        Case testCase = CaseManager.getCaseById(); 
    }
    
    
    @isTest static void createCase(){
        Id testCase1 = CaseManager.createCase('Test Subject', 'Open', 'Test Website', 'High');
    }
    
    @isTest static void updateCase(){
        Id recordId = createCase1();
        RestRequest testReq = new RestRequest();
        testReq.requestURI =  'https://wazir-dev-ed.my.salesforce.com/services/apexrest/cases/'+recordId;
        testReq.httpMethod = 'PATCH';
        testReq.requestBody = Blob.valueOf('{"Subject":"Test Subject1"}');
        RestContext.request = testReq;
        Id testCase2 = CaseManager.updateCaseFields();
        
    }
    
    static Id createCase1(){
        case testCase3 = new case();
        testCase3.subject = 'Test';
        testCase3.status = 'Open';
        testCase3.origin = 'Test';
        testCase3.priority = 'High';
        insert testCase3;
        return testCase3.Id;
    }
}
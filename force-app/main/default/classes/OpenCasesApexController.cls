public with sharing class OpenCasesApexController {
	@AuraEnabled
    public static List<Case> getCasesDB(){
        return[SELECT id FROM Case];
    }
}
public with sharing class ExpCollController {
@auraenabled
    public static List<contact> getContacts(){
        List<contact> lisCon = new List<contact>();
        lisCon = [select id,name,Phone,AccountId,Account.Name,LeadSource,Department from contact];
        system.debug('--------'+lisCon);
        return lisCon;   
    }
@auraenabled    
    public static List<contact> findByName(String searchKey){
        String name = '%'+searchKey+'%';
        return[select id,name,Phone,AccountId,Account.Name,LeadSource,Department from Contact where name LIKE: name LIMIT 50];
    }

}
public virtual class SOQL_Example1 {
    public static List<Account> accounts;
    public static String testVar1 = 'test';
    public SOQL_Example1(){
        accounts = [SELECT id,industry,name,phone,CreatedDate,LastModifiedDate,LastViewedDate from Account];
        String testVar = 'test';
    }
    
    @AuraEnabled
    public static List<Account> fetchAll(String firstName,String lastName, String Phone){
        Contact con = new Contact();
        con.FirstName = firstName;
        con.LastName = lastName;
        con.Phone = Phone;
        try{
        	insert con;
        }
        catch(Exception ex){
            system.debug('-----Error-------'+ex);
        }
        accounts = [SELECT id,industry,name,rating,phone,CreatedDate,LastModifiedDate,LastViewedDate from Account ORDER BY CreatedDate ASC];
        //testVar = 'test1';
        return accounts;
    }

    
    public void setLimit(){
        accounts = [SELECT id,industry,name,phone,CreatedDate,LastModifiedDate,LastViewedDate from Account limit 5];
    }
    
    public void dynamicLimit(){
        Integer lim = 3;
        accounts = [SELECT id,industry,name,phone,CreatedDate,LastModifiedDate,LastViewedDate from Account limit : lim];
    }
    
     public void offsetMethod(){
        Integer lim = 3;
        accounts = [SELECT id,industry,name,phone,CreatedDate,LastModifiedDate,LastViewedDate from Account limit 10 OFFSET 5];
    }
    
    public void CustomCondition(){
        List<String> lim = new List<String>{'test3','United Oil & Gas Corp.','Test Account'};
        accounts = [SELECT acc.id,acc.industry,acc.name,acc.phone,acc.CreatedDate,acc.LastModifiedDate,acc.LastViewedDate from Account acc ORDER BY LastModifiedDate DESC ];
    }
    
}
public class conControl {
    @AuraEnabled
    public static List<Contact> get10COntacts()
    {
        return [SELECT Id, NAME FROM Contact Limit 10] ;
    }
}
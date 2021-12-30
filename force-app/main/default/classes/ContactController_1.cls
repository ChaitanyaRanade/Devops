public class ContactController_1 {
@AuraEnabled
public static List<Contact> getList() {
    return [SELECT id, name, phone FROM Contact LIMIT 50];
}
}
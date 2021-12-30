public class UpdateContactAddress{
    public static void UpdateContact()
    {
      
      for(Account accs:[SELECT BillingAddress, (SELECT MailingAddress FROM Contacts)  FROM Account])
      {
          for(Contact cons: accs.Contacts){
             cons.MailingCity=accs.BillingCity;
             cons.MailingStreet=accs.BillingStreet;
             cons.MailingPostalCode=accs.BillingPostalCode;
             cons.MailingState=accs.BillingState;
             cons.MailingCountry=accs.BillingCountry;
             update cons;
             System.debug(cons);
          }
      }
       
    }
}
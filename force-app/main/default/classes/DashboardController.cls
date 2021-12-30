public class DashboardController {
public string name;

public SelectOption[] myOptions{get;set;}
public List<contact> conList{get;set;}

    public DashboardController(){
        SelectOption test1 = new SelectOption('null','-none-');
        SelectOption test2 = new SelectOption('One','Jan');
        SelectOption test3 = new SelectOption('Two','Feb');
        myOptions = new Selectoption[]{test1,test2,test3};     
        List<contact> conList = new List<contact>();
        conList = [SELECT id,Account.name,Account.phone from contact];
        
        messaging.singleEmailMessage msg = new messaging.singleEmailMessage();
        messaging.EmailFileAttachment msgAttach = new messaging.EmailFileAttachment();
        String[] toAddress = new String[]{'cranade@teksystems.com','cranade@mobilemini.com'};
        msg.setToAddresses(toAddress);
        msg.setSubject('Test');
        msg.setPlainTextBody('Test Body');
        msg.setHTMLBody('Test HTML body');
        List<messaging.SendEmailResult> result = messaging.sendEmail(new messaging.singleEmailMessage[]{msg});
        system.debug('-----result-------'+result.get(0).isSuccess());
        
        
    }
}
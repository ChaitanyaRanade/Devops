public class testTrigger1Helper {
    public static boolean rec = true;
    
 	
    public static void stopDeletion(List<Task> tskList){
        for(Task tsk: tskList){
            system.debug('==============='+tsk.IsDeleted);
           /* PageReference pr = new PageReference('/apex/student_example');
			pr.getParameters().put('key','value');
			pr.setRedirect(true); // If you want a redirect. Do not set anything if you want a forward.*/
        
        }
        
    }
    
    
    public static void calcTsk(List<Task> tskList){
        
        List<Id> leadId = new List<Id>();
    List<Lead> listLead = new List<Lead>();
        for(Task tsk: tskList){
            if(tsk.WhoId != null){
            leadId.add(tsk.WhoId);
                }
        }
    

    
    for(Lead l: [select id, Chaits__No_of_Tasks__c,(select id from tasks where isClosed = false) from Lead where id in : leadId]){
        Lead led = new Lead(id = l.id);
        led.Chaits__No_of_Tasks__c = l.tasks.size();
        listLead.add(led);
        update l;
    }
    
    
    }
    
    public static void createTask(){
          if(rec){
        system.debug('=====');
        rec = false;
        Task tsk = new Task();
        tsk.Subject = 'Email';
		tsk.WhoId = '00Q2v00001XsQ80';
        insert tsk;
        }
    }
    
}
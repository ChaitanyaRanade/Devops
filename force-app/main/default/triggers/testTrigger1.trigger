trigger testTrigger1 on Task (after insert,after update,after delete,after undelete) {
	
    if(Trigger.isUpdate || Trigger.isUndelete){
    		testTrigger1Helper.calcTsk(trigger.new);
    }
    if(Trigger.isDelete){
 			testTrigger1Helper.stopDeletion(trigger.old);
        }
    if(Trigger.isInsert){
        testTrigger1Helper.createTask();
    }
    
    
    
}
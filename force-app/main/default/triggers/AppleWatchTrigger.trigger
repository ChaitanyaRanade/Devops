trigger AppleWatchTrigger on Opportunity (after insert) {
	
	List<Task> listTask = new List<Task>();
	
	for(Opportunity opp: Trigger.new){
		Task oppTask = new Task();
		oppTask.subject = 'Apple Watch Promo' ;
		oppTask.description = 'Send them one ASAP';
		oppTask.priority = 'High';
		oppTask.whatId = opp.Id;
		listTask.add(oppTask);
	}
	
	insert listTask;
    
}
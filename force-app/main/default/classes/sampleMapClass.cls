public class sampleMapClass {
    public static void testMap(){
		List<Account> accList = new List<Account>([SELECT id,phone,ownerId from Account]);
		Map<Id,String> mapUserEmail = new Map<Id,String>();
        system.debug('------Map Before Populating------'+mapUserEmail);


List<id> sampleList = new List<id>();
for(Account acc : accList){
	sampleList.add(acc.ownerid);

}

List<User> usrList = [SELECT id,Email from User where id in : sampleList];

for(User usr: usrList){

	mapUserEmail.put(usr.Id,usr.email);

}
system.debug('------Map Values------'+mapUserEmail.values());
system.debug('------Map Keys------'+mapUserEmail.keySet());
for(Account acc:accList){
	
		If(mapUserEmail.containsKey(acc.ownerid)){
			//system.debug('--------Email Value---------'+mapUserEmail.values());
		}

	}
}
}
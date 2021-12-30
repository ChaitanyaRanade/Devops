trigger sampleTrigger on Account (after insert) {
    public static boolean flag = true;
    for(Account acc : trigger.new){
        if(flag){
            flag = false;
            Account acc1 = new Account();
            acc1.name = 'New Account';
            insert acc1;
        }
    }
}
public class AcctController {

    public PageReference save() {
        upsert acc;
        return null;
    }


    public Account getAccount() {
        return acc;
    }
    public Account acc;
    public acctController(){
   ID id = apexpages.currentpage().getparameters().get('id');
   if(id == null){
   acc = new Account();
   }
   else{
    acc= [SELECT Id, Name, phone from Account where id =: id ];
}


}
}
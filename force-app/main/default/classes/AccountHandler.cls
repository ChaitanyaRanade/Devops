public class AccountHandler {
    public static Account insertNewAccount(String Acname){
        if(Acname!=''){
            try{
        Account NewAcc = new Account(Name=Acname, Phone='9889889090');
            insert NewAcc;
            System.debug('Bravo Andrè! Account created');
        return NewAcc;
            }
            catch(Exception e){
                system.debug('Account not created');
                return null;
            }
        }
        else{
            return null;
        }
    
}
}
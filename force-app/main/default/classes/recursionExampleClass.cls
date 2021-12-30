public class recursionExampleClass {
    public static Boolean flag = true;
    public static void createAcc(){
        if(flag){
            flag = false;
        	Account acc = new Account();
        	acc.Name = 'test Acc';
        	insert acc;
        }
    }
}
public class MyExtension{

public final Account acct;

public MyExtension(ApexPages.StandardController controller){
this.acct = (Account) controller.getrecord();
}

public String getTitle(){
return 'Account:'+acct.name +'('+acct.id+')';
}
}
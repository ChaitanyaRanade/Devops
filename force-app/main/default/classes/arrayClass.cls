public class arrayClass {

    public arrayClass()
    {    String[] strArray = new String[]{'1st','2nd','3rd','4th','5th'};
        for(String str : strArray){
            system.debug('-----'+str);
        }
    }
}
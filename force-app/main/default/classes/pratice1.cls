public class pratice1 {
    public static void meth(Integer opt){
        List<String> charList = new List<String>{'0','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','x','y','z'};
        Integer num = opt;
        String str='';
        Integer spaceVal = 0;
        for(Integer k=num;k>=1;k--){
            str = str.leftPad(spaceVal);
            for(Integer i=1;i<=k;i++){
                str += charList[i];
                if(i==k){
                    for(Integer j=k;j>=1;j--){
                        str += charList[j];
                    }
                }
            }
            str += '\n';
            spaceVal++;
            
        }
        system.debug(str);
        Account acc = new Account(id='0012v00002neFZqAAM');
        acc.Description = str;
        update acc;

    }
}
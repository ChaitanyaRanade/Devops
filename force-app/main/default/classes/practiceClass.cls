public class practiceClass {
    public String num{get;set;}
    
    public String getDiagram(){
        String str = '';
        Integer num = 3;
        for(Integer i=1;i<=num;i++){
            str += i;
            str = str.rightPad(num-i, ' ');
            if(i!=num){
            	str += i;
            }
            str += '\n';
             if(i!=num)
            str = str.leftPad(i, ' ');
           
        }
        for(Integer i=num-1;i>=1;i--){
			str = str.leftPad(i-1,' ');
            str += i;
            str = str.rightPad(i, ' ');
            str += i;
            str += '\n';
        }
	return str;
    }
}
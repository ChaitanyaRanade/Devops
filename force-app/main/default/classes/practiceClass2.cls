public class practiceClass2 {
    public static void createDiagram(Integer n){
         String str = '';
        for(Integer i=1;i<=n;i++)
        {
            for(Integer j=0;j<n;j++)
                
            {
                if(j<n-i)
                    str += '*';
                else
                    
                    str += ' ';
                
            }
            for(Integer j=0;j<n;j++)
                
            {
                
                
                if(j<i)
                    str += ' ';
                else
                    
                    str += '*';
            }
            
			str += '\n';            
        } 
        for(Integer i=1;i<=n;i++)
        {
            for(Integer j=0;j<n;j++)
                
            {
                if(j<i)
                    str += '*';
                else
                    
                    str += ' ';
                
            }

            for(Integer j=0;j<n;j++)
                
            {
                
                
                if(j<n-i)
                    str += ' ';
                else
                    
                    str += '*';
            }
            
			str += '\n';  
            
        } 
        
        
        Account acc = new Account(id='0012v00002neFZqAAM');
        acc.Description = str;
        update acc;
    }
}
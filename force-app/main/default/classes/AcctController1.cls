public class AcctController1 {
string theText;
list<lead> results;
    public list<lead> getResults() {
        return results;
    }


    public PageReference doSearch() {
       results = (list<lead>)[FIND : theText returning lead(name,phone,email)][0];
       return null;
    }

    public string getSearchText() {
        return null;
    }
    
     public void setSearchText(string s) {
     
     theText = s;
        
    }
    


    public List<selectOption> getValues() {
    
    List<selectOption> myList = new List<selectOption>();
    for(Account acc : [SELECT id,Name from Account limit 5]){
    
    myList.add(new selectOption(acc.id, acc.name));
    }
    
        return myList;
    }


    public String selected { get; set; }

   
}
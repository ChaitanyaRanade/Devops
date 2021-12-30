trigger dupCon on Contact (before insert,before update) {

Map<String,String> mapofEmailId = new Map<String, String>();
set<String> setEmail = new Set<String>();

for(Contact c: trigger.new){
setEmail.add(c.email);
}

for(COntact c: [select id, email,Name from contact where email in: setEmail]){

mapofEmailId.put(c.Email,c.Name)  ;
}

for(Contact c: trigger.new){

if(mapofEmailId.containskey(c.Email) && c.Email != null){

c.email.adderror('This email id is already taken by'+mapofEmailId.get(c.email));
        }
    }
}
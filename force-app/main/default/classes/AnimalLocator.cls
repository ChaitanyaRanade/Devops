public class AnimalLocator {
    	public static String getAnimalNameById(Integer id){  
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/:'+id);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        Map<String, Object> map1 = (Map<String,Object>)JSON.deserializeUntyped(response.getBody());
		Map<String, Object> animal = (Map<String, Object>)map1.get('animal');
        return (String)animal.get('name');
        
        
    }
}
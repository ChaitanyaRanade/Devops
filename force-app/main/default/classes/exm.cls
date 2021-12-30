public class exm {
    
    public void invoke(){
        String endpoint = 'https://reqres.in/api/users?page=2';
        HTTP ht = new HTTP();
        HttpRequest req = new HttpRequest();
        req.setEndpoint(endpoint);
        req.setMethod('GET');
        HTTPResponse res = new HTTPResponse();
        res = ht.send(req);
        List<String> keys = res.getHeaderKeys();
        system.debug('----Res-------'+keys);
    }
}
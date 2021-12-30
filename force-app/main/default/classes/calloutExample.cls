public class calloutExample {

    public void invokeWS(){
        List<Chaits__Test_URL__c> cs = Chaits__Test_URL__c.getAll().values();
        String endpoint = cs[0].Chaits__URL__c;
        HTTP ht = new HTTP();
        HTTPrequest req = new HTTPrequest();
        req.setEndpoint(endpoint);
        req.setMethod('GET');
        HTTPResponse res = ht.send(req);
        //system.debug('-------Response---------'+res.getHeaderKeys());
        //JSONApex testObj = (JSONApex) JSON.deserialize(res.getBody(), Apex.class);
        System.JSONParser jp = JSON.createParser(res.getBody());
        while(jp.nextToken() != null){
            if(jp.getText() == 'total_pages'){
                jp.nextToken();
                system.debug(jp.getText());
            }
        }
    }
}
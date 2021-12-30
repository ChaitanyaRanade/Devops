public with sharing class SalesLeader implements Comparable {
    @AuraEnabled
    public string fullName{get;set;}
    @AuraEnabled
    public string email{get;set;}
    @AuraEnabled
    public string userId{get;set;}
    @AuraEnabled
    public Decimal netSales {get;set;}
    @AuraEnabled
    public string photoURL{get;set;}

    public SalesLeader(String fullName,String email,String userId,Decimal netSales,String photoURL) {
        this.fullName = fullName;
        this.email = email;
        this.userId = userId;
        this.netSales = netSales;
        this.photoURL = photoURL;
    }

    public Integer compareTo(Object compareTo){
        SalesLeader compareToNetRevenue = (SalesLeader)compareTo;
        if(netSales == compareToNetRevenue.netSales) return 1;
        if(netSales < compareToNetRevenue.netSales) return 0;
        else return -1;
    }
}
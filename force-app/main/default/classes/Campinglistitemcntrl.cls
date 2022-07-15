public class Campinglistitemcntrl {

    @AuraEnabled
    public static list<Camping_Item__c> camplist(){
        list<Camping_Item__c> cmplist = [select id,name,quantity__c,price__c,packed__c from Camping_Item__c limit 1 ];
        return cmplist;
    }
}
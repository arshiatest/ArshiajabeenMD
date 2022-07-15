public with sharing class concontroller 
{
    @AuraEnabled
    public static string empname(){
       string empname = 'Arshia';
        return empname;
    }
    @AuraEnabled
    public static list<contact> findcontacts(){
        return [select id,name,phone,email from contact LIMIT 50];
    }
     
    @AuraEnabled
        public static list<contact> searchsimilarcontacts(string searchkey){
        string name ='%'+searchkey+'%';
        return [select id,name,phone,email from contact  where name like:name LIMIT 50];
    }
     @AuraEnabled
        public static contact getcontact(string contactID){
        return [select id,name,phone,email,Account.name from contact  where ID=:contactID LIMIT 1];
    }
    
    
}
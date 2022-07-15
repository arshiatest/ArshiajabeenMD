public class SaveSurvey {
    @AuraEnabled
    public static string doSave(Survey__c surveyIs){
        
        insert surveyIs;
        return surveyIs.Id;
        
    }
    
    @AuraEnabled 
    public static boolean fetchUser(){
     // query current user information  
      string oUser = [select profile.name FROM User Where id =: userInfo.getUserId()].profile.name;
        if(oUser=='System Administrator'){
            return true;}
        else{return false;}
        
    }
    
    @AuraEnabled
    public static Survey__c save(Survey__c sur)
    {
       
     	insert sur;
        return sur;
    }
    
     @AuraEnabled
    public static Survey__c save1(Survey__c sur)
    {
        sur.Active_Survey__c=true;
     	insert sur;
        return sur;
    }


}
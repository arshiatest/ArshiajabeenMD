trigger acc1 on Account (before insert) {
    for(account a:trigger.new){
        a.rating='warm';
        a.ownership='private';
        a.type='prospect';
        a.Active__c= 'yes';
    }
    
}
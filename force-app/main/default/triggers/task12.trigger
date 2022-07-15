trigger task12 on Lead (before insert) {
    for(lead l:trigger.new){
        l.leadsource__c=0;
        if(l.phone!=null){
            l.leadsource__c=l.leadsource__c+10;
        }
         if(l.email!=null){
            l.leadsource__c=l.leadsource__c+10;
        }
         if(l.annualrevenue!=null){
            l.leadsource__c=l.leadsource__c+20;
        }
         if(l.Industry!=null){
            l.leadsource__c=l.leadsource__c+20;
        }
    }
}
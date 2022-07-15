trigger testtriggermail on light__c (after insert) {
    if(trigger.isafter && trigger.isinsert){
        
        for(light__c e : trigger.new) {
            emailclass.sendAttach(e.id);
        }
    }

}
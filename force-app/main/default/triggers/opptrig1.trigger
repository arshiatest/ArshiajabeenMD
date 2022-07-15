trigger opptrig1 on Opportunity (before insert) {
    for(opportunity op:trigger.new){
        op.stagename='prospecting';
        op.closedate= system.today()+15;
        op.amount=5000;
        op.leadsource='web';
    }
}
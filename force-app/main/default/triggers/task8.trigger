trigger task8 on Opportunity (after insert) {
user u=[select id from user where alias='pkatz'];
   
    list<opportunityteammember> otms= new list<opportunityteammember>();
    for(opportunity op:trigger.new){
        if(op.amount>500000){
            opportunityteammember otm= new opportunityteammember();
            otm.opportunityid=op.id;
            otm.userid=u.id;
            otm.TeamMemberRole='ceo';
            otms.add(otm);
        }
    }
    insert otms;
}
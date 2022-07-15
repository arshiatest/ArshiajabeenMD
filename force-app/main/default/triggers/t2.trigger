trigger t2 on Opportunity (after insert) {
for(opportunity op:trigger.new){
contact c= new contact();
c.accountid= op.accountid;
c.firstname='oppowner';
c.lastname='account';
c.email='opp@gmail.com';
insert c;
}
}
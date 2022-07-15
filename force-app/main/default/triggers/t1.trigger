trigger t1 on Opportunity (before insert,before update) {
list<opportunity> ops= trigger.new;
for(opportunity op:ops){
  if(op.amount<2000 &&  (trigger.isinsert || trigger.isupdate)){
  op.adderror('amount cannot be less than 2000');
  }
}
}
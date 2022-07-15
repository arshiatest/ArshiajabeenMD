trigger task2 on Contact (before insert) {
    for(contact c:trigger.new){
        if(c.AccountId==null){
           c.adderror('cannot insert contact with out account'); 
        }
    }
}
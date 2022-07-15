trigger acctrig3 on Account (after insert) {
    list<opportunity> opty = new list<opportunity>();
    for(account a:trigger.new){
        if(a.Rating=='hot'){
        opportunity op= new opportunity();
        op.accountid= a.id;
        op.Name = a.name;
        op.CloseDate= date.newInstance(2018, 12, 20);
        op.StageName='prospecting';    
        opty.add(op);
        }
    }
    insert opty;
}
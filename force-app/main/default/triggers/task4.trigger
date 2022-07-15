trigger task4 on Account (before insert) {
    list<opportunity> opps= new list<opportunity>();
    for(account a:trigger.new){
        if(a.Industry=='energy' && a.Type=='prospect'){
          opportunity op= new opportunity();
            op.name=a.name;
            op.Amount=40000;
            op.closedate=system.today();
            op.StageName='closedwon';
            opps.add(op);
        }
    }
    insert opps;
}
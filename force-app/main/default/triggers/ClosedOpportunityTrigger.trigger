trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
    
   list<task> tasks = new list<task>();
    for(opportunity opp:trigger.new){
        if(opp.StageName=='closed won'){
            task t1= new task();
            t1.Subject='Follow Up Test Task';
            t1.WhatId=opp.Id;
            t1.Status='active';
            t1.ActivityDate= system.today()+20;
            tasks.add(t1);
        }
    }
    insert tasks;
    }
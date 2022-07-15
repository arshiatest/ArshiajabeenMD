trigger task10 on Account (before insert) {
    
    for(account a:trigger.new){
        list<account> acts1=[select id from account where name=:a.name];
        if(acts1.size()>0){
            a.adderror('duplicate error exists');
        }
            
        }
    }
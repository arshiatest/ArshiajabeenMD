trigger task1 on Account (before insert) {
    for(account a:trigger.new){
        if(a.industry=='banking'){
           a.annualrevenue=50000; 
        }
    }
}
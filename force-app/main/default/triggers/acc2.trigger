trigger acc2 on Account (before insert) {
    user u = [select id from user where alias='pkatz'];
    for(account a:trigger.new){
        if(a.Industry=='banking'){
            a.OwnerId=u.id;
        }
    }
}
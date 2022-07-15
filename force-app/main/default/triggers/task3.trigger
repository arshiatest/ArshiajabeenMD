trigger task3 on Account (before insert) {
    user u=[select id from user where alias='pkatz'];
    for(account a:trigger.new){
        if(a.industry=='banking'){
          a.ownerid=u.id;
        }   
    }
}
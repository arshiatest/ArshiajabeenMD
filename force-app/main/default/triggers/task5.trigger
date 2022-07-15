trigger task5 on Account (after insert) {
    list<accountteammember> atms= new list<accountteammember>();
    user u=[select id from user where alias='pkatz'];
    for(account a:trigger.new){
        if(a.industry=='banking' && a.annualrevenue>500000){
        accountteammember atm= new accountteammember();
         atm.AccountId=a.Id;
        atm.AccountAccessLevel='read';
        atm.UserId=u.id;
        atms.add(atm);
        }
    }
    insert atms;
}
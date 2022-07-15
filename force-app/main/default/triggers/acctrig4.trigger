trigger acctrig4 on Account (after insert) {
 user u= [select id from user where alias='pkatz'];
    list<accountteammember> teams = new list<accountteammember>();
    for(account a:trigger.new){
        if(a.Ownership=='private'){
        accountteammember atm = new accountteammember();
        atm.accountid=a.id;
        atm.userid = u.id;
        atm.accountaccesslevel='read';
        atm.teammemberrole= 'accountmanager';
        teams.add(atm);
       }
    }
    insert teams;
}
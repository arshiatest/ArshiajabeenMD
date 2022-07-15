trigger opptrig2 on Opportunity (after update) {
user u = [select id from user where alias='ttrai'];
    list<opportunityteammember> teams = new list<opportunityteammember>();
     map<id,opportunity> oldmap= trigger.oldmap;
    map<id,opportunity> newmap= trigger.newmap;
    set<id> keys = oldmap.keySet();
    for(id k:keys){
       opportunity opp1= oldmap.get(k);
        opportunity opp2=newmap.get(k);
        if(opp1.StageName!='closedwon' && opp2.StageName=='closedwon'){
            opportunityteammember otm = new opportunityteammember();
            otm.opportunityid=k;
            otm.userid=u.id;
            otm.opportunityaccesslevel='read';
            otm.teammemberrole='account manager';
            teams.add(otm);
        }
    }
    insert teams;
}
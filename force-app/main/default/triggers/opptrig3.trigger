trigger opptrig3 on Opportunity (after update) {
    user u = [select id from user where alias='pkatz'];
 list<opportunityshare> share = new list<opportunityshare>();
     map<id,opportunity> oldmap= trigger.oldmap;
    map<id,opportunity> newmap= trigger.newmap;
    set<id> keys = oldmap.keySet();
    for(id k:keys){
       opportunity opp1= oldmap.get(k);
        opportunity opp2=newmap.get(k);
        if(opp1.StageName!='closedwon' && opp2.StageName=='closedwon'){
            opportunityshare os = new opportunityshare();
            os.OpportunityId =k;
            os.OpportunityAccessLevel='read';
            os.RowCause ='manual';
            os.UserOrGroupId =u.id;
            share.add(os);
}
    }
    insert share;
}
trigger acctrig5 on Account (before update) {

    list<id> accids = new list<id>();
    map<id,account> oldmap= trigger.oldmap;
    map<id,account> newmap= trigger.newmap;
      set<id> keys= oldmap.keySet();
    for(id k:keys){
        account acc1=oldmap.get(k);
        account acc2= newmap.get(k);
        if(acc1.Phone != acc2.Phone){
           accids.add(k);
        }
    }
    list<contact> cons =[select id,accountid from contact where accountid in:accids];
    for(contact c: cons){
        account acc1= oldmap.get(c.accountid);
        account acc2 = newmap.get(c.AccountId);
        c.OtherPhone = acc1.Phone;
        c.MobilePhone = acc2.phone;
    }
    update cons;
}
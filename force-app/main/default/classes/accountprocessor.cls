public class accountprocessor {
@future
    public static void countContacts(list<id> accids){
        map<id,integer> ac_connum = new map<id,integer>();
        list<account> acctlist_all = new list<account>([select id,(select id from contacts) from account]);
        for(account acc:acctlist_all){
            ac_connum.put(acc.id,acc.contacts.size());
        }
    list<account> acclist = new list<account>();
        for(id accid: accids){
            if(ac_connum.containskey(accid)){
                account acc =  new account();
                acc.Id = accid;
                acc.Number_of_Contacts__c = ac_connum.get(accid);
                acclist.add(acc);
            }
        }
        upsert acclist;
    
}
}
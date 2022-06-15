public class ContactSearch {

    public static list<contact> searchForContacts(string s1, string s2){
       list<contact> conslist=[select id,firstname,lastname from contact where (lastname=:s1 and mailingpostalcode=:s2)];
        return conslist;
    }
}
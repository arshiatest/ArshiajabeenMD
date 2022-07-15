public class ContactAndLeadSearch {

    public static list<list<sobject>> searchContactsAndLeads(string s){
        list<list<sobject>> searchRes= [find 'smith' in name fields returning contact(lastname),lead(lastname) ];
    
    return searchres;
        }
}
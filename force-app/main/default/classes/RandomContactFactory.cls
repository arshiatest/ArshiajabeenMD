public class RandomContactFactory {

    public static list<contact> generateRandomContacts(integer n, string s){
        list<contact> cons= new list<contact>();
        for(integer i=0;i<n; i++){
            contact c= new contact(firstname='test'+i,lastname=s);
            cons.add(c);
        }
        return cons;
    }
}
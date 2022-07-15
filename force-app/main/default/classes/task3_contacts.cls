public class task3_contacts {
    public contact[] cons{set;get;}
    public task3_contacts(){
        cons= new contact[3];
        contact c1= new contact(firstname='arshia', lastname='jabeen',phone='1234');
        contact c2= new contact(firstname='munazza', lastname='zartab',phone='2345');
        contact c3= new contact(firstname='junaid', lastname='rahaman',phone='4567');
        cons.add(c1);
         cons.add(c2);
         cons.add(c3);
    }
}
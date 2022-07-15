public class task4_contacts {
    public list<contact> cons{set;get;}
    public task4_contacts(){
        cons= new list<contact>();
        contact c1= new contact(firstname='arshia',lastname='jabeen',phone='1234');
        contact c2= new contact(firstname='shaheda',lastname='begum',phone='4321');
        contact c3= new contact(firstname='mahaboob',lastname='jani',phone='1111');
        cons.add(c1);
            cons.add(c2);
            cons.add(c3);
    }
}
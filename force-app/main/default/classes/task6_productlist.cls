public class task6_productlist {
    public list<task6_productwrap> productlist {set;get;}
    public list<task6_productwrap> newlist {set;get;}
    public task6_productlist(){
          productlist = new list<task6_productwrap>();
        task6_productwrap pw= new task6_productwrap();
        pw.prname = 'apple';
        pw.price =60000;
        pw.quantity = 1;
        productlist.add(pw);
        task6_productwrap pw1= new task6_productwrap();
        pw1.prname = 'vivo';
        pw1.price =20000;
        pw1.quantity = 1;
        productlist.add(pw1);
        task6_productwrap pw2= new task6_productwrap();
        pw2.prname = 'leeco';
        pw2.price =10000;
        pw2.quantity = 1;
        productlist.add(pw2);
        
         task6_productwrap pw3= new task6_productwrap();
         newlist = new list<task6_productwrap>();
        decimal value=0;
        for(task6_productwrap p:productlist){
            if(p.price>value){
                value=p.price;
                pw3.prname= p.prname;
                pw3.price = p.price;
                pw3.quantity = p.quantity;
            }
        }
        newlist.add(pw3);
    }
}
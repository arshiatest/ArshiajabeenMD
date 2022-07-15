public class dml3 {
    public account acc{set;get;}
    public list<contact> cons{set;get;}
    public dml3(){
        acc= new account();
        cons= new list<contact>();
        add();
    }
    public void add(){
        contact c= new contact();
        cons.add(c);
    }

    public pagereference save(){
        insert acc;
        for(contact c1:cons){
            c1.AccountId= acc.id;
        }
        insert cons;
        pagereference p = new pagereference('/'+acc.id);
        return p;
    }
    public pagereference cancel(){
        acc= new account();
        cons= new list<contact>();
        return null;
    }
}
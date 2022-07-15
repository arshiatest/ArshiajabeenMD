public class picklist_exe{
    public string selected{set;get;}
    public list<selectoption> options{set;get;}
    public picklist_exe(){
        options= new list<selectoption>();
        selectoption s1= new selectoption('NONE','none');
           selectoption s2= new selectoption('TN','chen');
           selectoption s3= new selectoption('TG','hyd');
           selectoption s4= new selectoption('KA','bang');
        options.add(s1);
        options.add(s2);
        options.add(s3);
        options.add(s4);
    }
    
}
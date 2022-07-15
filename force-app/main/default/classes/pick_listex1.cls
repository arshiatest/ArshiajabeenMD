public class pick_listex1 {
    public string selected{set;get;}
    public list<selectoption> options{set;get;}
    public pick_listex1(){
        options= new list<selectoption>();
        selectoption s4= new selectoption('none','none');
        selectoption s1= new selectoption('hyd','tg');
         selectoption s2= new selectoption('chenn','tn');
         selectoption s3= new selectoption('bang','ka');
        options.add(s4);
        options.add(s1);
        options.add(s2);
        options.add(s3);
    }
   
}
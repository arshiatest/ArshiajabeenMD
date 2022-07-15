public class dynamic {
    public string selected1{set;get;}
    public string selected2{set;get;}
    public list<wrap> wraplist{set;get;}
    public string query1 {set;get;}
    public void formquery(){
        query1 = 'select id,name,industry,type,rating from account';
        if(selected1!='' && selected2!=''){
            query1= query1+'where name =\''+selected1+'\' and industry =\''+selected2+'\'';
        }
        else{
            if(selected1!=''){
         query1 =query1+' where name=\''+selected1+'\' ';
        }
            else if(selected2 !=''){
            query1= query1+ 'where industry=\' '+selected2+'\'';
        }
            }
            
        list<account> accounts =new list<account>();
        accounts=database.query(query1);
        wraplist= new list<wrap>();
        for(account a:accounts){
            wrap w= new wrap();
            w.acc=a;
            w.flag= false;
            wraplist.add(w);
        }
    }
    
    
}
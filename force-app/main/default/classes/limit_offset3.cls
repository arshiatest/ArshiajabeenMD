public class limit_offset3 {
    public list<string> values{set;get;}
    public list<selectoption> options{set;get;}
    public string selected{set;get;}
    public list<account> acts{set;get;}
      public list<account> accounts{set;get;}
    public integer count{set;get;}
    public limit_offset3(){
        accounts= new list<account>();
        options= new list<selectoption>();
        values= new list<string> {'none','cold','warm','hot'};
            for(string s: values){
               selectoption so= new selectoption(s,s);
                options.add(so);
            }
                  acts= [select id,name, type,rating from account ];
           
    }
    public void show(){
        if(selected=='none'){
            selected='';
        }
        for(string selected:values){
             count= [select count() from account where rating =:selected];
            for(integer i=0;i<count; i=i+5){
         accounts=[select id,name,type,rating from account where rating=:selected limit 5 offset:i];
            }
        }
    }
}
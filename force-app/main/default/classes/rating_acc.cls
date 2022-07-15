public class rating_acc {
    public list<selectoption> rating{set;get;}
    public list<account> acts {set;get;}
    public string selected{set;get;}
    
    public rating_acc(){
        rating= new list<selectoption>();
        list<string> values= new list<string>{'none','hot','cold','warm'};
            for(string s:values){
                selectoption so = new selectoption(s,s);
                rating.add(so);
            }
        acts= [select id,name,rating from account ];
    }
    public void show(){
        if(selected=='none'){
            selected='';
        }
        acts=[select id,name,rating,type from account where rating=:selected];
    }
}
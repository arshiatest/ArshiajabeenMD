public class limit_offset2 {
    public list<account> acts {set;get;}
    public string selected {set;get;}
    public list<selectoption> options{set;get;}
    public limit_offset2(){
        options= new list<selectoption>();
        list<string> values= new list<string>{'--none--','hot','cold','warm'};
            for(string s:values){
                selectoption so=new selectoption(s,s);
                options.add(so);
            }
        //selectoption so= new selectoption('none','none');
         //options.add(so);
        
          //acts= [select id,name, type,rating from account ];
    }
    public void show(){
        if(selected=='--none--') {
          selected='';
        } 
         acts= [select id,name, type,rating from account where rating=:selected limit 10 ];
    }
}
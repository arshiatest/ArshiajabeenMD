public class one {

    public string selected{set;get;}
    public list<selectoption> options{set;get;}
    public one(){
        options= new list<selectoption>();
        list<string> cities= new list<string>{'none','hyd','chen','bang'}; 
            for(string s:cities){
                selectoption so= new selectoption(s,s);
                options.add(so);
            }
    }
   
}
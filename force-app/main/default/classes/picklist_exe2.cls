public class picklist_exe2 {
   public list<selectoption> options {set;get;}
    public string selected{set;get;}
    public picklist_exe2(){
        options= new list<selectoption>();
        list<string> cities= new list<string>{'none','hyd','chen','bang'};
            for(string s:cities){
               selectoption so= new selectoption(s,s);
                options.add(so);
            }
    }
}
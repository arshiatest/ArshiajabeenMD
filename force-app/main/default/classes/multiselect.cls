public class multiselect {
    public list<selectoption> leftside {set;get;}
    public list<selectoption> rightside{set;get;}
    public set<string> selected {set;get;}
    public set<string> nonselected {set;get;}
    public list<string> addfields {set;get;}
    public list<string> delfields {set;get;}
    
    public multiselect(){
        leftside= new list<selectoption>();
        rightside= new list<selectoption>();
        selected = new set<string>();
        nonselected = new set<string>();
        addfields = new list<string>();
        delfields = new list<string>();
        list<string> values = new list<string> {'name','industry','phone','type','rating'};
            nonselected.addAll(values);
        selectoption n= new selectoption('none','none');
        leftside.add(n);
        rightside.add(n); 
        getoptions();
         }
    public void getoptions(){
        leftside.clear();
        rightside.clear();
        selectoption p = new selectoption('none','none');
        if(nonselected.size()>0){
            for(string s:nonselected){
                selectoption op = new selectoption(s,s);
                leftside.add(op);
            }
        }else{
            leftside.add(p);}
        if(selected.size()>0){
            for(string s:selected){
                selectoption sp= new selectoption(s,s);
                rightside.add(sp);
            }
        }
            else{
                rightside.add(p);}
            }
    public void addele(){
       nonselected.removeall(addfields);
        selected.addall(addfields);
        getoptions();
    }
    public void delele(){
        selected.removeall(delfields);
        nonselected.addall(delfields);
        getoptions();
    }
        }
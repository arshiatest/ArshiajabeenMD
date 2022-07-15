public class depend_picklist {
    public list<selectoption> cities {set;get;}
    public list<selectoption> places {set;get;}
    public string selected{set;get;}
    public map<string,string> citymap{set;get;}
    
    public depend_picklist(){
        cities= new list<selectoption>();
        places= new list<selectoption>();
        citymap= new map<string,string>();
        list<string> values= new list<string>{'none','hyd','chenn','bang'};
            for(string s: values){
                selectoption so = new selectoption(s,s);
                cities.add(so);
            }
        citymap= new map<string,string>();
        citymap.put('none', 'none');
        citymap.put('hyd','tg');
        citymap.put('chenn','tn');
        citymap.put('bang','ka');
       selectoption op = new selectoption('none','none');
        cities.add(op);
        places.add(op);
        
    }
    public void show(){
        places.clear();
           string p= citymap.get(selected);
            selectoption so= new selectoption(p,p);
            places.add(so);
        }
        
    }
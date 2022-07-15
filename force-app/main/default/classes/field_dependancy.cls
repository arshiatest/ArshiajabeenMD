public class field_dependancy {
    public string selected{set;get;}
    public list<selectoption> cities{set;get;}
    public list<selectoption> places{set;get;}
    public map<string,list<string>> citymap {set;get;}
    public field_dependancy(){
        cities= new list<selectoption>();
        places= new list<selectoption>();
        citymap= new map<string,list<string>>();
        list<string> hplaces= new list<string>{'lbngr','srngr','dsnr'};
         list<string> bplaces=new list<string>{'electri','crompet'};
               list<string> cplaces= new list<string>{'tambaram','navalur'};
                   selectoption so= new selectoption('none','none');
        cities.add(so);
        places.add(so);
          citymap.put('hyd', hplaces);
        citymap.put('bang',bplaces);
        citymap.put('chenn',cplaces);
         set<string> values= citymap.keySet();
            for(string s:values){
                selectoption k= new selectoption(s,s);
                cities.add(k);
            }
    }
    public void show(){
        places.clear();
         selectoption so= new selectoption('none','none');
        places.add(so);
        if(selected != 'none'){
           list<string> values= citymap.get(selected);
            for(string s:values){
            selectoption op= new selectoption(s,s);
            places.add(op);
        }
        }
            
    }
   
}
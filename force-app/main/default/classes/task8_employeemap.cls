public class task8_employeemap {
    public task8_employee tsnew{set;get;}
    public map<integer,task8_employee> empmap{set;get;}
    
    public task8_employeemap(){
        tsnew= new task8_employee();
        empmap= new map<integer,task8_employee>();
    }
    public void create(){
        task8_employee ts= new task8_employee();
        ts= tsnew.clone();
          empmap.put(ts.emp_no,ts); 
    }
  }
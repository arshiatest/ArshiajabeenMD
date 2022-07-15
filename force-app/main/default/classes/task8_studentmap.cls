public class task8_studentmap {
    public string name{set;get;}
    public string phone{set;get;}
    public map<string,string> studentmap{set;get;}
    public map<string,string> studentmap1{set;get;}
    public task8_studentmap(){
        studentmap= new map<string,string>();
          studentmap1= new map<string,string>();
    }
    public void create(){
        task8_student ts= new task8_student();
        ts.name=name;
        ts.phone=phone;
        studentmap.put(ts.name, ts.phone);
    }
}
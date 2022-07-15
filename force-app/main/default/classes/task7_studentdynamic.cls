public class task7_studentdynamic {
    public set<task7_student> studentset{set;get;}
    public set<task7_student> studentset1{set;get;}
    public string name{set;get;}
    public integer age{set;get;}
    public string branch{set;get;}
    public date doj{set;get;}
    
    public task7_studentdynamic(){
        studentset= new set<task7_student>();
        studentset1 = new set<task7_student>();
    }
    
    public void create(){
        task7_student ts= new task7_student();
        ts.name=name;
        ts.age= age;
        ts.branch= branch;
        ts.doj= doj;
        studentset.add(ts);
    }
    public void show(){
       studentset1.addAll(studentset);
        
    }
}
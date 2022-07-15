public class student_set {
    public set<student> std{get; set;}
    public string name {set;get;}
    public string branch {set;get;}
    public string city {set; get;}
    public Integer age {set;get;} 
    public set<student> std1{get;set;}
    public student_set(){
        std=new set<student>();
        std1=new set<student>();
    }
    public void create(){
        student st=new student();
        st.name=name;
        st.branch=branch;
        st.age=age;
        st.city=city;
        std.add(st);
    }
    public void show(){
        std1.addAll(std);
        
    }
}
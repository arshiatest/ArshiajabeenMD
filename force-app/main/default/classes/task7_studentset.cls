public class task7_studentset {
    public set<task7_student> studentset{set;get;}
    public task7_studentset(){
        studentset = new set<task7_student>();
        task7_student ts= new task7_student();
        ts.name='arshia';
        ts.age=25;
        ts.branch= 'eee';
        ts.doj= date.newInstance(2009, 10,10);
        task7_student ts1= new task7_student();
        ts1.name='shannu';
        ts1.age=25;
        ts1.branch= 'eee';
        ts1.doj= date.newInstance(20010, 10,10);
        studentset.add(ts);
        studentset.add(ts1);
        
    }
}
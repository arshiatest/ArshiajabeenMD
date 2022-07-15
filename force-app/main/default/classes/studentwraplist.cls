public class studentwraplist {
    public list<studentwrap> wraplist{set;get;}
    public studentwraplist(){
        wraplist= new list<studentwrap>();
        studentwrap sw= new studentwrap();
        sw.name='arshia';
        sw.age=25;
        sw.dob= date.newInstance(1992, 10, 10);
        wraplist.add(sw);
           studentwrap sw1= new studentwrap();
        sw1.name='shannu';
        sw1.age=26;
        sw1.dob= date.newInstance(1991, 10, 10);
        wraplist.add(sw1);
    }
}
public class task6_employeelist {
    public list<task6_employeewrap> emplist{set;get;}
    public task6_employeelist(){
        emplist = new list<task6_employeewrap>();
        task6_employeewrap el= new task6_employeewrap();
        el.empname='arshia';
        el.salary= 40000;
        el.exp=3;
        emplist.add(el);
        task6_employeewrap el1= new task6_employeewrap();
        el1.empname='shannu';
        el1.salary= 50000;
        el1.exp=4;
        emplist.add(el1);
    }
}
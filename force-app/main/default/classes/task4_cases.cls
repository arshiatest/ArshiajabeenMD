public class task4_cases {
    public list<case> cases{set;get;}
    public task4_cases(){
        cases= new list<case>();
        case c1= new case(subject='problem',status='new',priority='high');
           case c2= new case(subject='labelprblm',status='escalated',priority='medium');
           case c3= new case(subject='problem',status='working',priority='low');
        cases.add(c1);
        cases.add(c2);
        cases.add(c3);
    }
}
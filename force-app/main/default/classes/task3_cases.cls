public class task3_cases {
    public case[] cases{set;get;}
    public task3_cases(){
        cases= new case[3];
        case c1= new case(status='new',subject='defect piece',priority='high',origin='web');
           case c2= new case(status='working',subject='low quality',priority='medium',origin='phone');
           case c3= new case(status='escalated',subject='less quantity',priority='low',origin='email');
        cases.add(c1);
        cases.add(c2);
        cases.add(c3);
    }
}
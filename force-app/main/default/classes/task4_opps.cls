public class task4_opps {
    public list<opportunity> opps{set;get;}
    public task4_opps(){
        opps= new list<opportunity>();
        opportunity op1= new opportunity(name='opp1',amount=50000,stagename='closedwon');
          opportunity op2= new opportunity(name='opp2',amount=60000,stagename='lost');
          opportunity op3= new opportunity(name='opp3',amount=70000,stagename='open');
        opps.add(op1);
           opps.add(op2);
           opps.add(op3);
    }
}
public class oppconvert {
    public list<opportunity> opps{set;get;}
    public oppconvert(apexpages.StandardSetController con){
        list<string> fields= new list<string>{'amount','stagename','closedate'};
            con.addFields(fields);
        opps=(list<opportunity>)con.getSelected();
    }
    public pagereference convertopp(){
        for(opportunity op:opps){
            op.stagename='closedwon';
            op.closedate=system.today();
            update op;
        }
        //update opps;
        pagereference p= new pagereference('/006');
        return p;
    }
    
}
public class cont_del {
    public list<contact> cons{set;get;}
    public cont_del(apexpages.StandardSetController controller){
         list<string> fields=new list<string>{'id','firstname','lastname','phone','email'};
        controller.addFields(fields);
        cons= (list<contact>)controller.getSelected();
    }
    public pagereference del_contacts(){
        delete cons;
         pagereference p = new pagereference('/003');
        return p;
    }
}
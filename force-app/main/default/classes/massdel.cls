public class massdel {
    public list<lead> leads{set;get;}
    public massdel(apexpages.StandardSetController controller){
        list<string> fields = new list<string> {'lastname','firstname','phone','leadsource'};
            controller.addFields(fields);
            leads=(list<lead>)controller.getSelected();
    }
    public pagereference delrecords(){
        delete leads;
        pagereference p = new pagereference('/00Q');
        return p;
    }
}
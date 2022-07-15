public class DailyLeadProcessor implements schedulable {

    public void execute(schedulablecontext sc){
        list<lead> l_list = new list<lead>([select id, lastname,leadsource from lead where leadsource=	null]);
        for(lead l:l_list){
            l.leadsource = 'dreamforce';
        }
        update l_list;
    }
}
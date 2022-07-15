public class pagenation_cont {
    public apexpages.StandardSetController controller{set;get;}
    public integer pagenumber{set;get;}
    public integer total{set;get;}
      public list<opportunity> getopty(){
        list<opportunity> opty =(list<opportunity>)controller.getRecords();
        return opty;
    }
    public pagenation_cont(){
        list<opportunity> opps= [select id,stagename,amount from opportunity];
        controller= new apexpages.StandardSetController(opps);
        controller.setpagesize(5);
        total = controller.getresultsize();
        pagenumber=(integer)math.ceil(total/5);
    }
  
}
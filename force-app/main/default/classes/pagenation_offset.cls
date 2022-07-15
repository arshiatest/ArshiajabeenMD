public class pagenation_offset {
    public list<opportunity> opps{set;get;}
    public integer count{set;get;}
    public integer size{set;get;}
    public pagenation_offset(){
        count=0;
        opps=[select id,amount,stagename from opportunity limit 5 offset:count];
        size =[select count() from opportunity];
    }
    public void next(){
        count=count+5;
       opps=[select id,amount,stagename from opportunity limit 5 offset:count];
    }
    public void previous(){
        count=count-5;
        opps=[select id,amount,stagename from opportunity limit 5 offset:count];
    }
}
public class soql2 {
   // public list<account> acts {set;get;}
    public list<wrap> wraplist {set;get;}
    
    public soql2(){
        wraplist= new list<wrap>();
         list<account> acts= [select id,name,rating,industry from account];
        for(account a:acts){
           wrap w= new wrap(); 
            w.acc=a;
            w.flag= false;
            wraplist.add(w);
        }
    }
}
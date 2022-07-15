public class limi_offse {
    public list<account> acts{set;get;}
    public string selected{set;get;}
    public void show(){
        
          
        acts =[select id,Name,type,rating from Account where rating=:selected order by Name limit 10];
   }
    }
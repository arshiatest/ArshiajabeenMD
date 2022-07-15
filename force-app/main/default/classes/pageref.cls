public class pageref {
        public string name{set;get;}
        public integer age{set;get;}
        public decimal income{set;get;}
        public string course{set;get;}
      public  pagereference p {set;get;}
    public pagereference save(){
       p =new pagereference('/apex/p2');
        return p;
    }
    public pagereference edit(){
        p=new pagereference('/apex/p1');
        return p;
    }
}
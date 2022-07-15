public class intrest_example {
    public decimal amount{set;get;}
    public decimal years{set;get;}
    public decimal rate{set;get;}
    public decimal intrest{set;get;}
    
    public intrest_example(){
        amount=10;
        years=2;
        rate=5;
    }
    public void calculate(){
        intrest=(amount*years*rate)/100;
    }
    public void reset(){
        amount=null;
        years=null;
        rate=null;
        intrest=null;
    }
}
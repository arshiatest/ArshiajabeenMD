public class add_example {
    public decimal aval{set;get;}
    public decimal bval{set;get;}
    public decimal cval{set;get;}
    public string value= '34567892';
    
    public void add(){
        cval=aval+bval;
    }

    public void newvalue(){
       if(value.length() > 3){
      Decimal d = Decimal.valueOf(!String.isEmpty(value) ? value: '0');
      d = d.setScale(8, RoundingMode.HALF_EVEN);
       }
    
    }
    public void reset(){
        aval=null;
        bval=null;
        cval=null;
    }
}
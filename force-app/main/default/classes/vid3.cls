public class vid3 {
    public integer aval{set;get;}
    public integer bval{set;get;}
    public integer result{set;get;}
    public void add(){
        result=aval+bval;
    }
    public void mul(){
        result = aval*bval;
    }
    public void cancel(){
        aval= null;
        bval= null;
        result= null;
    }
}
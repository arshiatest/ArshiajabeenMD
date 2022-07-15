public class vid1 {
    public string val1{set;get;}
    public string val2 {set;get;}
    public string[] options1{set;get;}
    public string[] options2{set;get;}
    public vid1(){
        options1 = new string[4];
        options2= new string[4];
    }
    public void submit(){
        
    }
    public void reset(){
        val1=null;
        val2=null;
        options1=null;
        options2=null;
    }
    
}
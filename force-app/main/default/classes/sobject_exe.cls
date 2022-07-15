public class sobject_exe {
    public account acc{set;get;}
    public contact con{set;get;}
    public opportunity opp{set;get;}
    public sobject_exe(){
        acc=new account();
        con= new contact();
        opp=new opportunity();
        }
}
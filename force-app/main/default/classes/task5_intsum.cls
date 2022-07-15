public class task5_intsum {
    public integer sum{set;get;}
    public task5_intsum(){
        list<integer> ints= new list<integer>{12,14,16,18};
            sum=0;
            for(integer i:ints){
                sum= sum+i;
            }
    }
}
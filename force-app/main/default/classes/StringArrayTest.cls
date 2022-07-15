public class StringArrayTest {
   // public list<string> values ;
    public StringArrayTest(){
       //values = new list<string>();
    }
    public static list<string> generateStringArray (integer n){
        list<string> values;
      values = new list<string>();        
        for(integer i=0; i<n; i++){
            values.add('test'+i);
          
            }
        system.debug('***'+values);
         return values;
         
    }
}
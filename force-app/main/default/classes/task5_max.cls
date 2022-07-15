public class task5_max {
    public list<integer> ints{set;get;}
    public integer max {set;get;}
    public task5_max(){
        ints= new list<integer>{80,20,30,50,40};
            max=0;
        integer i,j;
        for(i=0 ; i<5;i++){
            for(j=0 ; j<5;j++){
                if(ints[i]>ints[j] && ints[i]>max){
                    max=ints[i];
                }
                else
                    if(ints[i]<ints[j] && ints[j]>max){
                    max=ints[j];
                }
            }
                }  
            }
            }
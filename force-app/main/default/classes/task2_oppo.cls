public class task2_oppo {
    public opportunity opp{set;get;}
    public task2_oppo(){
        opp= new opportunity();
        opp.name='sana';
        opp.amount= 2000;
        opp.StageName = 'prospecting';
        opp.CloseDate = date.newInstance(2018, 9, 8);
    }
}
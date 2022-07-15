public class task1_movie {
    public string moviename{set;get;}
    public integer ticketsavailable{set;get;}
    public time tnow{set;get;}
    public task1_movie(){
        moviename='devil';
        ticketsavailable = 5;
        tnow = time.newInstance(15, 30, 30, 300);
    }
}
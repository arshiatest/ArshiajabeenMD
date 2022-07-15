public class child_class extends parent_class {
     public string place='lbnagar';
    public integer score=50;
    public override void show(){
       system.debug('name is:'+name); 
        system.debug('city is:'+city);
        system.debug('place is:'+place);
        system.debug('score is:'+score);
    }
    public child_class(){
     system.debug('hii..this is child class');
        
        
    }
    
}
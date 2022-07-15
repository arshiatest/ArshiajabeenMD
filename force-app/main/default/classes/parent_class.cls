global virtual class parent_class {
    public string name;
        protected string city;
        public decimal salary;
    global parent_class(){
        name='arshia';
        city='hyd';
        salary=20000;
        system.debug('this is parent constructor');
        }
   public virtual void show(){
       system.debug('name is:'+name); 
        system.debug('city is:'+city);
        system.debug('salary is:'+salary);
    } 
}
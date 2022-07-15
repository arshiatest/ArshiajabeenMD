public class contactsavearshia {

public list<contact> listcon{set;get;}
    public list<contact> searchcontact() {
    listcon= new list<contact>();
    
    String qry = 'select id,firstname from contact where firstname like \'%'+searchText+'\' Order By Name';
    listcon= database.query(qry);
        return listcon;
    }


    public String Searchtext {set;get;}
       /* get{
        if(searchtext == null){
         searchtext = '';
         
         }
         return searchtext;
        } 
        set;*/
    //}


   public contact con { get; set; }
   
    public list<contact> getListcont() {
     list<contact> listcont = [select id, firstname,lastname,email from contact order by createddate desc limit 5 ];
       return listcont;
   } 

    public PageReference cancel() {
        PageReference pr = new PageReference('https://mystory-dev-ed--c.ap4.visual.force.com/apex/savecontact');
        return pr;
    }


    public contactsavearshia(){
      con = new contact();
    }
    
    public PageReference save(){
     insert con;
     PageReference pr = new PageReference('https://mystory-dev-ed--c.ap4.visual.force.com/apex/savecontact');
       return pr;
    }
   
    
}
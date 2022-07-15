public with sharing class contactController{

public contact c {get;set;}

public list<contact> listcon {get;set;}

public contactController(){
  c= new contact();
}
public pageReference save(){
 insert c;
 listcon = [select id,FirstName,LastName,Email,Birthdate from Contact where id=:c.id];

  return null;

}

}
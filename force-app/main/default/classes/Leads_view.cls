Public class Leads_view{

@AuraEnabled
  public static list<lead> leadData(){
  
    list<lead> leadlist1 = [select id,Name,Firstname,Lastname,Model__c,Type__c,Status__c,Source__c,Prospect__r.Name,
             Outcome__c,Consultant__r.Name,Assigned_To_Dealership__c from lead order by createddate desc limit 10 ];
            
     
  sendmail();      
           return leadlist1;
      
    
  
  }
    
    public static pagereference sendmail(){
         ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.info, 'Mail Sent');
        ApexPages.addMessage(myMsg); 
        
        
        // Reference the attachment page and pass in the ID
        PageReference pdf = Page.NISSANTEMPLATE;
     
      // pdf.getParameters().put('id',conval<b>.Id</b>);


        // Take the PDF content
        Blob b = pdf.getContentAsPDF();
        // Create the email attachment
        Messaging.EmailFileAttachment efa = new Messaging.EmailFileAttachment();
        efa.setContentType('application/pdf');
        efa.setFileName('attachment.pdf');
        efa.setInline(false);
        efa.setBody(b);
        
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {'srikanthgs.249@gmail.com'};
        mail.setToAddresses(toAddresses);
        mail.setSubject('New form is created'); 
        
        mail.plainTextBody = 'Hello Team, Please find the attached PDF';
        
        mail.setFileAttachments(new Messaging.EmailFileAttachment[] {efa});
        Messaging.SendEmail(new Messaging.SingleEmailMessage[] {mail});
        return null;
    }

}
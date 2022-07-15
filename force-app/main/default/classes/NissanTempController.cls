public class NissanTempController {
    public light__c li{set;get;}
     public list<light__c> FAlist{set;get;}
public NissanTempController() {
       FAlist = [select id, name , Age__c, Email__C from light__c limit 5];
    
       
    
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
        efa.setFileName('NISSAN.pdf');
        efa.setInline(false);
        efa.setBody(b);
        
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {'arshiajabeen1111@gmail.com'};
        mail.setToAddresses(toAddresses);
        mail.setSubject('New Attachement is created'); 
        
        mail.plainTextBody = 'Hello Team, Please find the attached PDF';
        
        mail.setFileAttachments(new Messaging.EmailFileAttachment[] {efa});
        Messaging.SendEmail(new Messaging.SingleEmailMessage[] {mail});
        return null;
    }
}
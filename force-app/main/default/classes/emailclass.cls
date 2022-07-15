public  class emailclass {
 
	
	public static pagereference sendAttach(string s) {
		Messaging.SingleEmailMessage semail = new Messaging.SingleEmailMessage();
		Messaging.EmailFileAttachment attach = new Messaging.EmailFileAttachment();
		PageReference pref = page.NISSANTEMPLATE;
		pref.getParameters().put('id',s);
		pref.setRedirect(true);
		Blob b = pref.getContent();
		attach.setFileName('BookDetails.pdf');
		attach.setBody(b);
		semail.setSubject('Book details');
		String[] sendTo = new String[]{'srikanthgs.249@gmail.com'};
		semail.setToAddresses(sendTo);
		semail.setPlainTextBody('Please find the attached book details');
		semail.setFileAttachments(new Messaging.EmailFileAttachment[]{attach});
		Messaging.sendEmail(new Messaging.SingleEmailMessage[]{semail});
		return null;
	}
}
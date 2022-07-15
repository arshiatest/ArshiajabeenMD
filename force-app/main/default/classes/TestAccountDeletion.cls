@isTest
private class TestAccountDeletion {
@isTest
    static void TestDeleteAccountWithOneOpportunity(){
        account a1= new account(name='testacc');
        insert a1;
        opportunity opp = new opportunity();
        opp.Name= 'accopp';
        opp.AccountId= a1.id;
        opp.StageName='closed won';
        opp.CloseDate = date.today()+10;
        insert opp;
        
        Database.deleteresult Result = Database.delete(a1,false);
         system.assert(!result.isSuccess());
        system.assert(result.getErrors().size()> 0);
        system.assertEquals('Cannot delete account with related opportunities.',result.getErrors()[0].getmessage());
    }
}
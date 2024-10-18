@isTest
public class Trigger2Test {
    @testSetup
    static void setup() {
        Account testAccount = new Account(Name='Test Account Two', Status__c = 'New', phone = '41301234567');
        insert testAccount;

        Contact testContact = new Contact(LastName='Test User', MailingState = 'MA', AccountId = testAccount.Id);
        insert testContact;
    }

    @isTest
    static void testTrigger1() {

        Account testAccount = [Select Id FROM Account WHERE phone = '41301234567'];
        testAccount.Status__c = 'Removed';

        update testAccount;
    }
}
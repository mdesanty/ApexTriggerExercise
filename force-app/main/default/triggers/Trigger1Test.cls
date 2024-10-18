@isTest
public class Trigger1Test {
    @isTest
    static void testTrigger1() {

        Account testAccountTwo = new Account(Name='Test Account Two', Status__c = 'New', phone = '41301234567');
        insert testAccountTwo;
    }
}
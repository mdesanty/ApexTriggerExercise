@isTest
public class Trigger1Test {

    private static string phoneNumber1 = '41301234567';
    private static string phoneNumber2 = '41304444555';

    @TestSetup
    static void testSetup() {
      Account testAccountOne = new Account(Name='Test Account One', phone = phoneNumber1);
      insert testAccountOne;
    }

    @isTest
    static void testTrigger1() {

        Account testAccountTwo = new Account(Name='Test Account Two', phone = phoneNumber2);
        insert testAccountTwo;

        testAccountTwo.phone = phoneNumber1;
        Update testAccountTwo;
    }
}
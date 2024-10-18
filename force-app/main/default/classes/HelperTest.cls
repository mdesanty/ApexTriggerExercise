@isTest
public class HelperTest {
    @isTest
    static void formatDescription() {

        String description = 'This is a test';
        String formattedDescription = Helper.formatDescription(description);

        String todaysDate = DateTime.now().format('MM.dd.yyyy');
        Assert.isTrue(formattedDescription.contains(todaysDate));
    }
}

public class Helper {
    public static String formatDescription(String description) {

        String todaysDate =  DateTime.now().format('MM.dd.yyyy');

        return '*** ARCHIVED ****' + todaysDate + ' ' + description;
    }
}
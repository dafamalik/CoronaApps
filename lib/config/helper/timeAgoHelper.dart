import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

class TimeAgo{
  static String timeAgoSinceDate(String dateString, {bool numericDates = true}) {

    timeago.setLocaleMessages('id', timeago.IdMessages());

    var locale = 'id';

    DateTime newsDate = DateFormat('EEE, dd MMM yyyy HH:mm:ss zzz', "id_ID").parse(dateString);

    var fixedDate = DateFormat("yyyy-MM-dd hh:mm").format(newsDate);
    final now = new DateTime.now();

    final difference = now.difference(DateTime.parse(fixedDate));

    print(timeago.format(now.subtract(difference)));
    
    return timeago.format(now.subtract(difference), locale: locale);

  }

}
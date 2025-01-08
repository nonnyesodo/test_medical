 
import 'package:intl/intl.dart';
import 'package:medical_app/global_widget/export.dart'; 
class UsefulMethod {
  

 

  static String convertMinutesToHours(int minutes) {
    if (minutes > 59) {
      int hours = minutes ~/ 60;
      int remainingMinutes = minutes % 60;
      return '$hours hour${hours > 1 ? 's' : ''}  ${remainingMinutes < 1 ? "" : "minute${remainingMinutes > 1 ? 's' : ''}"}';
    } else {
      return '$minutes minute${minutes > 1 ? 's' : ''}';
    }
  }

  

  

  static String countWithK(int count) {
    if (count >= 1000) {
      return '${(count / 1000).toStringAsFixed(1)}k';
    } else {
      return count.toString();
    }
  }

  static String formatDateTime(DateTime date, TimeOfDay time) {
    try {
      return '${date.toIso8601String().split('T').first} ${DateFormat('hh:mm a').format(DateTime(0, 0, 0, time.hour, time.minute))}';
    } catch (e) {
      return 'invalid_date';
    }
  }

  static String timeAgo(String date) {
    final dateTime = DateTime.parse(date).toUtc();
    final diff = DateTime.now().toUtc().difference(dateTime);

    if (diff.inDays >= 365) {
      return formatPlural(diff.inDays ~/ 365, 'year', 'ago');
    }
    if (diff.inDays >= 30) {
      return formatPlural(diff.inDays ~/ 30, 'month', 'ago');
    }
    if (diff.inDays >= 7) return formatPlural(diff.inDays ~/ 7, 'week', 'ago');
    if (diff.inDays > 0) return formatPlural(diff.inDays, 'day', 'ago');
    if (diff.inHours > 0) return formatPlural(diff.inHours, 'hour', 'ago');
    if (diff.inMinutes > 0) {
      return formatPlural(diff.inMinutes, 'minute', 'ago');
    }
    return 'Just now';
  }

  static String formatPlural(int number, String unit, suffixWord) {
    return '$number $unit${number > 1 ? 's' : ''} $suffixWord';
  }

  

  static String formatTime(String inputDate) {
    DateTime date = DateTime.parse(inputDate);
    return DateFormat('hh:mm a').format(date);
  }

  static String formatDate(String inputDate) {
    DateTime date = DateTime.parse(inputDate);
    return '${DateFormat('EEEE').format(date)}, ${date.day}${getSuffix(date.day)} ${DateFormat('MMMM yyyy').format(date)}';
  }

  static String getSuffix(int day) {
    if (day >= 11 && day <= 13) return 'th';
    switch (day % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }

  

}

/// A class to hold two colors.
class ColorPair {
  final Color primary;
  final Color secondary;

  ColorPair(this.primary, this.secondary);
}

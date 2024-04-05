extension DateExtension on DateTime {
  String howLongAgo() {
    String result = 'now';
    final duration = DateTime.now().difference(this);
    if (duration.inDays > 7) {
      result = '${duration.inDays / 7}w';
    } else if (duration.inDays > 0) {
      result = '${duration.inDays}d';
    } else if (duration.inHours > 0) {
      result = '${duration.inHours}h';
    } else if (duration.inMinutes > 0) {
      result = '${duration.inMinutes}m';
    } else if (duration.inSeconds > 0) {
      result = '${duration.inSeconds}s';
    }
    return result;
  }
}
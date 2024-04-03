extension IntExtension on int {
  String inHours() {
    final h = this ~/ 3600;
    if (h > 9) return h.toString();
    return '0$h';
  }

  String inMinutes() {
    final m = (this ~/ 60) - (this ~/ 3600 * 60);
    if (m > 9) return m.toString();
    return '0$m';
  }

  String inSeconds() {
    final s = (this % 60);
    if (s > 9) return s.toString();
    return '0$s';
  }
}

extension ImagePathExtension on String {
  String get toSVG => 'assets/svg/$this.svg';
  String get toPNG => 'assets/png/$this.png';
}

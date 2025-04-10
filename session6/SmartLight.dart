class SmartLight extends SmartDevice {
  int brightness = 50; 

  SmartLight(String name) : super(name);

  @override
  void performAction([Map<String, dynamic>? action]) {
    if (action != null && action.containsKey('brightness')) {
      brightness = action['brightness'];
      print('$name: تم ضبط السطوع إلى $brightness%');
    }
  }
}
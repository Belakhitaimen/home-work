class SmartThermostat extends SmartDevice {
  double temperature = 22.0; 

  SmartThermostat(String name) : super(name);

  @override
  void performAction([Map<String, dynamic>? action]) {
    if (action != null && action.containsKey('temperature')) {
      temperature = action['temperature'];
      print('$name: تم ضبط الحرارة إلى ${temperature.toStringAsFixed(1)}°C');
    }
  }
}
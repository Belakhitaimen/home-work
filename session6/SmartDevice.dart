abstract class SmartDevice {
  String name;
  bool isOn = false;

  SmartDevice(this.name);

  void turnOn() {
    isOn = true;
    print('$name: تم التشغيل');
  }

  void turnOff() {
    isOn = false;
    print('$name: تم الإيقاف');
  }

  void performAction([Map<String, dynamic>? action]);
}
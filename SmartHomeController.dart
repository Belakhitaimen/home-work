class SmartHomeController {
  final List<SmartDevice> devices = [];

  void addDevice(SmartDevice device) {
    devices.add(device);
  }

  void controlDevices(dynamic command) {
    for (var device in devices) {
      if (command == 'on') {
        device.turnOn();
      } else if (command == 'off') {
        device.turnOff();
      } else if (command is Map) {
        device.performAction(command);
      }
    }
  }
}
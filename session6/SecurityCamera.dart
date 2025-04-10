class SecurityCamera extends SmartDevice {
  SecurityCamera(String name) : super(name);

  @override
  void performAction([Map<String, dynamic>? action]) {
    if (action != null && action['motionDetection'] == true) {
      print('$name: تم تفعيل كشف الحركة');
    }
  }
}
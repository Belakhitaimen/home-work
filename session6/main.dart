import 'SmartHomeController';
import 'SmartLight';
import 'SmartThermostat';
import 'SecurityCamera';
import 'SmartDevice';
void main() {

  final controller = SmartHomeController();

  controller.addDevice(SmartLight('الضوء الرئيسي'));
  controller.addDevice(SmartThermostat('مكيف الصالة'));
  controller.addDevice(SecurityCamera('كاميرا الباب الأمامي'));


  print('--- تشغيل جميع الأجهزة ---');
  controller.controlDevices('on');

  
  print('\n--- ضبط الإعدادات ---');
  controller.controlDevices({'brightness': 80}); 
  controller.controlDevices({'temperature': 24.5}); 
  controller.controlDevices({'motionDetection': true}); 


  print('\n--- إيقاف جميع الأجهزة ---');
  controller.controlDevices('off');
}
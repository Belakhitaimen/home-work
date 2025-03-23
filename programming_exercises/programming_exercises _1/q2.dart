/**Temperature Converter
Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
Convert accordingly and return the result.
 */

import 'dart:io';

void main() {
  print('Enter temperature value:');
  num temperature = num.parse(stdin.readLineSync()!);

  print('Enter unit (C for Celsius, F for Fahrenheit):');
  String unit = stdin.readLineSync()!.toUpperCase();

  if (unit == 'C') {
    print('Converted Temperature: ${celsiusToFahrenheit(temperature)}°F');
  } else if (unit == 'F') {
    print('Converted Temperature: ${fahrenheitToCelsius(temperature)}°C');
  } else {
    print('Invalid unit. Please enter C or F.');
  }
}

num celsiusToFahrenheit(num celsius) => (celsius * 9 / 5) + 32;

num fahrenheitToCelsius(num fahrenheit) => (fahrenheit - 32) * 5 / 9;

/**9. OOP, Constructors & Getters
Create a class `Rectangle` with:
- Private attributes `_width` and `_height`.
- A constructor that initializes the values.
- A getter `area` that calculates and returns the area.
In `main()`, create a `Rectangle` object and print its area. */

void main() {
  Rectangle rect = Rectangle(5.0, 10.0);
  print('The area of the rectangle is: ${rect.area}');
}

class Rectangle {
  num _width;
  num _height;
  Rectangle(this._width, this._height);
  num get area => _width * _height;
}

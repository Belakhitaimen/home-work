/**2. Arithmetic Operators, Conditional Statements & Functions
Write a function `calculateBonus(int salary, int yearsWorked)` that calculates a
bonus based on the following rules:
- If the employee has worked for 5 or more years, they get a 10% bonus.
- Otherwise, they get a 5% bonus.
The function should return the bonus amount.
Then, call the function inside `main()` and print the result. */

void main() {
  print('The bonus for an employee:');
  print(calculateBonus(salary: 40000, yearsWorked: 7));
}

num calculateBonus({required int salary, required int yearsWorked}) {
  double bonus;
  if (yearsWorked >= 5) {
    bonus = 0.10;
  } else {
    bonus = 0.05;
  }

  return bonus;
}

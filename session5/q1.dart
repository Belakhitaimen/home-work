/**Abstract Class: Loan
Create an abstract class Loan with the following properties and methods:
- borrowerName (String)
- loanAmount (double)
- interestRate (double)
- Abstract method: double calculateMonthlyInstallment(int months). */

void main() {
  LoanProcessingSystem loanProcessingSystem = LoanProcessingSystem();
  PersonalLoan personalLoan = PersonalLoan(
    borrowerName: 'humam',
    loanAmount: 10000,
  );
  HomeLoan homeLoan = HomeLoan(borrowerName: 'humam2', loanAmount: 600000);
  CarLoan carLoan = CarLoan(borrowerName: 'mohamed', loanAmount: 70000);
  loanProcessingSystem.applyLoan(personalLoan);
  loanProcessingSystem.applyLoan(homeLoan);
  loanProcessingSystem.applyLoan(carLoan);
  loanProcessingSystem.calculateInstallments(12);
}

abstract class Loan {
  final String borrowerName;
  final double loanAmount;
  final double interestRate;

  Loan({
    required this.borrowerName,
    required this.loanAmount,
    required this.interestRate,
  });

  double calculateMonthlyInstallment(int months);
}

class PersonalLoan extends Loan {
  PersonalLoan({required String borrowerName, required double loanAmount})
    : super(
        borrowerName: borrowerName,
        loanAmount: loanAmount,
        interestRate: 10.0,
      );

  @override
  double calculateMonthlyInstallment(int months) {
    return (loanAmount + (loanAmount * interestRate / 100)) / months;
  }
}

class HomeLoan extends Loan {
  HomeLoan({required String borrowerName, required double loanAmount})
    : super(
        borrowerName: borrowerName,
        loanAmount: loanAmount,
        interestRate: loanAmount >= 500000 ? 9.5 : 8.0,
      );

  @override
  double calculateMonthlyInstallment(int months) {
    return (loanAmount + (loanAmount * interestRate / 100)) / months;
  }
}

class CarLoan extends Loan {
  CarLoan({required String borrowerName, required double loanAmount})
    : super(
        borrowerName: borrowerName,
        loanAmount: loanAmount,
        interestRate: 7.0,
      );

  @override
  double calculateMonthlyInstallment(int months) {
    double totalLoan = loanAmount;
    if (loanAmount > 50000) {
      totalLoan += loanAmount * 0.02;
    }
    return (totalLoan + (totalLoan * interestRate / 100)) / months;
  }
}

class LoanProcessingSystem {
  List<Loan> loans = [];

  void applyLoan(Loan loan) {
    loans.add(loan);
  }

  void calculateInstallments(int months) {
    for (var loan in loans) {
      double installment = loan.calculateMonthlyInstallment(months);
      print(
        'Monthly installment for ${loan.borrowerName}: \$${installment.toStringAsFixed(2)}',
      );
    }
  }
}
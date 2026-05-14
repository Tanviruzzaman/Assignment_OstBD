void main() {
  double income = 50000;

  Map<String, double?> expenses = {
    "Food": 5000,
    "Rent": 15000,
    "Transport": null,
    "Shopping": 3000,
  };

  double totalExpenses = 0;

  List<String> categories = expenses.keys.toList();

  for (int i = 0; i < categories.length; i++) {
    totalExpenses += expenses[categories[i]] ?? 0;
  }

  double remainingBalance = income - totalExpenses;
  double savingsPercentage = (remainingBalance / income) * 100;

  print("===== Personal Finance Tracker =====");

  for (int i = 0; i < categories.length; i++) {
    print("${categories[i]}: ${expenses[categories[i]] ?? 0}");
  }

  print("\nTotal Expenses: $totalExpenses");
  print("Remaining Balance: $remainingBalance");
  print(
    "Savings Percentage: ${savingsPercentage.toStringAsFixed(2)}%",
  );
}
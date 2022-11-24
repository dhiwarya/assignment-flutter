class Budget {
  String title, type, amount;
  DateTime date;
  static List<Budget> listBudget = [];
  Budget(this.title, this.amount, this.type, this.date);
}
import 'package:expense_tracker/widgets/chart/chart.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: "Flutter Course",
        date: DateTime.now(),
        amount: 19.99,
        category: Category.leisure),
    Expense(
        title: "Cinema",
        date: DateTime.now(),
        amount: 10.99,
        category: Category.food)
  ];
  void _addNewExpense(Expense value) {
    setState(() {
      _registeredExpenses.add(value);
    });
  }

  void _removeExpense(Expense value) {
    final expenseIndex = _registeredExpenses.indexOf(value);
    setState(() {
      _registeredExpenses.remove(value);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text("Expense delted"),
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
            label: "Undo",
            onPressed: () {
              setState(() {
                _registeredExpenses.insert(expenseIndex, value);
              });
            }),
      ),
    );
  }

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
        useSafeArea: true,
        isScrollControlled: true,
        context: context,
        constraints: const BoxConstraints(
          maxWidth: double.infinity,
        ),
        builder: (ctx) => NewExpense(
              addExpense: _addNewExpense,
            ));
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // MediaQuery.of(context).size.height;

    Widget mainContent = const Center(
      child: Text('NO Expenses Found. Start adding some!'),
    );

    if (_registeredExpenses.isNotEmpty) {
      mainContent = width < 600
          ? Column(
              children: [
                Chart(expenses: _registeredExpenses),
                Expanded(
                    child: ExpensesList(
                        value: _registeredExpenses, onRemove: _removeExpense)),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Chart(expenses: _registeredExpenses)),
                Expanded(
                    child: ExpensesList(
                        value: _registeredExpenses, onRemove: _removeExpense)),
              ],
            );
    }
    return Scaffold(
        appBar: AppBar(
          // centerTitle: true,
          title: const Text(
            "Expense Tracker",
          ),
          actions: [
            IconButton(
                onPressed: () {
                  _openAddExpenseOverlay();
                },
                icon: const Icon(Icons.add))
          ],
        ),
        body: mainContent);
  }
}

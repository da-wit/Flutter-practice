import 'package:expense_tracker/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({required this.value, required this.onRemove, super.key});

  final List<Expense> value;
  final void Function(Expense value) onRemove;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: value.length,
      itemBuilder: (context, index) => Dismissible(
        key: ValueKey(value[index]),
        background: Container(
          color: Theme.of(context).colorScheme.error,
          child: const Center(child: Text("deleted")),
        ),
        onDismissed: (dirction) {
          onRemove(value[index]);
        },
        child: ExpensesItem(
          expense: value[index],
        ),
      ),
    );
  }
}

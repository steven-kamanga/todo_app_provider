import 'package:flutter/material.dart';
import 'package:todo/presentation/text_const.dart';
import 'package:todo/presentation/todo_form_widget.dart';

class AddTodoDialogWidget extends StatefulWidget {
  const AddTodoDialogWidget({super.key});

  @override
  State<AddTodoDialogWidget> createState() => _AddTodoDialogWidgetState();
}

class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(Tx.addTodo),
          const SizedBox(
            height: 8,
          ),
          TodoFormWidget(
            onChangedTitle: (title) => setState(
              () => this.title = title,
            ),
            onChangedDescription: (description) => setState(
              () => this.description = description,
            ),
            onSavedTodo: () {},
          ),
        ],
      ),
    );
  }
}

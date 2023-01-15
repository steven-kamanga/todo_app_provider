import 'package:flutter/material.dart';
import 'package:todo/main.dart';
import 'package:todo/presentation/text_const.dart';

class TodoFormWidget extends StatelessWidget {
  final String? title;
  final String? description;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;
  final ValueChanged<String> onSavedTodo;

  const TodoFormWidget(
      {super.key,
      this.title,
      this.description,
      required this.onChangedTitle,
      required this.onChangedDescription,
      required this.onSavedTodo});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        buildTitle(),
        const SizedBox(
          height: 8,
        ),
        buildDescription(),
        const SizedBox(
          height: 32,
        ),
        buildButton(),
      ],
    );
  }

  Widget buildTitle() {
    return TextFormField(
      initialValue: title,
      validator: (value) {
        if (title!.isEmpty) {
          return "Title cannot be empty";
        } else {
          return null;
        }
      },
      onChanged: onChangedTitle,
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: "Title",
      ),
    );
  }

  Widget buildDescription() {
    return TextFormField(
      initialValue: title,
      validator: (value) {
        if (title!.isEmpty) {
          return "Title cannot be empty";
        } else {
          return null;
        }
      },
      onChanged: onChangedDescription,
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: "Description",
      ),
    );
  }

  buildButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
          ),
          onPressed: onSavedTodo,
          child: const Text(Tx.save)),
    );
  }
}

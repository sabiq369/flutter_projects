import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task 1',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkboxState: isChecked,
        toggleCheckboxState: (bool? checkBoxState) {
          if (checkBoxState != null) {
            setState(() {
              isChecked = checkBoxState;
            });
          }
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool? checkboxState;
  final Function(bool?)? toggleCheckboxState;

  TaskCheckBox({this.checkboxState, this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckboxState!,
    );
  }
}

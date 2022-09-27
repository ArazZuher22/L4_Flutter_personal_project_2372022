import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycode_wecode_project/src/utils/app_layout.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';

import '../widgets/todo_form_dialog_widget.dart';

class AddTodoDialogWidget extends StatefulWidget {
  @override
  _AddTodoDialogWidget createState() => _AddTodoDialogWidget();
}

class _AddTodoDialogWidget extends State<AddTodoDialogWidget> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';

  @override
  Widget build(BuildContext context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Add Todo', style: Styles.headLineStyle4),
            TodoFormWidget(
              onChangedTitle: (title)=>setState(()=>this.title=title),
              onChangedDescription: (description)=>setState(()=>this.description=description),
              onSaveTodo:(){}, onSavedTodo: () {  },
            ),
            
            ],
        ),
      );
}

import 'package:belbool_to_do/src/features/task/presentation/widgets/drop_down.dart';
import 'package:belbool_to_do/src/features/task/presentation/widgets/text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddEditPage extends StatefulWidget {
  @override
  _AddEditPageState createState() => _AddEditPageState();
}

class _AddEditPageState extends State<AddEditPage> {
  final _formKey = GlobalKey<FormState>();
  final List<CustomTextFormField> listOfDescriptionFields = [];
  final List<TextEditingController> listOfDescriptionTextControllers = [];
  TextEditingController titleTextEditingController = TextEditingController();
  TextEditingController tagTextEditingController = TextEditingController();
  String dropdownValue = 'Ready';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create new Task'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                CustomTextFormField(
                  controller: titleTextEditingController,
                  onTap: () {},
                  hintText: 'Title',
                ),
                CustomTextFormField(
                  controller: tagTextEditingController,
                  onTap: () {},
                  hintText: 'Tag: work, home, school...',
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Description',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    IconButton(
                      onPressed: _addDescriptionTextField,
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Expanded(child: _buildDescriptionTextFields()),
                TaskStatusDropDown(dropdownValue: dropdownValue),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(child: Text('Add'), onPressed: () {}),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _addDescriptionTextField() {
    TextEditingController _textEditingController = TextEditingController();
    listOfDescriptionTextControllers.add(_textEditingController);
    setState(() {
      listOfDescriptionFields.add(CustomTextFormField(
        controller: _textEditingController,
        onTap: () {},
        hintText: '',
        suffixIcon: IconButton(
          icon: Icon(Icons.remove),
          onPressed: () {
            _removeDescriptionTextField(_textEditingController);
          },
          color: Colors.red,
        ),
      ));
    });
  }

  _removeDescriptionTextField(TextEditingController textEditingController) {
    int index = listOfDescriptionTextControllers.indexOf(textEditingController);
    setState(() {
      listOfDescriptionFields.removeAt(index);
      listOfDescriptionTextControllers.removeAt(index);
    });
  }

  Widget _buildDescriptionTextFields() {
    if (listOfDescriptionFields != null && listOfDescriptionFields.length > 0)
      return ListView.builder(
          itemCount: listOfDescriptionFields.length,
          itemBuilder: (context, index) {
            return listOfDescriptionFields[index];
          });
    else
      return Container();
  }
}

import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 0.0,
  @required Function function,
  @required String text,
}) =>
    Container(
      width: width,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
      ),
    );

Widget defultFormFailed({
  TextEditingController controller,
  @required Function validate,
  Function onchanged,
  Function onsubmited,
  @required TextInputType keybordTypeInput,
  @required IconData prefix,
  @required String label,
}) =>
    TextFormField(
      controller: controller,
      validator: validate,
      onChanged: onchanged,
      onFieldSubmitted: onsubmited,
      keyboardType: keybordTypeInput,
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefix,
        ),
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );

import 'package:flutter/material.dart';

Widget DefaultInputField({
  IconData? suffixIcon,
  @required TextEditingController? controller,
  @required TextInputType? type,
  @required String? text,
  @required IconData? prefixIcon,
  bool obscureText = false,
  required VoidCallback onPressed,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: text,
        prefixIcon: Icon(
          prefixIcon,
        ),
        suffixIcon: suffixIcon != null
            ? IconButton(
                icon: Icon(
                  suffixIcon,
                ),
                onPressed: onPressed,
              )
            : null,
        border: const OutlineInputBorder(),
      ),
    );





Widget DefaultMaterialButton({
  required String text,
  Color textColor = Colors.white,
  double fontSize = 25.0,
  FontWeight fontWeight = FontWeight.normal,
  required VoidCallback onPressed,
}) => MaterialButton(
  child:Text(
    text.toUpperCase(),
    style: TextStyle(color: textColor,fontWeight: fontWeight,fontSize: fontSize),
  ),
  onPressed: onPressed,
);

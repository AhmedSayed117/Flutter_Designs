import 'package:flutter/material.dart';

Widget DefaultInputField({
  IconData? suffixIcon,
  @required TextEditingController? controller,
  @required TextInputType? type,
  @required String? text,
  @required IconData? prefixIcon,
  bool obscureText = false,
  VoidCallback? onPressed,
  required String? Function(String?)? validate,
  VoidCallback? onTap,
  bool enabled = true,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: obscureText,
      onTap:onTap,
      enabled: enabled,
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
      validator: validate,
    );





Widget DefaultMaterialButton({
  required String text,
  Color textColor = Colors.white,
  Color ContainerColor = Colors.black,
  double fontSize = 25.0,
  double width = double.infinity,
  FontWeight fontWeight = FontWeight.normal,
  VoidCallback? onPressed,
}) => Container(
  width: width,
  decoration: BoxDecoration(
    color: ContainerColor,
    borderRadius: BorderRadius.circular(20.0,),
  ),
  child:   MaterialButton  (
    child:Text(
      text.toUpperCase(),
      style: TextStyle(color: textColor,fontWeight: fontWeight,fontSize: fontSize),
    ),
    onPressed: onPressed,
  ),
);

Widget taskInfo(task)=> Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
       CircleAvatar(
        radius: 35.0,
        backgroundColor: Colors.blue,
        child: Text('${task['time']}',style: const TextStyle(
            fontSize: 15.0,
            color: Colors.white
        ),),
      ),
      const SizedBox(width: 15.0,),
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${task['title']}',
            style: const TextStyle(
                fontSize: 20.0,
                color: Colors.black
            ),
          ),
          const SizedBox(height: 5.0,),
          Text('${task['date']}',
            style: const TextStyle(
                fontSize: 20.0,
                color: Colors.blue
            ),),
        ],
      ),
    ],
  ),
);

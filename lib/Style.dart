import 'package:flutter/material.dart';

InputDecoration appInputDecoration(String label){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    border: OutlineInputBorder(),
    labelText: label,
  );
}

ButtonStyle appButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(23),
    backgroundColor: Colors.green,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4))
    )
  );
}

SizedBox sizedBox50(Widget child){
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      child: child,
    ),
  );
}
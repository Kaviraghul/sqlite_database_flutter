import 'package:flutter/material.dart';

Padding taskAddingButton(Function onPressed, String buttonText) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: Colors.grey,
        backgroundColor: Colors.black,
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        minimumSize: const Size(80, 50),
      ),
      onPressed: onPressed(),
      child: Text(buttonText),
    ),
  );
}

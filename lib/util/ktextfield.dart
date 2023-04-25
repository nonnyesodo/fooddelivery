import 'package:flutter/material.dart';

const ktextfield = InputDecoration(
  prefixIcon: Icon(
    Icons.email_outlined,
    color: Colors.grey,
  ),
  hintText: 'Enter your email',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFF9AB4C2),
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFF9AB4C2),
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);

import 'package:flutter/material.dart';

InputDecoration kDecorationTextField = InputDecoration(
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.purple.shade700,
      width: 1.0,
    ),
    borderRadius: const BorderRadius.all(
      Radius.circular(15),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.purple.shade700,
      width: 2.0,
    ),
    borderRadius: const BorderRadius.all(
      Radius.circular(15),
    ),
  ),
  contentPadding: const EdgeInsets.symmetric(horizontal: 15),
  hintText: 'Your name',
  border: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.purple.shade700,
      width: 5.0,
    ),
    borderRadius: const BorderRadius.all(
      Radius.circular(15),
    ),
  ),
);

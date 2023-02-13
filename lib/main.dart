
import 'package:flutter/material.dart';
import 'package:invoice_app/homepage.dart';
import 'package:invoice_app/product.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=> HomePage(),
        'item':(context)=> productpage(),
      },
    ),
  );
}

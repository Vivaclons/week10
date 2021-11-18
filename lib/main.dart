import 'package:flutter/material.dart';
import 'package:flutter_application_1/listorder.dart';
import 'package:flutter_application_1/order.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/2',
      routes: {
        '/': (context) => MyApp(),
        '/2': (context) => Order(),
      },
    ),
  );
}

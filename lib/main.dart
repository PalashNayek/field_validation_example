import 'package:field_validation/Source_Code/FlutterValidation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Validator',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
//Creating Object of the FieldValidator class.
  FlutterValidation validator = new FlutterValidation();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Center(
          child: InkWell(
            onTap: () {
              //Here We are calling Email validate method and passing that value which we want to compare with email.
              bool result = validator.aadhaarValidate(content: "2325" "1249"  "0425");
              print(result);
            },
            child: Text("Botton"),
          ),
        ),
      ),
    );
  }
}
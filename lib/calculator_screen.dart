import 'package:flutter/material.dart';
import 'package:my_calculator/button_values.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                alignment: Alignment.bottomRight,
                padding:const EdgeInsets.all(16),
                child: const Text("0",style:TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),textAlign: TextAlign.end,
                ),
                
              ),
              
            Wrap(children: Btn.buttonValues.map((value) => buildButton(value)).toList()),

            ],),
          ),
        ),
      ),

    );
  }
  Widget buildButton(value){
    return Text(value);
  }
}
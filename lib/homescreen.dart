import 'package:calculators/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var userinput='';
  var result='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Text(userinput.toString(),style: TextStyle(fontSize: 30,color: Colors.white),),
                    Text(result.toString(),style: TextStyle(fontSize: 30,color: Colors.white),)
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(

                children: [
                  Row(
                    children: [
                      MyButton(title: 'A/C',onpress: (){
                        userinput='';
                        result='';
                        setState(() {

                        });
                      },),
                      MyButton(title: '+/-',onpress: (){},),
                      MyButton(title: '%',onpress: (){
                        userinput+='%';
                        setState(() {

                        });
                      },),
                      MyButton(title: '/',color: Color(0xffd1720d),onpress: (){
                        userinput+='/';
                        setState(() {

                        });
                      },)
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title: '7',onpress: (){
                        userinput+='7';
                        setState(() {

                        });
                      },),
                      MyButton(title: '8',onpress: (){
                        userinput+='8';
                        setState(() {

                        });
                      },),
                      MyButton(title: '9',onpress: (){
                        userinput+='9';
                        setState(() {

                        });
                      },),
                      MyButton(title: 'X',color: Color(0xffd1720d),onpress: (){
                        userinput+='*';
                        setState(() {

                        });
                      },)
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title: '4',onpress: (){
                        userinput+='4';
                        setState(() {

                        });
                      },),
                      MyButton(title: '5',onpress: (){
                        userinput+='5';
                        setState(() {

                        });
                      },),
                      MyButton(title: '6',onpress: (){
                        userinput+='6';
                        setState(() {

                        });
                      },),
                      MyButton(title: '-',color: Color(0xffd1720d),onpress: (){
                        userinput+='-';
                        setState(() {

                        });
                      },)
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title: '1',onpress: (){
                        userinput+='1';
                        setState(() {

                        });
                      },),
                      MyButton(title: '2',onpress: (){
                        userinput+='2';
                        setState(() {

                        });
                      },),
                      MyButton(title: '3',onpress: (){
                        userinput+='3';
                        setState(() {

                        });
                      },),
                      MyButton(title: '+',color: Color(0xffd1720d),onpress: (){
                        userinput+='+';
                        setState(() {

                        });
                      },)
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title: '0',onpress: (){
                        userinput+='0';
                        setState(() {

                        });
                      },),
                      MyButton(title: '.',onpress: (){},),
                      MyButton(title: 'DEC',onpress: (){
                        userinput =userinput.substring(0,userinput.length-1);
                        setState(() {

                        });


                      },),
                      MyButton(title: '=',color: Color(0xffd1720d),onpress: (){
                        equalbutton();
                        setState(() {

                        });
                      },)
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );

  }
  void equalbutton(){
    Parser p =Parser();
    Expression expression= p.parse(userinput);
    ContextModel contextModel=ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    result=eval.toString();


  }
}



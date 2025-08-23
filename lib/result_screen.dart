import 'package:bmi_calculator/home_screen.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.result});
 final double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff24263B),
        appBar: AppBar(
          surfaceTintColor: Colors.black,
          shadowColor: Colors.black,
          elevation: 5,
          backgroundColor: Color(0xff24263B),
          foregroundColor: Colors.white,
          title: Center(
            child: Text('BMI Calculator',style:
            TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),),
          ),
        ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Your Result',
              style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w700
            ),),
            SizedBox(height: 20,),
            Container(
              height: 520,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Color(0xff24263B),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: .3),
                    spreadRadius: 1.5,
                    blurRadius: 10
                  )
                ]
              ),
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  Text( result<=18.5  ? "UnderWeight(abnormal)":
                      result<=24.5   ?'Normal Weight(Healthy)':
                          result<=29.9?'OverWeight(Abnormal)':
                              result<=34.9? "Obesity class I (abnormal)":
                                  result<=39.9? "Obesity class II (abnormal)":
                                     "Obesity class III (abnormal)"
                              ,style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize:
                      25,
                  ),
                  ),
                  SizedBox(height: 40,),
                  Text(result.toStringAsFixed(2),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize:64,
                  ),),
                  SizedBox(height: 40,),
                  Text(result<=18.5  ? "Your body weight is underweighted (abnormal)":
                  result<=24.5   ?"You have a normal body weight (Healthy)":
                  result<=29.9?'Your body weight is OverWeight(Abnormal)':
                  result<=34.9? "Your body weight is Obesity class I (abnormal)":
                  result<=39.9? "your body weight is Obesity class II (abnormal)":
                  "your body weight is Obesity class III (abnormal)",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: .5),
                      fontSize: 20
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>HomeScrren()));
        },
        child: GestureDetector(
          onTap: (){
            Navigator.pop(context,);
          },
          child: Container(
            height: 90,
            width: double.maxFinite,
            color: Colors.pink,
            child: Center(child: Text('Re-Calculate',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35
              ),)),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff24263B),
        appBar: AppBar(
          surfaceTintColor: Colors.black,
          shadowColor: Colors.black,
          elevation: 5,
          backgroundColor: Color(0xff24263B),
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
                  Text('Normal',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                  SizedBox(height: 40,),
                  Text('19.2',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize:64,
                  ),),
                  SizedBox(height: 40,),
                  Text('You Have a Normal Body Weight,\nGood job',
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
              MaterialPageRoute(builder: (context)=>ResultScreen()));
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

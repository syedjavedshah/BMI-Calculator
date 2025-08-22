import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomeScrren extends StatelessWidget {
  const HomeScrren({super.key});

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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: ShadowContainer(
                        child:Column(
                          children: [
                            Expanded(
                              child: SvgPicture.asset('assets/icons/male.svg',),
                            ),
                            Text('Male',style: TextStyle(
                              color: Colors.white.withValues(alpha: .5),
                              fontSize: 20
                            ),)
                          ],
                        ))),
                SizedBox(width: 20,),
                Expanded(
                    child: ShadowContainer(
                        child:Column(
                          children: [
                            Expanded(
                              child: SvgPicture.asset('assets/icons/female.svg',
                              ),
                            ),
                            Text('Female',style: TextStyle(
                                color: Colors.white.withValues(alpha: .5),
                                fontSize: 20
                            ),)
                          ],
                        ))),
              ],
            ),
            SizedBox(height: 20,),
            ShadowContainer(child:
             Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text('Height',style: TextStyle(
                 color: Colors.white.withValues(alpha: .5),
                 fontSize: 20
             ),),
               RichText(text: TextSpan(text: "150",
               style: TextStyle(
                 fontSize: 35,
                 fontWeight: FontWeight.bold
               ),
               children:[
                 TextSpan(text: ' cm',style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold
                 ),)
               ])),
                 Slider(
                     activeColor: Colors.pink,
                     // inactiveColor: Colors.pink,
                     value: 0.35, onChanged: (NewValue){}),
               ],
             )),
            SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child: ShadowContainer(child: Column(
                  children: [
                Text('Weight',style: TextStyle(
                color: Colors.white.withValues(alpha: .5),
                fontSize: 25)),
                Text('60',style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: (){},
                          icon: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey
                              ),
                              child:Center(child:
                              SvgPicture.asset('assets/icons/sub.svg',
                                width: 21,
                              ))
                          )),

                      IconButton(onPressed: (){},
                          icon: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey
                              ),
                              child:Center(child:
                              SvgPicture.asset('assets/icons/sum.svg',
                                width: 21,
                              ))
                          )),
                    ],
                  )
                  ],
                )),
              ),
              Expanded(
                child: ShadowContainer(child: Column(
                  children: [
                    Text('Age',style: TextStyle(
                        color: Colors.white.withValues(alpha: .5),
                        fontSize: 25)),
                    Text('25',style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: (){},
                            icon: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey
                                ),
                                child:Center(child:
                                SvgPicture.asset('assets/icons/sub.svg',
                                  width: 21,
                                ))
                            )),

                        IconButton(onPressed: (){},
                            icon: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey
                                ),
                                child:Center(child:
                                SvgPicture.asset('assets/icons/sum.svg',
                                  width: 21,
                                ))
                            )),
                      ],
                    )
                  ],
                )),
              ),
            ],
          )
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context)=>ResultScreen()));
        },
        child: Container(
          height: 90,
          width: double.maxFinite,
          color: Colors.pink,
          child: Center(child: Text('Calculate',
          style: TextStyle(
            color: Colors.white,
            fontSize: 35
          ),)),
          ),
      ),
    );

  }
}

class ShadowContainer extends StatelessWidget {
  const ShadowContainer({super.key, required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 200,
      decoration: BoxDecoration(
          color: Color(0xff24263B),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withValues(alpha: .4),
                spreadRadius: 1.5,
                blurRadius: 10
            )
          ]
      ),
      child: child ,
    );
  }
}

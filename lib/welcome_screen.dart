import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz2/constants.dart';
import 'package:quiz2/question_controller.dart';
import 'package:quiz2/quiz_screen.dart';
// import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         Container(
           decoration: new BoxDecoration(
             image: new DecorationImage(image: new AssetImage('assets/bg4.png'),
             fit: BoxFit.cover
             )
           ),
         ),
          SafeArea(child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(flex: 2,),
                Text("Let's Play Quiz",style:Theme.of(context).textTheme.headlineMedium?.copyWith(color:Colors.white,fontWeight: FontWeight.bold),),
                Text("Enter your information below",style: TextStyle(fontWeight: FontWeight.bold),),
                Spacer(),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFF1C2341),
                    hintText: "Full Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    )
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: ()=>Get.to(QuizScreen()),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(kDefaultPadding * 0.75),
                    decoration: BoxDecoration(gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: Text("Lets Start Quiz",style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.black),),
                  ),
                ),
                Spacer(flex: 2,), //it will take 2/6
              ],
            ),
          ))
          
        ],
      ),
    );
  }
}

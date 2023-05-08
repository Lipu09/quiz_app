import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz2/constants.dart';
import 'package:quiz2/question_controller.dart';
class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController=Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(image: new AssetImage('assets/bg4.png'),
                    fit: BoxFit.cover
                )
            ),
          ),
          Column(
            children: [
              Spacer(flex: 3,),
              Text('Score',style: Theme.of(context).textTheme.displaySmall?.copyWith(color: kSecondaryColor),),
              Spacer(),
              Text("${_qnController.correctAns *10}/${_qnController.questions.length *10}",style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: kSecondaryColor),),
              Spacer(flex: 3,)
            ],
          )
        ],
      ),
    );
  }
}

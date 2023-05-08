import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz2/body.dart';
import 'package:quiz2/constants.dart';
import 'package:quiz2/question_controller.dart';
import 'package:quiz2/questions.dart';

import 'option.dart';

class QuestionCard extends StatelessWidget {
   QuestionCard({ Key? key,required this.question}) : super(key: key);

  final Question question;



  @override
  Widget build(BuildContext context) {
    QuestionController _controller=Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25)
      ),
      child: Column(
        children: [
          Text(question.question,style: Theme.of(context).textTheme.titleLarge?.copyWith(color: kBlackColor),),
          SizedBox(height: kDefaultPadding/2,),
          ...List.generate(question.options.length, (index) => Option(text: question.options[index], index: index, press: ()=>_controller.checkAns(question, index)))
        ],
      ),
    );
  }
}

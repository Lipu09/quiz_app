import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz2/constants.dart';
import 'package:quiz2/progressbar.dart';
import 'package:quiz2/question_card.dart';
import 'package:quiz2/question_controller.dart';
import 'package:quiz2/questions.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    QuestionController _questionController=Get.put(QuestionController());
    return Stack(
      children: [
        Container(
          decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage('assets/bg4.png'),
                  fit: BoxFit.cover
              )
          ),
        ),
       SafeArea(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
               child: ProgressBar(),
             ),
             SizedBox(height: kDefaultPadding,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
               child: Obx(()=>Text.rich(
                   TextSpan(
                     text: "Question ${_questionController.questionNumber.value}",
                     style: Theme.of(context).textTheme.headlineMedium?.copyWith(color:kSecondaryColor),
                     children: [
                       TextSpan(
                           text: "/${_questionController.questions.length}",style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: kSecondaryColor)
                       ),
                     ],
                   )
               ),)
             ),
             Divider(thickness: 1.5,),
             SizedBox(height: kDefaultPadding,),
             Expanded(
                 child: PageView.builder(
                   physics: NeverScrollableScrollPhysics(),
                   controller:_questionController.pageController,
                   itemCount: _questionController.questions.length,
                   onPageChanged: _questionController.updateTheQnNum,
                   itemBuilder: (context, index) => QuestionCard(question: _questionController.questions[index],),),

             ),
           ],
         )
       )
      ],
    );
  }
}




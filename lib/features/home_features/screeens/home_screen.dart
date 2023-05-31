import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi/core/constants/app_texts.dart';
import 'package:flutter_bmi/core/constants/text_styles.dart';
import 'package:flutter_bmi/features/home_features/widgets/counter_widget.dart';
import 'package:flutter_bmi/gen/assets.gen.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import '../widgets/gender_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title:  Text(AppTexts.homeAppbarTxt,style: TextStyles.appBarTxtStyle),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(8, 16, 8, 16),
              padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
              width: size.width,
              decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.20),blurRadius: 10,offset: const Offset(0,5))
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // select gender
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GenderWidget(size: size, gender: AppTexts.womanTxt, iconPath: Assets.images.woman.path),
                      GenderWidget(size: size, gender: AppTexts.manTxt, iconPath: Assets.images.man.path),
                    ],

                  ),
                  const SizedBox(height: 24),
                  // select height
                   Text(AppTexts.inputHeightTxt,style: TextStyles.normalBodyTxtStyle,),
                  // user height
                  Center(
                    child: RichText(
                        text:  TextSpan(
                          text: '150',
                          style: const TextStyle(fontSize: 40,color: Colors.black),
                          children: [
                            TextSpan(text: AppTexts.cmTxt,style: TextStyles.cmTxtStyle)
                          ]
                        ),
                    ),
                  ),
                  //Slider
                  Slider(
                      min: 90,
                      max: 240,
                      value: 150,
                      onChanged: (value) {},
                  ),
                  const SizedBox(height: 24),

                  // age and Weight txt
                   Text("سن و وزن خود را مشخص کنید",style: TextStyles.normalBodyTxtStyle,),
                  const SizedBox(height: 16),

                  // set user age and Weight
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     CounterWidget(size: size, title: 'سن', number: 35),
                     CounterWidget(size: size, title: 'وزن', number: 80),
                   ],
                 ),

                  const SizedBox(height: 48),
                  SwipeableButtonView(
                      onFinish: () {},
                      onWaitingProcess: () {},
                      activeColor: Colors.blueAccent,
                      buttonWidget: const Icon(Icons.send),
                      buttonText: "شروع محسابه",
                    buttontextstyle: TextStyles.bottomTxtStyle,
                  )
                ],
              )
            ),

          ],
      ),
    );
  }
}

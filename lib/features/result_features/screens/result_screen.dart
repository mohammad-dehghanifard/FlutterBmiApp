import 'package:flutter/material.dart';
import 'package:flutter_bmi/core/constants/app_texts.dart';
import 'package:flutter_bmi/core/constants/text_styles.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(AppTexts.resultTxt,style: TextStyles.appBarTxtStyle),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Container(
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
          children: [
            SizedBox(height: size.height * 0.02),
            Text(AppTexts.userResultTxt,style: TextStyles.normalBodyTxtStyle.copyWith(fontWeight: FontWeight.bold,fontSize: 20)),
            SizedBox(height:  size.height * 0.04),
          // Gauge
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SfRadialGauge(axes: <RadialAxis>[
                RadialAxis(minimum: 0, maximum: 150, ranges: <GaugeRange>[
                  GaugeRange(startValue: 0, endValue: 50, color: Colors.green),
                  GaugeRange(
                      startValue: 50, endValue: 100, color: Colors.orange),
                  GaugeRange(startValue: 100, endValue: 150, color: Colors.red)
                ], pointers: const <GaugePointer>[
                  NeedlePointer(value: 70)
                ], annotations: const <GaugeAnnotation>[
                  GaugeAnnotation(
                      widget: Text('90.0',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                      angle: 90,
                      positionFactor: 0.5)
                ])
              ]),
            ),

            SizedBox(height:  size.height * 0.06),

            //btn
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // share btn
                ElevatedButton.icon(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blueAccent),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                    overlayColor: MaterialStatePropertyAll(Colors.blue),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))))
                  ),
                    onPressed: () {},
                  icon: const Icon(Icons.share),
                  label: Text(AppTexts.shareTxt,style: TextStyles.bottomTxtStyle,),
                ),
                // back to home btn
                ElevatedButton.icon(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blueAccent),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                    overlayColor: MaterialStatePropertyAll(Colors.blue),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))))
                  ),
                    onPressed: () {},
                  icon: const Icon(Icons.home_sharp),
                  label: Text(AppTexts.backTxt,style: TextStyles.bottomTxtStyle,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}



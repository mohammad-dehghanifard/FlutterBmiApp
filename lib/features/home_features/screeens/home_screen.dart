import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3d_choice_chip/flutter_3d_choice_chip.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('محاسبه گر قد و وزن',style: TextStyle(color: CupertinoColors.white)),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
          children: [
            // select gender
            Container(
              margin: const EdgeInsets.fromLTRB(8, 16, 8, 16),
              width: size.width,
              height: size.height * 0.15,
              decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.20),blurRadius: 10,offset: const Offset(0,5))
                ]
              ),
              child: ChoiceChip3D(
                  onSelected: () {},
                  onUnSelected: () {},
                  child: Column(
                    children: [
                      Text("مرد")
                    ],
                  )),
            )
          ],
      ),
    );
  }
}

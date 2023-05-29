
import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    super.key,
    required this.size, required this.title, required this.number,
  });

  final Size size;
  final String title;
  final double number;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.30,
      height: size.height /10,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.2),blurRadius: 10)
          ]
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {

                },
                child: const CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.blueAccent,
                  child: Icon(Icons.remove,color: Colors.white,),
                ),
              ),
              Text(number.toString()),
              GestureDetector(
                onTap: () {

                },
                child: const CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.blueAccent,
                  child: Icon(Icons.add,color: Colors.white,),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}



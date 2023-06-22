// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/Button.dart';
import 'package:flutter_tutorial/widgets/Mountain_card.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 14, 120, 62),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 32,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'kkogdaegi ⛰',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Text('총 높이',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  )),
              SizedBox(
                height: 4,
              ),
              Text('1 024 997m',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Button(
                    text: '오르기',
                    textColor: Colors.black,
                    bgColor: Colors.amber,
                  ),
                  Button(
                    text: '기록 보기',
                    textColor: Colors.white,
                    bgColor: Color.fromARGB(255, 41, 45, 47),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Seoul 10',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '모두 보기',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              MountainCard(
                name: '우면산',
                height: 293,
              ),
              SizedBox(
                height: 8,
              ),
              MountainCard(
                name: '안산',
                height: 296,
              ),
              SizedBox(
                height: 8,
              ),
              MountainCard(
                name: '인왕산',
                height: 338,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

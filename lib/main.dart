import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp( // MaterialApp 위젯
      debugShowCheckedModeBanner: false,
      home: Scaffold( // Scaffold 위젯
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // 여러 위젯을 컬럼 위젯에 입력 가능
            children: [
              Text('Code'),
              Text('Factory'),
            ],
          )
        ),
      ),
    ),
  );
}


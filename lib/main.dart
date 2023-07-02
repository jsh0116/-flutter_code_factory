import 'package:flutter/material.dart';

// material design과 관련된 기능을 불러오는 기능
// material.dart 파일을 불러와야
// flutter에서 기본 제공해주는 위젯들을 사용할 수 있다.
void main() {
  runApp(
    MaterialApp( // MaterialApp 위젯
      home: Scaffold( // Scaffold 위젯
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            'Hello World',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    ),
  );
}


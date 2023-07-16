import 'package:code_factory/screen/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  // flutter 프레임워크가
  // 앱을 실행할 준비가 될때까지 기다린다.
  // webview 4.0버전부터 작성 필요
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp( // MaterialApp
      home: HomeScreen(),
    ),
  );
}


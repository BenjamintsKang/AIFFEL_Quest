import 'package:flutter/material.dart';
// import 'dart:async';
// import 'dart:io';

void main() {
  
print('종료를 원하시면 1을 입력해주세요.');
  while(true)
  { 

    // int input = int.parse(stdin.readLineSync() ?? '');
    var counter = 150;
    var cycle_counter = 0;
    // 회차 카운터
    Timer.periodic(const Duration(seconds: 150), (Timer timer) {
      print(timer.tick);
      counter--;
      if (counter == 0) {
        print('작업 시간이 종료되었습니다. 휴식시간을 시작합니다.');
        cycle_counter++;
        var break_counter = 30;
        Timer.periodic(const Duration(seconds: 30), (timer) {
          print(timer.tick);
          break_counter--;});
          if (cycle_counter %4 == 0) {
            print('4회차 작업이 종료되었습니다. 15분 휴식시간을 시작합니다.');
            // 4회차 작업이 종료되면 15분 휴식시간을 시작합니다.
            var break_counter1 = 90;
            Timer.periodic(const Duration(seconds: 90), (timer) {
              print(timer.tick);
              break_counter--;});
        }
      }
    });
    //   if(input == 1)
    //     break;      

}

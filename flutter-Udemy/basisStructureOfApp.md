# 1. Widget이란?

*1. 사전적 의미*
widget: 소형장치, 부품

*2. flutter에서 widget이란?*
 APP의 UI를 만들고 구성하는 모든 기본 단위 요소
   (image, text, color, center, column, padding, row 등 모든 것을 통칭하는 말.)

*Flutter Widget tree*
Widget들은 tree구조로 정리될 수 있음
한 Widget내에 얼마든지 다른 widget들이 포함될 수 있음
Widget은 부모 위젯과 자식 위젯으로 구성(위에서부터 아래로 계층 구조)
Parent widget을 widget container라고 부르기도 함

__트리 예시 코드__

    import 'dart:ui';
    import 'package:flutter/material.dart';

    void main() {
        runApp(
            MaterialApp(
            home: Scaffold(
                backgroundColor: Colors.blueGrey,
                appBar: AppBar(
                    title: Text('I Am Rich'),
                    backgroundColor: Colors.blueGrey[900],
                ),
                body: Center(
                    child:const Image(
                        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT05CaGkLhsZwuI_wS-huKtfL92p5omhgioow&usqp=CAU')
                        ),
                    ),
                ),
            ),
        );
    }   


__트리구조__


                                        My APP

                                        Material APP

                                        Scaffold

        1.backgroundColor               2. AppBar                           3.Body

        1-1 Color               2-1 title   2-2 backgroundColor             3-1 Center
                                                        
                                                                            3-1-1 image


[트리를 쉽게 그려볼 수 있는 사이트](https://app.diagrams.net/)


__widget을 추가/삭제 등등__

alt + enter 누르기
-> 메뉴 팝업이 생기는데 기능은 아래와 같다.
1. padding -> parent widget 추가
2. row/ column으로 감싸기
3. widget 제거
등등 더 있음.
   

#2. class

_클래스_
= 객체 


class마다 사용하는 property들이 존재함.

아래 사이트를 들어가면 해당 클래스에서 어떠한 위젯을 사용할 수 있는지 나온다.

[클래스 찾는 url](https://api.flutter.dev/flutter/widgets/Image-class.html)




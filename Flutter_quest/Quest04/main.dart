// Flutter Quest04 by 강대식

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : AgodaMain(isHotel: true),  //
    );
  }
}

class AgodaMain extends StatelessWidget {
  bool isHotel = true;
  
  // AgodaMain({super.key});
  AgodaMain({Key? key, required this.isHotel}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () async {
              print('First Page에서의 is_hotel: $isHotel');
              isHotel = !isHotel;

              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AgodaSub(isMotel: isHotel),
                ),
              );

              if (result != null) {
                isHotel = !result;
              }
            },
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.hotel),
              ],
            ),
          ),
          title: const Text('agoda'),
          centerTitle: true,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'images/1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Tap the hotel icon to proceed',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}


//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           leading: GestureDetector(
//             onTap: () async {
//               print('First Page에서의 is_hotel: $isHotel');
//               isHotel = !isHotel;

//               final result = await Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => AgodaSub(isMotel: isHotel),
//                 ),
//               );

//               if (result != null) {
//                 isHotel = !result;
//               }
//             },
//             child: const Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 FaIcon(FontAwesomeIcons.hotel),
//               ],
//             ),
//           ),
//           title: const Text('agoda'),
//           centerTitle: true,
//         ),
//         body: LayoutBuilder(
//           builder: (context, constraints) {
//             return Stack(
//               children: [
//                 Positioned.fill(
//                   child: Image.asset(
//                     'images/1.jpg',
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 const Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Tap the hotel icon to proceed',
//                         style: TextStyle(color: Colors.white, fontSize: 18),
//                       ),
//                       SizedBox(height: 20),
//                     ],
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           appBar: AppBar(
//             leading: const Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 FaIcon(FontAwesomeIcons.hotel),
//               ],
//             ),
//             title: const Text('agoda'),
//             centerTitle: true,
//           ),

//           body: LayoutBuilder(
//           builder: (context, constraints) {
//             return Stack(
//               children: [
//                 Positioned.fill(
//                   child: Image.asset(
//                     'images/1.jpg',
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       ElevatedButton(
//                         onPressed: () async {
//                           print('First Page에서의 is_hotel: $isHotel');
//                           isHotel = !isHotel;

//                           final result = await Navigator.push(
//                             context,
//                             // AgodaSub을 호출하면서 is_cat 변수 데이터를 함께 전달
//                             MaterialPageRoute(
//                               builder: (context) => AgodaSub(isMotel: isHotel),
//                             ),
//                           );

//                           // pop() 메소드로부터 전달된 result 값을 not 변환해서 다시 is_cat 변수에 저장
//                           if (result != null) {
//                             isHotel = !result;
//                           }
//                         },
//                         child: const Text('Hotels'),
//                       ),
//                       const SizedBox(height: 20),
//                     ],
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }


class AgodaSub extends StatelessWidget {
  bool isMotel = true;
  
  // AgodaSub({super.key, required bool isMotel});
  // AgodaSub(this.isMotel, {super.key});
  AgodaSub({Key? key, required this.isMotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.hotel),
              ],
            ),
            title: const Text('agoda'),
            centerTitle: true,
          ),

          body: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'images/2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          print('second Page에서의 is_hotel: $isMotel');
                          isMotel = !isMotel;

                          final result = await Navigator.push(
                            context,
                            // AgodaDetail을 호출하면서 isMotel 변수 데이터를 함께 전달
                            MaterialPageRoute(
                              builder: (context) => AgodaDetail(isHostel: isMotel),
                            ),
                          );

                          // pop() 메소드로부터 전달된 result 값을 not 변환해서 다시 is_cat 변수에 저장
                          if (result != null) {
                            isMotel = !result;
                          }
                        },
                        child: const Text('Next'),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}


class AgodaDetail extends StatelessWidget {
  bool isHostel = true;
  
  AgodaDetail({super.key, required bool isHostel});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.hotel),
              ],
            ),
            title: const Text('agoda'),
            centerTitle: true,
          ),

          body: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'images/6.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          print('second Page에서의 is_hotel: $isHostel');
                          isHostel = !isHostel;

                          final result = await Navigator.push(
                            context,
                            // DogScreen을 호출하면서 is_cat 변수 데이터를 함께 전달
                            MaterialPageRoute(
                              builder: (context) => AgodaMain(isHotel: isHostel),
                            ),
                          );

                          // pop() 메소드로부터 전달된 result 값을 not 변환해서 다시 is_cat 변수에 저장
                          if (result != null) {
                            isHostel = !result;
                          }
                        },
                        child: const Text('Next'),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
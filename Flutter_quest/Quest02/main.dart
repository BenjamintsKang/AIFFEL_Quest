import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // added by Ben

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Create a Flutter app'),
          centerTitle: true,
          backgroundColor: Colors.blue,
          leading: const Icon(Icons.home),
        ),
        body: Stack(
          children: [
            // Center the button (unchanged)
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  debugPrint('Button was pressed');
                },
                child: const Text('Text'),
              ),
            ),
            // Container stack at the bottom with adjusted positions
            Positioned(
              bottom: 20.0, // Adjust position as needed
              child: Stack(
                children: [
                  for (var i = 0; i < 5; i++) // Loop for 5 containers
                    Positioned(
                      left: 30.0 * i, // Adjust horizontal spacing
                      top: 30.0 * i, // Adjust vertical spacing
                      child: Container(
                        width: 300.0 - 60.0 * i,
                        height: 300.0 - 60.0 * i,
                        color: Colors.primaries[i], // Use default colors
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           // Add an icon to the top left of the appbar.
//           leading: const Icon(Icons.menu),
//           // Add the text ‘Create a Flutter app’ to the center of the appbar.
//           title: const Text('Create a Flutter app'),
//           // Set the appbar color to ‘blue’.
//           backgroundColor: Colors.blue,
//         ),
//         body: Stack(
//           children: [
//             // Center the button using Align
//             Align(
//               alignment: Alignment.center,
//               child: TextButton(
//                 onPressed: () {
//                   // Print to debug console
//                   print('Button was pressed');
//                 },
//                 child: const Text('Text'),
//               ),
//             ),
//             // Align stack at the bottom center
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   // Five containers with increasing sizes
//                   Container(
//                     width: 300.0,
//                     height: 300.0,
//                     color: Colors.yellow,
//                   ),
//                   Container(
//                     width: 240.0,
//                     height: 240.0,
//                     color: Colors.blue,
//                   ),
//                   Container(
//                     width: 180.0,
//                     height: 180.0,
//                     color: Colors.pink,
//                   ),
//                   Container(
//                     width: 120.0,
//                     height: 120.0,
//                     color: Colors.green,
//                   ),
//                   Container(
//                     width: 60.0,
//                     height: 60.0,
//                     color: Colors.orange,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Test'),
//         ),
//         body: Stack(
//           children: [
//             // Center the stack using Align
//             Align(
//               alignment: Alignment.center,
//               child: Stack(
//                 // Five containers with different sizes and colors
//                 children: [
//                   Container(
//                     width: 100.0,
//                     height: 100.0,
//                     color: Colors.yellow,
//                   ),
//                   Positioned(
//                     left: 20.0,
//                     top: 20.0,
//                     child: Container(
//                       width: 80.0,
//                       height: 80.0,
//                       color: Colors.blue,
//                     ),
//                   ),
//                   Positioned(
//                     right: 20.0,
//                     bottom: 20.0,
//                     child: Container(
//                       width: 60.0,
//                       height: 60.0,
//                       color: Colors.pink,
//                     ),
//                   ),
//                   Positioned(
//                     left: 40.0,
//                     bottom: 40.0,
//                     child: Container(
//                       width: 40.0,
//                       height: 40.0,
//                       color: Colors.green,
//                     ),
//                   ),
//                   Positioned(
//                     right: 40.0,
//                     top: 40.0,
//                     child: Container(
//                       width: 40.0,
//                       height: 40.0,
//                       color: Colors.orange,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Test'),
//           ),
        
//         column(
//           children: [
//            Row(child: [
//             Image(images/icon1.jpg),
//             Text('플러터 앱 만들기'),
//            ], 
//           ),
//           ],

//           body: Stack(
//             children: [
//               Align(
//                   alignment: const Alignment(0.0, 0.5),
//                   child: Container(
//                     width: 250,
//                     height: 250,
//                     color: Colors.yellow,
//                   )
//               ),
//               Align(
//                 alignment: const FractionalOffset(0.6, 0.76),
//                 child: Container(
//                   width: 200,
//                   height: 200,
//                   color: Colors.blue,
//                 ),
//               ),

//               Align(
//                 alignment: const FractionalOffset(0.7, 0.75),
//                 child: Container(
//                   width: 150,
//                   height: 150,
//                   color: Colors.red,
//                 ),
//               ),
//               // Positioned(
//               //   left: 40.0,
//               //   top: 40.0,
//               //   child: Container(
//               //     color: Colors.pink,
//               //     height: 150.0,
//               //     width: 150.0,
//               //   ),
//               //)
//             ],
//           ),
//         )
//     );
//   }
// }

//   end of code

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

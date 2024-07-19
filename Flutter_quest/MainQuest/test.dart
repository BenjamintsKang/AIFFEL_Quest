// // 사진 capture (삭제기능 - 추가) 
// // emul 동작 중 멈춤 발생

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';

// void main() {
//   runApp(const MyApp());
// }

// // Photo class
// class Photo {
//   final int id;
//   final String url;
//   final String title;
//   final DateTime? captureDate;

//   Photo({
//     required this.id,
//     required this.url,
//     required this.title,
//     this.captureDate,
//   });
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             '[ Photo Gallery ]',
//             style: TextStyle(color: Colors.blue),
//           ),
//           centerTitle: true,
//         ),
//         body: const PhotoGalleryApp(),
//       ),
//     );
//   }
// }

// class PhotoGalleryApp extends StatefulWidget {
//   const PhotoGalleryApp({super.key});

//   @override
//   State<PhotoGalleryApp> createState() => _PhotoGalleryAppState();
// }

// class _PhotoGalleryAppState extends State<PhotoGalleryApp> {
//   final List<Photo> _photos = [
//     Photo(
//       id: 1,
//       url: 'https://images.pexels.com/photos/2667738/pexels-photo-2667738.jpeg',
//       title: 'Photo 1',
//       captureDate: DateTime(2024, 07, 18),
//     ),
//     Photo(
//       id: 2,
//       url: 'https://images.pexels.com/photos/672101/pexels-photo-672101.jpeg',
//       title: 'Photo 2',
//       captureDate: DateTime(2024, 07, 18),
//     ),
//     Photo(
//       id: 3,
//       url: 'https://images.pexels.com/photos/1153655/pexels-photo-1153655.jpeg',
//       title: 'Photo 3',
//       captureDate: DateTime(2024, 07, 18),
//     ),
//     Photo(
//       id: 4,
//       url: 'https://images.pexels.com/photos/693794/pexels-photo-693794.jpeg',
//       title: 'Photo 4',
//       captureDate: DateTime(2024, 07, 18),
//     ),
//     Photo(
//       id: 5,
//       url: 'https://images.pexels.com/photos/59999/raspberries-fruits-fruit-berries-59999.jpeg',
//       title: 'Photo 5',
//       captureDate: DateTime(2024, 07, 18),
//     ),
//     Photo(
//       id: 6,
//       url: 'https://images.pexels.com/photos/2363347/pexels-photo-2363347.jpeg',
//       title: 'Photo 6',
//       captureDate: DateTime(2024, 07, 18),
//     ),
//     // Photo(
//     //   id: 7,
//     //   url: 'https://images.pexels.com/photos/429807/pexels-photo-429807.jpeg',
//     //   title: 'Photo 7',
//     //   captureDate: DateTime(2024, 07, 18),
//     // ),
//     // Photo(
//     //   id: 8,
//     //   url: 'https://images.pexels.com/photos/708777/pexels-photo-708777.jpeg',
//     //   title: 'Photo 8',
//     //   captureDate: DateTime(2024, 07, 18),
//     // ),
//   ];

//   Future<void> _takePhoto() async {
//     try {
//       final picker = ImagePicker();
//       final pickedFile = await picker.pickImage(source: ImageSource.camera);
//       if (pickedFile != null) {
//         setState(() {
//           _photos.add(Photo(
//             id: _photos.length + 1,
//             url: pickedFile.path,
//             title: '촬영된 사진',
//             captureDate: DateTime.now(),
//           ));
//         });
//       }
//     } catch (e) {
//       print('사진 촬영 오류: $e');
//     }
//   }

//   void _deletePhoto(int id) {
//     setState(() {
//       _photos.removeWhere((photo) => photo.id == id);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GridView.builder(
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//         ),
//         itemCount: _photos.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => PhotoDetailPage(
//                     photo: _photos[index],
//                     photos: _photos,
//                     initialIndex: index,
//                     deletePhoto: _deletePhoto,
//                   ),
//                 ),
//               );
//             },
//             child: Container(
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.white, width: 1),
//               ),
//               child: _photos[index].url.startsWith('http')
//                   ? Image.network(
//                       _photos[index].url,
//                       fit: BoxFit.cover,
//                     )
//                   : Image.file(
//                       File(_photos[index].url),
//                       fit: BoxFit.cover,
//                     ),
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _takePhoto,
//         tooltip: 'Take Photo',
//         child: const Icon(Icons.camera),
//       ),
//     );
//   }
// }

// class PhotoDetailPage extends StatefulWidget {
//   final Photo photo;
//   final List<Photo> photos;
//   final int initialIndex;
//   final void Function(int) deletePhoto;

//   const PhotoDetailPage({
//     Key? key,
//     required this.photo,
//     required this.photos,
//     required this.initialIndex,
//     required this.deletePhoto,
//   }) : super(key: key);

//   @override
//   State<PhotoDetailPage> createState() => _PhotoDetailPageState();
// }

// class _PhotoDetailPageState extends State<PhotoDetailPage> {
//   late int currentIndex;
//   bool _showDescription = false;

//   @override
//   void initState() {
//     super.initState();
//     currentIndex = widget.initialIndex;
//   }

//   void _showPreviousImage() {
//     setState(() {
//       currentIndex = (currentIndex - 1 + widget.photos.length) % widget.photos.length;
//       _showDescription = false;
//     });
//   }

//   void _showNextImage() {
//     setState(() {
//       currentIndex = (currentIndex + 1) % widget.photos.length;
//       _showDescription = false;
//     });
//   }

//   void _toggleDescription() {
//     setState(() {
//       _showDescription = !_showDescription;
//     });
//   }

//   void _deleteCurrentPhoto() {
//     widget.deletePhoto(widget.photos[currentIndex].id);
//     Navigator.pop(context);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.photos[currentIndex].title),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.delete),
//             onPressed: _deleteCurrentPhoto,
//           ),
//         ],
//       ),
//       body: Stack(
//         children: [
//           Center(
//             child: GestureDetector(
//               onTap: _toggleDescription,
//               child: InteractiveViewer(
//                 child: widget.photos[currentIndex].url.startsWith('http')
//                     ? Image.network(widget.photos[currentIndex].url)
//                     : Image.file(File(widget.photos[currentIndex].url)),
//               ),
//             ),
//           ),
//           if (_showDescription)
//             Positioned(
//               bottom: 20.0,
//               left: 20.0,
//               right: 20.0,
//               child: Container(
//                 color: Colors.black.withOpacity(0.7),
//                 padding: const EdgeInsets.all(10.0),
//                 child: Text(
//                   widget.photos[currentIndex].title,
//                   style: const TextStyle(color: Colors.white, fontSize: 20.0),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ),
//           Positioned(
//             left: 16.0,
//             top: MediaQuery.of(context).size.height / 2 - 50.0,
//             child: IconButton(
//               icon: const Icon(Icons.arrow_back_ios, size: 50.0),
//               onPressed: _showPreviousImage,
//             ),
//           ),
//           Positioned(
//             right: 16.0,
//             top: MediaQuery.of(context).size.height / 2 - 50.0,
//             child: IconButton(
//               icon: const Icon(Icons.arrow_forward_ios, size: 50.0),
//               onPressed: _showNextImage,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



// // 사진 capture (삭제기능 - x) 
// // 이미지가 로딩이 되기 전에 사진을 촬영하게 되면 화면 멈춤 발생 (?)

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

// Photo class
class Photo {
  final int id;
  final String url;
  final String title;
  final DateTime? captureDate;

  Photo({
    required this.id,
    required this.url,
    required this.title,
    this.captureDate,
  });
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 루트 위젯으로 MaterialApp 지정 (앱 전체 레이아웃 정의)
      home: Scaffold(
        // 기본적인 화면 레이아웃 구성 (앱바, 바디 등)
        appBar: AppBar(
          // 상단 앱바 정의
          title: const Text(
            // 앱 제목 표시
            '[ Photo Gallery ]',
            style: TextStyle(color: Colors.blue), // 글자색 파란색
          ),
          centerTitle: true, // 제목 가운데 정렬
        ),
        body: const PhotoGalleryApp(),
        // 화면 본문에 PhotoGalleryApp 위젯 배치
      ),
    );
  }
}

class PhotoGalleryApp extends StatefulWidget {
  // const PhotoGalleryApp({Key? key}) : super(key: key);
  const PhotoGalleryApp({super.key}); //상속 (부모 위젯으로부터 key 전달)

  @override
  State<PhotoGalleryApp> createState() => _PhotoGalleryAppState(); //메서드 재정의 (상태 객체 생성)
}

class _PhotoGalleryAppState extends State<PhotoGalleryApp> {
  final List<Photo> _photos = [
    Photo(
      id: 1,
      url: 'https://images.pexels.com/photos/2667738/pexels-photo-2667738.jpeg',
      // url: 'https://images.pexels.com/photos/19634978/pexels-photo-19634978.jpeg',
      title: 'Photo 1',
      captureDate: DateTime(2024, 07, 18),
    ),
    Photo(
      id: 2,
      url: 'https://images.pexels.com/photos/672101/pexels-photo-672101.jpeg',
      title: 'Photo 2',
      captureDate: DateTime(2024, 07, 18),
    ),
    Photo(
      id: 3,
      url: 'https://images.pexels.com/photos/1153655/pexels-photo-1153655.jpeg',
      title: 'Photo 3',
      captureDate: DateTime(2024, 07, 18),
    ),
    Photo(
      id: 4,
      url: 'https://images.pexels.com/photos/693794/pexels-photo-693794.jpeg',
      title: 'Photo 4',
      captureDate: DateTime(2024, 07, 18),
    ),
    Photo(
      id: 5,
      url: 'https://images.pexels.com/photos/59999/raspberries-fruits-fruit-berries-59999.jpeg',
      title: 'Photo 5',
      captureDate: DateTime(2024, 07, 18),
    ),
    // Photo(
    //   id: 6,
    //   url: 'https://images.pexels.com/photos/2363347/pexels-photo-2363347.jpeg',
    //   title: 'Photo 6',
    //   captureDate: DateTime(2024, 07, 18),
    // ),
    // Photo(
    //   id: 7,
    //   url: 'https://images.pexels.com/photos/429807/pexels-photo-429807.jpeg',
    //   title: 'Photo 7',
    //   captureDate: DateTime(2024, 07, 18),
    // ),
    // Photo(
    //   id: 8,
    //   url: 'https://images.pexels.com/photos/708777/pexels-photo-708777.jpeg',
    //   title: 'Photo 8',
    //   captureDate: DateTime(2024, 07, 18),
    // ),
  ];

Future<void> _takePhoto() async {
  // 카메라를 사용하여 사진 촬영 기능
  try {
    // ImagePicker 객체 생성 (사진 선택을 위한 라이브러리)
    final picker = ImagePicker();

    // 카메라로부터 사진 선택
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    // 사진 선택 시
    if (pickedFile != null) {
      // UI 업데이트를 위해 setState 호출
      setState(() {
        // 사진 목록에 새 사진 정보 추가
        _photos.add(Photo(
          id: _photos.length + 1, // 고유 ID 생성
          url: pickedFile.path, // 사진 파일 경로
          title: '촬영된 사진', // 기본 제목 설정
          captureDate: DateTime.now(), // 촬영 날짜 및 시간 기록
        ));
      });
    } else {
      // 사진 미 선택 시 처리 (예: 메시지 표시, 다시 시도 옵션 제공)
      // ...
    }
  } catch (e) {
    // 오류 발생 시 처리 (예: 콘솔 출력, 사용자 친화적 메시지 표시)
    print('사진 촬영 오류: $e');
  }
}


  @override
  Widget build(BuildContext context) {//화면 구성을 위한 위젯을 반환하는 메서드
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: _photos.length,// 그리드에 표시할 아이템 개수 (사진 목록 길이)
        itemBuilder: (context, index) {
          return GestureDetector(// 터치 감지 위젯 (사진 클릭 시 이벤트 처리)
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PhotoDetailPage(// PhotoDetailPage 위젯으로 이동 (사진 상세 정보 표시)
                    photo: _photos[index],// 선택된 사진 정보 전달
                    photos: _photos,// 전체 사진 목록 전달
                    initialIndex: index,// 초기 표시할 사진 인덱스 전달
                  ),
                ),
              );
            },
            child: Container(// 사진을 표시할 컨테이너 위젯
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: _photos[index].url.startsWith('http')
                  ? Image.network(
                      _photos[index].url,// url 기반 이미지 표시 (인터넷 이미지)
                      fit: BoxFit.cover,// 이미지 채움 방식 (컨테이너 채움)
                    )
                  : Image.file(// 파일 기반 이미지 표시 (로컬 이미지)
                      File(_photos[index].url),
                      fit: BoxFit.cover,
                    ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(// 하단 플로팅 버튼
        onPressed: _takePhoto,// 버튼 클릭 시 사진 촬영 함수 호출
        tooltip: 'Take Photo',// 버튼 툴팁 (길게 누를 때 표시되는 설명)
        child: const Icon(Icons.camera),// 카메라 아이콘 표시
      ),
    );
  }
}

class PhotoDetailPage extends StatefulWidget {
  final Photo photo;
  final List<Photo> photos;
  final int initialIndex;

  const PhotoDetailPage({ 
    Key? key,
    required this.photo,
    required this.photos,
    required this.initialIndex,
  }) : super(key: key);

  @override
  State<PhotoDetailPage> createState() => _PhotoDetailPageState();
  //createState 메서드의 반환 유형을 지정. PhotoDetailPage 위젯의 상태를 관리하는 클래스를 반환해야 한다는 것
  //StatefulWidget 클래스에서 상속받은 createState 메서드를 호출
  //_PhotoDetailPageState 클래스의 새 인스턴스를 반환
}

class _PhotoDetailPageState extends State<PhotoDetailPage> {
  late int currentIndex;
  bool _showDescription = false;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.initialIndex;
  }

  void _showPreviousImage() {
    setState(() {
      currentIndex = (currentIndex - 1 + widget.photos.length) % widget.photos.length;
      _showDescription = false;
    });
  }

  void _showNextImage() {
    setState(() {
      currentIndex = (currentIndex + 1) % widget.photos.length;
      _showDescription = false;
    });
  }

  void _toggleDescription() {
    setState(() {
      _showDescription = !_showDescription;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.photos[currentIndex].title),
      ),
      body: Stack(
        children: [
          Center(
            child: GestureDetector(
              onTap: _toggleDescription,
              child: InteractiveViewer(
                child: widget.photos[currentIndex].url.startsWith('http')
                    ? Image.network(widget.photos[currentIndex].url)
                    : Image.file(File(widget.photos[currentIndex].url)),
              ),
            ),
          ),
          if (_showDescription)
            Positioned(
              bottom: 20.0,
              left: 20.0,
              right: 20.0,
              child: Container(
                color: Colors.black.withOpacity(0.7),
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  widget.photos[currentIndex].title,
                  style: const TextStyle(color: Colors.white, fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          Positioned(
            left: 16.0,
            top: MediaQuery.of(context).size.height / 2 - 50.0,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios, size: 50.0),
              onPressed: _showPreviousImage,
            ),
          ),
          Positioned(
            right: 16.0,
            top: MediaQuery.of(context).size.height / 2 - 50.0,
            child: IconButton(
              icon: const Icon(Icons.arrow_forward_ios, size: 50.0),
              onPressed: _showNextImage,
            ),
          ),
        ],
      ),
    );
  }
}

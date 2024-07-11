> ```리뷰어: 김동규```  
> ```코더: 강대식```
</br>

#### 1. 주어진 문제를 해결하는 완성된 코드가 제출되었나요?  

* 홈(Agoda)에서 다른 페이지(AgodaSub, AgodaDetail)로 전환에 중점을 두고 개발을 하셨습니다.  
* 정보 구조도에 따르면 특정 지역의 호텔 이미지를 누를 때 해당 호텔의 객실 정보를 사용자 화면에 표시하고, 화면에 나타난 객실 정보 중 더 알고자하는 객실 이미지를 누르면 그 객실에 대상 상세 정보가 나타나게 되어있습니다.  
* 페이지 전환을 위한 페이지 설계는 잘 만들어진 이미지를 활용하셨습니다.
* 페이지 전환을 유도하는 이미지 배치에 대해 고민한 흔적이 보입니다.
   ```
        Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 FaIcon(FontAwesomeIcons.hotel),
    //               ],
    //             ),
        Stack(
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
          Stack(
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
   
---

#### 2. 핵심적이거나 복잡하고 이해하기 어려운 부분에 작성된 설명을 보고 해당 코드가 잘 이해되었나요?  
* 페이지를 전환하며 데이터를 전달할 때 이해를 돕기 위한 주석이 작성되어 있습니다.
* 이를 통해 대식님은 페이지 전환에 굉장히 신경 쓰신 것을 알 수 있었습니다.



</br>  

#### 3. 에러가 난 부분을 디버깅하여 “문제를 해결한 기록”을 남겼나요?  
* 에러 수정을 위해 작성된 코드에 대한 주석 처리 등의 조치를 하였습니다.
   ```
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

</br>  

#### 4.  회고를 잘 작성했나요?  

* 회고를 작성 중입니다.
</br>    

#### 5. 코드가 간결하고 효율적인가요?  
* 제가 판단할 수 없습니다.  

### AIFFEL Campus Online Code Peer Review Templete
---
- 코더 : 강대식
- 리뷰어 : 김재이
  
#### PRT(Peer Review Template)
---
##### 1. 주어진 문제를 해결하는 완성된 코드가 제출되었나요?

  - [O] 문제에서 요구하는 최종 결과물이 첨부되었는지 확인
  - [O] 문제를 해결하는 완성된 코드란 프로젝트 루브릭 3개 중 2개, 퀘스트 문제 요구조건 등을 지칭
![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/c09f8228-29c7-4dcb-8ca3-1de7d3988fab/2e38c2e2-00fc-4c98-9a91-8860c44dd4e1/Untitled.png)
![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/c09f8228-29c7-4dcb-8ca3-1de7d3988fab/a8aa8dab-11ad-47fe-ad9b-6d530d6cb9ab/Untitled.png)
![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/c09f8228-29c7-4dcb-8ca3-1de7d3988fab/cb503771-462c-4f65-a7b4-2959814ca1ec/Untitled.png)
  
##### 2. 전체 코드에서 가장 핵심적이거나 가장 복잡하고 이해하기 어려운 부분에 작성된 주석 또는 doc string을 보고 해당 코드가 잘 이해되었나요?

  - [O] 해당 코드 블럭에 doc string/annotation이 달려 있는지 확인
  - [O] 해당 코드가 무슨 기능을 하는지, 왜 그렇게 짜여진건지, 작동 메커니즘이 뭔지 기술.
  - [O] 주석을 보고 코드 이해가 잘 되었는지 확인
    - [O] 잘 작성되었다고 생각되는 부분을 캡쳐해 근거로 첨부합니다.
      ```
      // CatScreen에서 넘어온 데이터 is_cat을 저장하기 위한 내부 멤버 변수
      final bool is_cat;
      ```
      ```
       // pop() 메소드로부터 전달된 result 값을 not 변환해서 다시 is_cat 변수에 저장
       if (result != null) {
       is_cat = !result;
                      
      ```
##### 3. 에러가 난 부분을 디버깅하여 문제를 “해결한 기록을 남겼거나” ”새로운 시도 또는 추가 실험을 수행”해봤나요?

  - [O] 문제 원인 및 해결 과정을 잘 기록하였는지 확인
  - [O] 문제에서 요구하는 조건에 더해 추가적으로 수행한 나만의 시도, 실험이 기록되어 있는지 확인
    - [O] 잘 작성되었다고 생각되는 부분을 캡쳐해 근거로 첨부합니다.

    - 대식님의 진행 상황을 피어리뷰로 전해주셨습니다. 

##### 4. 회고를 잘 작성했나요?

  - [O] 주어진 문제를 해결하는 완성된 코드 내지 프로젝트 결과물에 대해 배운점과 아쉬운점, 느낀점 등이 기록되어 있는지 확인
  - [O] 전체 코드 실행 플로우를 그래프로 그려서 이해를 돕고 있는지 확인
    - (https://www.notion.so/modulabs/75a52f5045844205be6acca453527f33?pvs=4#54dd1c6a585c45d4bcd27e25d9d26e98)
      
##### 5. 코드가 간결하고 효율적인가요?

  - [O] 파이썬 스타일 가이드 (PEP8) 를 준수하였는지 확인
  - [O] 하드코딩을 하지않고 함수화, 모듈화가 가능한 부분은 함수를 만들거나 클래스로 짰는지
  - [O] 코드 중복을 최소화하고 범용적으로 사용할 수 있도록 함수화했는지
    -
```
    ElevatedButton(
                      onPressed: () async {
                        print('First Page에서의 is_cat: $is_cat');
                        is_cat = !is_cat;
                        
                        final result = await Navigator.push(
                          context, 
                          // DogScreen을 호출하면서 is_cat 변수 데이터를 함께 전달
                          MaterialPageRoute(builder: (context) => DogScreen(is_cat))
                        );

                        // pop() 메소드로부터 전달된 result 값을 not 변환해서 다시 is_cat 변수에 저장
                        if (result != null) {
                          is_cat = !result;
                        }
                      },
                      child : const Text('Next')
                    )
```
```
    ElevatedButton(
                      onPressed: () {
                        print('Second Page에서의 is_cat: $is_cat');
                        // pop 메소드와 함께 is_cat 데이터를 함께 전달
                        Navigator.pop(context, is_cat);
                      },
                      child : const Text('Back')
                    )
```
    - 인자를 전달하고 전달 받는 부분이 아주 깔끔했습니다. 최고!
    
### 참고 링크 및 코드 개선
---
- [ ] 코드 리뷰 시 참고한 링크가 있다면 링크와 간략한 설명을 첨부합니다.
- [ ] 코드 리뷰를 통해 개선한 코드가 있다면 코드와 간략한 설명을 첨부합니다. 

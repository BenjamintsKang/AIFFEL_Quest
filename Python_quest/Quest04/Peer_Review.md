### AIFFEL Campus Online Code Peer Review Templete
---
- 코더 : 강대식
- 리뷰어 : 김재이
  
#### PRT(Peer Review Template)
---
##### 1. 주어진 문제를 해결하는 완성된 코드가 제출되었나요?

  - [ㅇ] 문제가 해결되었고 최종 결과를 첨부해주셨습니다.
    ```
첫번째 정수를 입력하세요: 1
두번째 정수를 입력하세요: 1
연산자를 입력하세요: +
2
계속 계산기를 사용하시겠습니까?예
첫번째 정수를 입력하세요: 2
두번째 정수를 입력하세요: 2
연산자를 입력하세요: +
4
계속 계산기를 사용하시겠습니까?아니오
계산기를 종료합니다.
    ```
##### 2. 전체 코드에서 가장 핵심적이거나 가장 복잡하고 이해하기 어려운 부분에 작성된 주석 또는 doc string을 보고 해당 코드가 잘 이해되었나요?

  - [ ] 설명하는 주석은 없었습니다. ㅠ 하지만 함수로 구현된 부분들을 명확히 이해할 수 있었고, 피어리뷰를 통해 함수간 처리되는 순서를 명확히 설명해주셨습니다.

##### 3. 에러가 난 부분을 디버깅하여 문제를 “해결한 기록을 남겼거나” ”새로운 시도 또는 추가 실험을 수행”해봤나요?

  - [ㅇ] 굉장히 긴 주석을 통해 시도하셨던 내용을 볼 수 있었습니다. 주석처리된 부분과 새로 시도하신 내용을 비교할 수 있었습니다. 이것도 정말 재미있었지만 달라진 부분을 간단히 글로 정리해주셨으면 더 빨리 확인이 가능할 것 같아요!

    ```
    '''def input_num():
      num1 = input("첫번째 정수를 입력하세요: ")
      num2 = input("두번째 정수를 입력하세요: ")
      op = input("연산자를 입력하세요: ")

      calcul(num1, num2)
      op_check(op)
      ZeroDivisionError_check(num2_int)

...
    ```

##### 4. 회고를 잘 작성했나요?

  - [ ] 회고가 따로 없었습니다. 하지만 피어리뷰 설명을 통해 함수로 구현하는 것의 효율성 등 배우신 내용을 알 수 있었습니다. 실행플로우는 이미 코드 내에서 명확했지만, 피어 리뷰 설명을 통해서 한 번 더 짚을 수 있었습니다.
       
##### 5. 코드가 간결하고 효율적인가요?

  - [ㅇ] 파이썬 스타일 가이드 (PEP8) 를 준수했습니다.
  - [ㅇ] 하드코딩을 하지않고 함수화, 모듈화가 가능한 부분은 함수를 만들거나 클래스로 짜인 코드였습니다. 덕분에 이해하기 쉬웠습니다. 코드 중복이 거의 없었습니다.
    - [ㅇ] 특히 눈여겨봐진 부분은 종료까지 담당하는 계산기의 주 실행 함수여서 아래 첨부합니다.
      ```
def calcul_op(num1_int, num2_int, op):
    if op == '+':
        print(add(num1_int, num2_int))
    elif op == '-':
        print(sub(num1_int, num2_int))
    elif op == '*':
        print(mul(num1_int, num2_int))
    elif op == '/':
        print(div(num1_int, num2_int))
    elif op == '**':
        print(pow(num1_int, num2_int))

    result = input ("계속 계산기를 사용하시겠습니까?")
    if result == "예":
      input_num()
    else:
      print("계산기를 종료합니다.")
    ```  

```리뷰어: 김동규```  
```코더: 강대식```

#### 1. 주어진 문제를 해결하는 완성된 코드가 제출되었나요?  

* 아래 코드를 쓴 것이 궁금했었는데 코랩에 파일을 업로드 시 파일명 변경 있어서 넣으셨다는 같은조 이한나님의 답변을 듣고 좋은 참고가 되었습니다.
         #파일명 추출
      filename = next(iter(f))
* 완성된 코드를 받았는데요. 특수문자 처리에 관해 저희 조보다 더 세심한 처리를 하였습니다. 텍스트의 각 줄마다 특수문자 있는지 검토하셨네요. 꼼꼼해요.  
      AvengersRe = re.sub(r'[^\w\s]', ' ', AvengersLow)
      
      # 저희조: A와 z 사이에 '\' 같은 특수문자 제거 못함  
      re.sub('[^A-z]', ' ', avengers_txt)  
* 최빈값을 처리하는 방식에서 차이를 느껴서 신선했습니다.
      twoGram_Maxcounts = max(twoGram_counts,key=twoGram_counts.get)  
      max_twoGram_count = twoGram_counts[twoGram_Maxcounts]  
      
      #저희조  
      frequency_of_count_element = Counter(count) # count 리스트 내 페어:빈도 확인  
      frequency_dict = dict(frequency_of_count_element) # type 전환: collections.Counter  
                                                        #                        ☞ dict  
      max2gram = max(frequency_dict, key = frequency_dict.get)     # 최빈값에 대응하는 페어  

#### 2. 전체 코드에서 가장 핵심적이거나 가장 복잡하고 이해하기 어려운 부분에 작성된 주석 또는 doc string을 보고 해당 코드가 잘 이해되었나요?
* 프로그램 도입부에 흐름과 출력 형식을 제시해 주셔서 이해에 문제없었습니다.     
      # 다음 조건을 확인하여 Avengers.txt 에서 워드 단위의 2-GRAM 을 구하고 SCRIPT에서
      # 가장 빈도가 높은 2-GRAM 페어를 찾아라!
      # 조건 1. Avengers.txt 파일을 사용한다.
      #     2.모든 문자는 소문자로 변환한다.
      #     3. 모든 기호는 제거 한 후, 2-GRAM을 구한다.
      #     4. "I am hungry.....very much..."를 word 단위로 자르면,['i', 'am', 
               'hungry','very','much']가 되어야 한다.
      #     5. collections counter 사용
     
      # 출력 예시)
      # 입력값 : print(max2gram, countdict[max2gram]), print(Counter(baglist))
      # 출력값 : ('it','s') 68 Counter({'it','s'}:68, ('i','m'): 52, 'don','t') 
                 :43,...

#### 3. 체크리스트에 해당하는 항목들을 모두 수행하였나요?  

* 퀘스트 요구사항: 2gram 생성, 2gram 중 최빈값 출력을 확인


#### 4. 프로젝트에 대한 회고가 상세히 기록 되어 있나요?  

* 회고는 없었지만 리뷰도중 환경설정 문제 등을 언급하셨고 방향을 제시하셔서 코드 이해에 문제없었습니다. 더불어 코드 진행 방식이 저희랑 굉장히 유사해서 무엇을 하시려 하시는지에 대해 명확히 알 수 있었습니다.  

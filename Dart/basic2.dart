void main(){
  
  /* 런타임 상수 : final
   * 빌드타임 상수 : const
   */ 
  final String name = '블랙핑크';
  // final로 선언한 변수는 선언 후 값을 변경할 수 없음
  // name = 'BTS';
  print(name);
  
  const String name2 = "BTS";
  // const로 선언한 변수는 선언 후 값을 변경할 수 없음
  // name2 = "블랙핑크"
  print(name2);
  
  final DateTime now = DateTime.now();
  print(now);
  
  /* const를 사용하여 DateTime.now()를 사용하면 에러가 나는데,
   * const로 지정한 값은 빌드타임에 값을 알 수 있어야 하기 때문.
   * DateTime.now()의 경우, 실행을 해야만 값을 알 수 있어 에러가 남
  const DateTime now2 = DateTime.now();
  print(now2);
  */
  
  
  
  // 변수타입 : 변수 타입을 명시해주면 코드가 더욱 직관적이어서 유지보수가 편해짐
  
  //String : 문자열
  String myName = 'Zero';
  
  // int : 정수
  int myAge = 26;
  
  //double : 실수
  double isDouble = 2.5;
  
  // bool = 불리언 (True / False)
  bool isTrue = true;
  
  print(myName);
  print(myAge);
  print(isDouble);
  print(isTrue);
  
  
  
  //컬렉션 : 여러 값을 하나의 변수에 저장
  // List : 여러 값을 순서대로 저장
  List<String> blackPinkList = ['리사', '지수', '제니', '로제'];
    
  print(blackPinkList);
  print(blackPinkList[0]);
  
  print(blackPinkList.length); // 길이 반환
  
  blackPinkList[3] = '블링크';
  print(blackPinkList);
  
  // add() : 추가하고싶은 값을 입력
  blackPinkList.add('로제');
  print(blackPinkList);
  
  //where()
  final newList = blackPinkList.where(
    (name) => name == '리사' || name == '지수'
  );
  print(newList);
  print(newList.toList());
  
  final newBlackPink = blackPinkList.map(
    (name) => '블랙핑크 $name', // 리스트의 모든 값 앞에 '블랙핑크 '추가
  );
  print(newBlackPink);
  
  //reduce : 순회할 때마다 값을 쌓아감. List 타입과 같은 타입. 리스트의 요소들이 같은 타입이어야함
  // 매개변수 두 개를 입력받음.
  final allMembers = blackPinkList.reduce((value, element) => value + ',' + element);
  print(allMembers);
  
  //fold : 어떠한 차입이든 반환 가능
  final allMembers2 = 
    blackPinkList.fold<int>(0, (value, element) => value + element.length);
  
  print(blackPinkList);
  print(allMembers2);
  
  
  
  // Map 타입
  Map<String, String> dictionary = {
    'Harry Potter' : '해리 포터',
    'Ron Weasley' : '론 위즐리',
    'Hermione Granger' : '헤르미온느 그레인저',
  };
  
  print(dictionary['Harry Potter']);
  print(dictionary['Hermione Granger']);
  
  // 키와 값 반환하기
  print(dictionary.keys);
  print(dictionary.values);
  
  
  
  // Set 타입
  List<String> blackPinkSet = ['리사', '지수', '제니', '로제', '제니'];
 
  print(blackPinkSet);
  print(blackPinkSet.contains('로제'));
  print(blackPinkSet.toList());
  
  List <String> blackPink2 = ['로제', '지수', '지수'];
  print(Set.from(blackPink2));
  print(blackPink2.contains('제니'));
}
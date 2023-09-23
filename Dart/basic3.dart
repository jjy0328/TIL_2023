// Switch문을 사용하기 위해 enum 선언  
enum Status{
    approved,
    pending,
    rejected,
}

// 반환할 값이 있는 함수, positinal parameter
int addTwoNumbers(int a, int b){
  return a + b;
}

// named parameter
// required : 매개변수가 null값이 불가능한 타입이면 기본값을 지정해주거나 필수로 입력해야한다는 의미
int addTwoNumbers2({
  required int a,
  required int b,
}) {
  return a + b;
}

// 기본값을 갖는 positinal parameter
int addTwoNumbers3 (int a, [int b = 2]){
  return a + b;
}

// 기본값을 갖는 named parameter
int addTwoNumbers4 ({
  required int a,
  int b = 2,
}){
  return a + b;
}

// positinal parameter, named parameter 섞어서 쓰기
int addTwoNumbers5 (
  int a, {
    required int b,
    int c = 4,
}) {
  return a + b + c;
}


// typedef 선언
typedef Operation = void Function(int x, int y);

void add(int x, int y){
  print('result : ${x + y}');
}

void substract(int x, int y){
  print('result : ${x - y}');
}

// typedef의 first-class citizen : typedef로 선언한 함수를 매개변수로 넣어 사용가능
void calculate(int x, int y, Operation oper) {
  oper(x,y);
}


void main(){
  
  // 숫자 연산자
  double number = 2;
  print(number + 2);
  print(number + 0.3);
  print(number - 2);
  print(number * 2);
  print(number / 2);
  
  number++;
  number--;
  
  
  //null 연산자 : 타입 뒤에 ?를 명시하여 null값을 가질 수 있음
  double? num = 1;
  // 아래의 코드는 에러가 날 수 있음
  //double num2 = null;
  // 새로운 값을 추가할 때 ??를 추가하면 기존 값이 null인 때만 값이 저장됨
  double? num2;
  num2 ??= 3;
  print(num2);
  // 기존 값이 null이 아니므로 새로운 값이 추가가 되지 않음.
  num2 ??= 4;
  print(num2);
  
  
  // 값 비교연산자
  int number1 = 1;
  int number2 = 2;
  
  print(number1 > number2);
  print(number1 < number2);
  print(number1 >= number2);
  print(number1 <= number2);
  print(number1 == number2);
  print(number1 != number2);
  
  
  // 타입비교 연산자
  int number3 = 1;
  
  print(number3 is int);
  print(number3 is String);
  
  
  // 논리 연산자
  print("논리연산자");
  bool result = 12 > 10 && 1 > 0;
  print(result);
  
  bool result2 = 12 > 10 && 0 > 1;
  print(result2);
    
  bool result3 = 12 > 10 || 1 > 0;
  print(result3);
    
  bool result4 = 12 > 10 || 0 > 1;
  print(result4);
    
  bool result5 = 12 < 10 || 0 > 1;
  print(result5);
  
  
  // if문
  print('===start if===');
  int number6 = 2;
  
  if (number6 % 3 == 0) {
    print("3의 배수입니다");
  } else if (number6 % 3 == 1){
    print("나머지가 1입니다");
  } else {
    print("메롱");
  }
  
  // status의 값 할당
  Status status = Status.approved;

  switch (status) {
    case Status.approved:
      print('승인 상태입니다.');
      break;
    case Status.pending:
      print('대기 상태입니다.');
      break;
    case Status.rejected:
      print('거절 상태입니다.');
      break;
    default:
      print('알 수 없는 상태입니다.');
  }

  // 모든 열거형 상수를 출력
  print(Status.values);
  
  
  // for문
  print('===start for===');
  for (int i = 0; i < 3; i++){
    print(i);
  }
  
  List<int> numberList = [3,6,9];
  for (int n in numberList) {
    print(n);
  }
  
  
  
  //while문과 do...while문
  
  //while문 : 조건 확인 후 반복문 실행
  print('===start while===');
  int total = 0;
  
  while (total < 10){
    total++;
  }
  
  print(total);
  
  // do..while문 : 특수한 형태의 while문. 반복문 실행 후 조건 확인
  int total2 = 0;
  do {
    total2 += 1;
  } while(total2<10);
  
  print(total2);
  
  
  
  // 함수와 람다
  // void 함수 : main() 함수처럼 반환할 값이 없을 때 사용 가능
  print('===start function===');
  print(addTwoNumbers(1,2));
  
  // named parameter
  print(addTwoNumbers2(a:1,b:2));
  
  // 기본값을 가지는 positinal parameter
  print(addTwoNumbers3(1));
  
  // 기본값을 가지는 named parameter
  print(addTwoNumbers4(a:1));
  
  //positinal + named
  print(addTwoNumbers5(1, b:3, c:7));
  
  
  
  // 람다함수
  print('===start lambda===');
  List<int> numbersLst = [1,2,3,4,5];
  
  // 일반 함수로 모든 값 다 더하기
  final allMembers = numbersLst.reduce((value, element) {
    return value + element;
  });
  print(allMembers);
  
  //람다함수로 모든 값 다 더하기
  final allMembers2 = numbersLst.reduce((value, element) => value + element);
  print(allMembers2);
  
  
  
  // typedef와 함수
  print('===start typedef===');
  Operation oper = add;
  oper(1,2);
  
  oper = substract;
  oper(1,2);

  calculate(1,2,add); 
  
  
  //try ... catch
  print('===start try ... catch===');
  try {
    // 에러가 없을 때 실행
    final String name = 'zero';
    print(name);
  } catch(e){
    //에러가 있을 때 실행할 로직
    print(e);
  }
  
  // 에러 발생시키기
    try {
    // 에러가 없을 때 실행
    final String name2 = 'zero';
    
    //에러 발생시키기
    throw Exception("이름이 잘못되었습니다.");
    print(name2);
  } catch(e){
    //에러가 있을 때 실행할 로직
    print(e);
  }
}
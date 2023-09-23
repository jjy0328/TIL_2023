// entry
void main() {
  print("Hello, Dart!");
  
  /* 변수 선언
  변수명은 중복이 불가능하며, 같은 변수명 사용 시 에러가 발생함
  */
  var name = "코드팩토리";
  print(name);
  
  /* dynamic을 사용한 변수 선언
   var 타입을 사용하면 변수가 고정되지만 dynamic을 사용하면 변수의 타입이 고정되지 않는다
   */
   
  dynamic name2 = "코드팩토리";
  name2 = 3;
  print(name2);
  
}
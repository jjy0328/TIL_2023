// 클래스 선언
class Idol {
  // 방법 1) 클래스에 종속되는 변수 지정
//   String name = "블랙핑크";
  
  // 클래스에 종속되는 함수인 method 지정
  void sayName() {

    // 클래스 내부의 속성을 지칭할 땐 this 사용
    // this.name은 Idol 클래스의 name 변수 지칭
    print("저는 ${this.name}입니다");
    
    // 스코프 안에 같은 속성 이름이 하나만 존재한다면 this 생략 가능
    print("저는 $name입니다");
  }
  
  // 방법 2) 생성자 constructor : 클래스의 인스턴스 생성하는 메서드
  // 생성자에서 입력받는 변수들은 일반적으로 final 사용
//   final String name;
  
  // 방법 3) 생성자 선언 : 클래스와 같은 이름이어야 함
//   Idol(String name) : this.name = name;
  
  // 방법 4) this를 사용할 경우 해당되는 변수에 자동으로 매개변수 저장
  final String name;
  Idol(this.name);
  
  
}

void main(){
  // Idol 인스턴스 생성
  Idol blackPink = Idol('블랙핑크');
  // 메서드 생성
  blackPink.sayName();
  
  Idol bts = Idol('bts');
  bts.sayName();
}
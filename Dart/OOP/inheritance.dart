// 상속
class Idol {
  final String name;
  final int membersCount;
  
  Idol(this.name, this.membersCount);
  
  void sayName(){
    print("저는 ${this.name}입니다.");
  }
  
  void sayMemberCount(){
    print("${this.name} 멤버는 ${this.membersCount}명입니다.");
  }
}


//extend를 사용하여 상속받기
class BoyGroup extends Idol{
  
  // 상속받은 생성자
  BoyGroup(
    String name,
    int memberCount,
  ) : super(  // 부모 클래스 지칭
  name,
  memberCount
  );
  
  //상속받지 않은 기능
  void sayMale(){
    print("저는 남자아이돌입니다.");
  }
}

//오버라이드 : 부모 클래스 또는 인터페이스에 정의된 매서드 재정의
// override 키워드는 생략 가능함
class GirlGroup extends Idol{
  GirlGroup(
    super.name,
    super.sayMemberCount,
  );
  
  @override
  void sayName(){
    print("저는 여자아이돌 ${this.name}입니다.");
  }
}

//인터페이스 : 공통으로 필요한 기능을 정의만 해두는 역할
// 인터페이스를 지정하는 키워드는 따로 없음
// 상속은 단 하나의 클래스만 가능하지만 인터페이스는 적용 개수에 제한이 없음

//implement 키워드를 사용하면 원하는 클래스 인터페이스 가능
class GirlGroup2 implements Idol {
  final String name;
  final int membersCount; // membersCount 속성 추가

  GirlGroup2(
    this.name,
    this.membersCount,
  );

  void sayName() {
    print("저는 여자아이돌 ${this.name}입니다.");
  }

  void sayMemberCount() {
    print("${this.name} 멤버는 ${this.membersCount}명입니다.");
  }
}

void main(){
  BoyGroup bts = BoyGroup('BTS', 7);
  
  bts.sayName(); // 부모한테 물려받은 메서드
  bts.sayMemberCount(); // 부모한테 물려받은 메서드
  bts.sayMale(); // 자식이 새로 추가한 메서드
  
  GirlGroup blackPink = GirlGroup('블랙핑크', 4);
  blackPink.sayName(); //자식 클래스의 오버라이드된 메서드 사용
  
  //Idol 클래스의 메서드가 실행됨
  blackPink.sayMemberCount();
  
  GirlGroup2 idle = GirlGroup2('아이들', 6);
  idle.sayName();
  idle.sayMemberCount();
}

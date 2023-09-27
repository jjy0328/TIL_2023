// Getter/Setter
class Idol {
  String _name = '블랙핑크';
  
  // get 키워드를 사용하여 게터임을 명시
  // 메서드와 다르게 매개변수를 전혀 받지 않음
  // 게터를 사용하면 외부에서도 private variable에 간접적으로 접근 가능
  String get name{
    return this._name;
  }
  
  // set 키워드를 사용하여 세터 선언
  // 세터는 딱 하나의 매개변수를 받을 수 있음
  set name(String name){
    this._name = name;
  }
}
  void main(){
    // 게터,세터는 모두 변수처럼 사용함
    Idol blackPink = Idol();
    blackPink.name = '에이핑크'; // 세터
    print(blackPink.name);  // 게터
}
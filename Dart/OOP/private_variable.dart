// 프라이빗 변수 : 같은 파일에서만 접근 가능한 변수
// 프라이빗 변수 선언은 _ 기호로 시작해서 선언 가능
class Idol {
  String _name;
  
  Idol(this._name);
}


void main() {
  Idol blackPink = Idol('블랙핑크');
    
  // 같은 파일에서는 _name 변수에 접근 가능
  print(blackPink._name);
}
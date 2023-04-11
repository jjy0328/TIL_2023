Kaggle Data로 BIG dataset handling 실습을 하다 생소한 문법을 발견했다.
그것은 바로 **subprocess.Popen**!
궁금해서 바로 Python document를 찾아봤다.

# Subprocess.Popen?

subprocess에 대한 정의는 아래와 같다.
>"모듈은 새로운 프로세스를 생성하고, 그들의 입력/출력/에러 파이프에 연결하고, 반환 코드를 얻을 수 있도록 합니다."

그래서 이게 대체 무슨 의미인 것인가...!!!!
쉽게 풀어쓰자면 아래와 같다.

우선, 새로운 프로세스란,
운영 체제가 현재 실행 중인 프로그램과는 독립적인 새로운 실행 환경을 만들어주는 것을 의미한다.

`subprocess`는 우선, 외부 명령어 실행 라이브러리이다. 새로운 실행 환경을 만들어 시스템 명령어나 외부 프로그램을 실행하도록 만들어주는 것이다.
그리고 `Popen`이라는 생성자는 입력(input), 출력(output), 에러(error) 등을 파이프라는 통신 방법을 통해 제어한다. 이 파이프 덕분에 서로 다른 프로세스 간의 데이터를 쉽게 주고받을 수 있다.

---

code refer : [Python 자습서: Subprocess 모듈을 사용하여 외부 명령 호출](https://www.youtube.com/watch?v=2Fp1N6dof0Y)
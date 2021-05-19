// protocol
// 특정 클래스와 관련없는 프로퍼티, 메서드 선언 집합 - 중요한것은 메서드는 선언만 되어있음
// 함수(메서드)정의는 없음
// 기능이나 속성에 대한 설계도
// 클래스(구조체,열거형 등) 에서 채택(adopt)하여 메서드를 구현해야 함

// 자바나 c#에 interface 기능, c++의 abstract base class(추상부모클래스)

// protocol은 다중 상속도 가능함

protocol SomeProtocol {
  var x: Int { get set } // 읽기와 쓰기가 가능
  var y: Int { get } // 읽기 전용
  static var tx: Int  { get set }
  static func typeMethod()
  func random() -> Double
}


// 예제
protocol Runnable {
  var x : Int { get set }
  func run()
}

class Man : Runnable {          // 채택, adopt
  var x : Int = 1               // 준수, conform
  func run() { print("run~") }  // 준수, conform
}



// 연습
protocol B {
  func bb(x: Int) -> Int
}

class C {}
class A : C, B {
  func bb(x: Int) -> Int {
    return x*x
  }
}

var doublex = A()
print(doublex.bb(x: 10))



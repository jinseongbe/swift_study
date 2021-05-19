// 구조체/enum의 인스턴스는 값타입이고 클래스의 인스턴스는 참조타입(레퍼런스타입)이다.
// 구조체는 상속 불가!
struct Resolution {
  var width = 1024
  var height = 76
}

let myComputer = Resolution()
print(myComputer.width)


// Memberwise Initializer : 구조체는 클래스와 다르게 맴버의 개수만큼 맴버의 이니셜라이저를 자동으로 만들어줌, 내부적으로
struct Resolution2 {
  var width : Int
  var height : Int
}

let myComputer2 = Resolution2(width: 1000, height: 500)
print(myComputer2.width)


// class 내의 구조체 사용시
class VideoMode {
  var resolution = Resolution()
  var frameRate = 0.0
}

let myVideo = VideoMode()
print(myVideo.resolution.width)


// 스위프트의 기본 데이터 타입은 모두 구조체이다
/*
public struct Int
public struct Double
public struct String
public struct Array
*/

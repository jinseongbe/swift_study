// enum - 열거형
// 관련있는 데이터들이 멤버로 구성되어 있는 자료형
// 목적.1) 원치 않는 값이 잘못 입력되는 것 방지
//     2) 입력 받을 값이 한정되어 있을때
//     3) 특정 값 중 하나만 선택하게 할 떄

enum Planet {
  case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

enum Compass {
  case North
  case South
  case East
  case West
}

print(Compass.North)
var direction = Compass.West
direction = .East
print(direction, type(of: direction))

switch direction {
case .North:
  print("북")
case .South:
  print("남")
case .East:
  print("동")
case .West:
  print("서")
}

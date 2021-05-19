// 익스텐션(extension)
// 스위프트 클래스, 구조체, 열거형, protocol에 새로운 기능을 추가하는것
// 다만 익스텐션은 하위 클래스를 생성하거나 참조하지 않고 기존의 클래스에 메서드, 생성자, computed property 등의 기능을 추가 하기 위하여 사용
// 스위프트 언어의 built-in 클래스와 ios 프레임워크에 내장된 클래스 기능을 추가할때, 익스텐션을 이용하면 매우 효과적임
extension Double {
  var squared : Double {
    return self*self
  }
}

print(3.1.squared)

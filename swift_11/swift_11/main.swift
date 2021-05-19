class Man{
  var age: Int
  var weight : Double
  func display(){
    print(age, weight)
  }
  
  init?(age: Int, weight: Double){
    if age <= 0 {
      return nil
    } else {
      self.age = age
    }
    self.weight = weight
  } // failable initialize
}

// 옵셔널 형으로 선언
var kim: Man? = Man(age: 10, weight: 20.5)

// 1.옵셔널 바인딩
if let kim1 = kim {
  kim1.display()
}

// 2.인스턴스 생성과 동시에 옵셔널 바인딩 - 이 방법을 더 많이 씀
if let kim2 = Man(age:2, weight: 5.5) {
  kim2.display()
}

// 3.인스턴스 생성하면서 바로 강제 언래핑 - 위허한 방법, nil 값이라면 crash 발생하며 앱 꺼짐
var kim3 : Man = Man(age: 4, weight: 10.5)!
kim3.display()

// 4.옵셔널 인스턴스를 사용시 강제 언래핑 - 위험한 방법,  nil 값이라면 crash 발생하며 앱 꺼짐
var kim4 : Man? = Man(age: 4, weight: 10.5)
kim4!.display()

class Man{
  var age: Int = 1
  var weight: Double = 3.5
  func display(){
    print("age = \(age), weight = \(weight)")
  }
  
  // designated initializer (이게 있어야 밑에 생성자 중첩을 사용 가능, 기본적으로 정의는 해줘야 하기 떄문!)
  init(age: Int, weight: Double){
    self.age = age
    self.weight = weight
  }
  
  // method overloading : 생성자 중첩
  init(age: Int){
    self.age = age
  }
}

var kim: Man = Man(age:10, weight:20.5)
var kim1: Man = Man(age:10)

kim.display()
kim1.display()

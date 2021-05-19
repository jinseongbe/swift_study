// 상속 받은 클래스들을 하위 클래스(subclass) 또는 자식 클래스(child class)라 한다
// 하위 클래스가 상속받은 클래스는 부모 클래스(parent class) 또는 상위 클래스(super class)라 한다
// 단일 상속 - single inheritance, 스위프트에서 하위클래스는 단 하나의 부모클래스만 상속 받을 수 있다.
//           c++은 다중 상속 가능, 자바는 단일상속

// 부모 클래스는 하나만 가능하며, 콜론 다음이 여러개 이면 나머지는 프로토콜이다.
class Man{
  var age: Int
  var weight : Double
  func display(){
    print(age, weight)
  }
  
  init(age: Int, weight: Double){
    self.age = age
    self.weight = weight
  }
}

class Student : Man {
  
}

var kim : Man = Man(age:10, weight: 20)
kim.display()
var lee : Student = Student(age: 5, weight: 10)
lee.display()
print(lee.age)


// super : 부모 메서드 호출 시 사용
class Student1 : Man {
  var name : String = "진성"
  func displayS() {
    print(age, weight, name)
  }
  
  init(age: Int, weight: Double, name: String) {
    super.init(age: age, weight: weight)
    self.name = name
  }
}

var lee1: Student1 = Student1(age:20, weight: 53.4, name: "홍길동")
lee1.displayS()
lee1.display()


// override : 부모와 자식에 같은 메서드가 있으면 자식 메서드를 우선 사용하는것
// 비교 : overloading - 하나의 클래스(함수) 안에 같은 이름의 함수를 여러개 쓰는것(매개변수와 자료형을 다르게 하여 구분 사용)
class Student2 : Man {
  var name : String = "진성"
  override func display() {
    print(age, weight, name)
  }
  
  init(age: Int, weight: Double, name: String) {
    super.init(age: age, weight: weight)
    self.name = name
  }
}

var lee2: Student2 = Student2(age:23, weight: 43.4, name: "김길동")
lee2.display()


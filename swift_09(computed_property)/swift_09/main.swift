// instance : 실제로 메모리에 할당된 객체(object)

// property 초기화 방법 1.직접준다
class Man1 {
  var age : Int = 25
  var weight : Int = 70
}
let human1 = Man1()
print(human1.age, human1.weight)

// property 초기화 방법 2.옵셔널 변수 사용
class Man2 {
  var age: Int?
  var weight : Double!
}
let human2 = Man2()
print(human2.age, human2.weight)

// property 초기화 방법 3.생성자 함수 사용
class Man3 {
  var age: Int
  var weight : Double

  // designated initializer : 모든 프로퍼티(age, weight)를 다 초기화시키는 생성자
  init(urAge: Int, urWeight: Double) {
    age = urAge   // self.age = urAge가 생략 되어있는 것임
                  // 주의 할 것: 만약 init(age : Int, etc.. ) 로 민들면 age변수가 겹치기 떄문에 self.age로 받아야함!
                  // 기본적으로 변수명을 같게 해서 self를 쓰는것이 좋음
    weight = urWeight
  }
  
  // 소멸자
  deinit{
    // 쓸일 거의 없을듯?
  }
  
  func display() {
    print("나이 = \(age), 몸무게 = \(weight)")
  }

}
let human3 = Man3(urAge: 10, urWeight: 20)
human3.display()



// method
class Man4 {
  var age: Int = 20
  var weight : Double = 56
  
  // 인스턴스 메서드
  func display() {
    print("나이 = \(age), 몸무게 = \(weight)")
  }
  
  // 클래스 메서드, class func은 자식 클래스에서 override가 가능함
  class func cM() {
    print("cM은 클래스 메서드 입니다.")
  }
  
  // static 클래스 메서드, static func은 자식 클래스에서 override가 불가능함!
  static func scM() {
    print("scM은 클래스 메서드(static)")
  }
}

var human4 : Man4 = Man4() // default initializer 호출을 하기 위함

human4.display()
Man4.cM()
Man4.scM()


// stored property와 computed property
// stored property : 기본적으로 초기에 설정하여 사용하는 property
// computed property : property가 설정되거나 검색되는 시점에서 계산 또는 파생된 값
class Man5 {
  var age : Int
  var weight = 3.5
  
  // computed property
  var manAge : Int {
    get {      // 값을 리턴하는 게터(getter) 메서드
      return age - 1    // setter가 없으면 get의 중괄호 바깥을 생략 가능, (return age - 1)이것만 써도 됨
    }
    
//    return age - 1
    
//    set(newValue) {      // 값을 대입하는 세터(setter) 메서드
//      age = newValue + 1
//    }
    
    set {      // newValue라는 기본 키워드를 사용하면 괄호 생략 가능!
      age = newValue + 1
    }
  }
  
  func display() {
    print("age = \(age), weight = \(weight)")
  }
  
  init(age: Int, weight: Double) {
    self.age = age
    self.weight = weight
  }
}

let human5 = Man5(age: 10, weight: 2)
human5.display()
print(human5.manAge)
print(human5.age)
human5.manAge = 50
print(human5.age)


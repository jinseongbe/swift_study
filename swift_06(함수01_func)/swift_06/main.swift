// 함수와 메서드(method) 클로저(closure)
// 함수를 class/struct/enum 내에 선언하면 메서드라 부름

// 함수
func sayHello() {
  print("hello")
}
sayHello()

func message(name: String, age: Int) -> String {
  return "\(name), \(age)"
}
print(message(name: "JinSung", age: 25))


func add(x: Int, y: Int) -> Int {
  return x + y
}
print(add(x: 10, y: 20))

// 내부 매겨변수 이름과 외부 매겨변수 이름
// func add2(외부 내부: 자료형, 외부 내부: 자료형) -> 자료형 {}
func add(first x: Int, second y: Int) -> Int {
  return x + y
}
let x = add(first: 10, second: 20)
print(x)

// 외부매개변수명을 생략한다는 의미, 다른 언어처럼 호출 가능하지만 추천하지 않음!
func add2(_ x: Int, _ y: Int) -> Int {
  return x + y
}
print(add2(30, 70))
print(type(of: add2))

// 첫번째 외부매개변수명만 생략하는 경우가 많음, Object-C언어의 호출 방식이 이러함
func add1(_ x: Int, with y: Int) -> Int {
  return x + y
}
print(add1(10, with:50))
print(type(of: add1))


// default 매개변수(argument) 정의하기!
// 함수 만들때 입력값의 문자는 parameter이고 함수를 사용할때 입력되는 값은 argument(인자)이다
func message2(name: String, age: Int = 0) -> String {
  return "\(name), \(age)"
}
print(message2(name: "JinSung"))


// 함수로 부터 여러개의 결과를 반환하기(튜플로 묶어서 반환)
func converter(length: Float) -> (yards: Float, centimeters: Float, meters: Float) {
  let yards = length * 0.0277778
  let centimeters = length * 2.54
  let meters = length * 0.0254
  return (yards, centimeters, meters)
}
var lengthTuple = converter(length: 20)
print(lengthTuple)
print(lengthTuple.yards)
print(lengthTuple.centimeters)
print(lengthTuple.meters)

print(type(of: converter))


// 가변 매개변수(variadic parameter)
func displayNums(nums: Int...) {
  for i in nums {
    print(i, terminator: "-")
  }
}
displayNums(nums: 1, 2, 3, 4)
print()


// inout 매개변수: call by reference 구현
// swift는 기본적으로 call by value인데 이것을 call by reference로 구현하는 방법
// 함수가 값을 반환한 후에도 매개변수에 일어난 변화를 유지하려면, 함수의 선언부에서 매개변수를 입출력 매개변수(inout parameter)로 선언해야함
var myValue = 8
func doubleValue(value: inout Int) -> Int {
  value += value
  return value
}
print(myValue)
print(doubleValue(value: &myValue))
print(myValue)




// swift는 함수를 데이터 타입처럼 처리할 수 있음
// swift의 함수는 1급 객체이다(first class object, first class citizen)
// 다음 조건을 충족하는 객체를 1급 객체라고 한다.
// 1) 변수에 저장 할 수 있다.
// 2) 매개변수로 전달 할 수 있다.
// 3) 리턴값으로 사용 할 수 있다.

// 함수를 변수에 저장 하는 것
func inchesToFeet(inches: Float) -> Float {
  return inches * 0.0833333
}
let toFeet = inchesToFeet

var result = toFeet(10)
print(result)
print(type(of: toFeet))

// 함수를 매개변수로 사용하는 경우
func inchesToYard (inches: Float) -> Float {
  return inches * 0.0277778
}
let toYards = inchesToYard

func outputConversion(converterFunc: (Float) -> Float, value: Float) {
  let result = converterFunc(value)
  print("Result = \(result)")
}
print(type(of: outputConversion))

outputConversion(converterFunc: toFeet, value: 6)
outputConversion(converterFunc: toYards, value: 6)

// 함수를 리턴값으로 사용하는 경우
func decideFunction(feet: Bool) -> (Float) -> Float {
  if feet {
    return toFeet
  } else {
    return toYards
  }
}

let testFunc = decideFunction(feet: false)
print(testFunc(6))

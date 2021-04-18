// 함수 클로저(Closure, 익명함수)
// 클러저 표현식은 독립적인 코드블록
let add1 = { (x: Int, y: Int) -> Int in return(x+y) }
print(add1(10, 30))


let sayHello = { print("Hello") }
sayHello()


let multiply1 = { (val1: Int, val2: Int) -> Int in return (val1 * val2) }
print(multiply1(6, 7))


// 후행 클로저(trailing closure)
// 클로저가 함수의 마지막 argument라면 마지막 매개변수 이름을 생략한 후 함수 소괄호 외부에 클로저를 구현
let multiply = { (val1: Int, val2: Int) -> Int in
  return val1 * val2
}
var  result = multiply(10, 20)
print(result)

let add = { (val1: Int, val2: Int) -> Int in
  return val1 + val2
}
result = add(10, 20)
print(result)


func math(x: Int, y: Int, cal: (Int, Int) -> Int) -> Int {
  return cal(x, y)
}
result = math(x: 16, y: 2, cal: add)
print(result)
result = math(x: 16, y: 2, cal: multiply)
print(result)
result = math(x: 32, y: 2,  cal: { (val1: Int, val2: Int) -> Int in return val1 * val2 })
print(result)

// 후행 클로저 사용!
result = math(x: 32, y: 2) { (val1: Int, val2: Int) -> Int in return val1 + val2 }
print(result)

// + return 생략
result = math(x: 32, y: 2) { (val1: Int, val2: Int) in return val1 + val2 }
print(result)

// + 매개변수 생략하고 단축인자(shorthand argument name)사용
result = math(x: 32, y: 2) { return $0 + $1 }
print(result)

// + 클러저에 리턴값이 있으면 마지막 줄을 리턴하므로 return 생략
result = math(x: 32, y: 2) { $0 + $1 }
print(result)


var num1 = 10
var num2 : Int = 20 // 일반적으로 초깃값을 주지 않을 경우에만 자료형을 씀
var num3 : Int      // 위 처럼 쓰는것을 type annotation이라고 함
num3 = 30

let num4 = 50
let num5 : Int = 100
let num6 : Int  // 처음에 할당하지 않아도 최초에 한번은 따로 할당 가능!
num6 = 120

print(num1, num2, num3, separator: "...")
print(num4, num5, num6, separator: "\t\t")

print(type(of: num1))
let s = MemoryLayout.size(ofValue: num1)
let t = MemoryLayout<Double>.size
print(s, t)

// Int
print("Int32 min: \(Int32.min), Int32 max: \(Int32.max)")

// Bool
var booool : Bool = false
print(booool)

// Character
var myChar1 : Character
var myChar2 : Character = "X"
print("swift에서는 문자 하나도 쌍따옴표로 묶어줘야함", myChar2)
var myChar4 = "\u{0058}"
print(myChar4)

// String
var userName : String = "Kim"
var age = 25
var message = "\(userName)의 나이는 \(age)입니다."
print(message)

// 특수문자, 이스케이프 시퀀스
/*
 \n = 개행
 \r = 캐리지 리턴(carriage return)
 \t = 수평 탭
 \\ = 역슬래쉬
 \" = 큰따옴표
 \' = 작은따옴표
 \u{nn} - 16진수가 배치되는 1바이트 유니코드 스칼라
 \u{nnnn} - 16진수가 배치되는 2바이트 유니코드 스칼라
 \u{nnnnnnnn} - 16진수가 배치되는 4바이트 유니코드 스칼라
*/

var x = 0.0, y = 0.2, z = 0.3
print(x, y, z)

// let을 쓰면 퍼포먼스가 빨라지므로 let을 쓸 수 있다면 최대한 사용하도록 할 것!

// Tuple
let myTuple = (10, 12.1, "Hi")
print(myTuple)

let (myInt, myFloat, myString) = myTuple
let (myInt2, _, myString2) = myTuple
let myTuple3 = (count: 10, length: 12.1, message: "Hi")
print(myTuple3.message)



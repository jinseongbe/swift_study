// 연산자
// 닫힌 범위 연산자
for i in 5...9 {
  print(i, terminator: " ")
}
print()


// 반 열림 범위 연산자(half-open range operator)
for i in 5..<9 {
  print(i, terminator: " ")
}
print()


//One-Sided Ranges
let names = ["a", "b", "c", "d"]
for name in names[2...] {
  print(name, terminator: " ")
}
print()
for name in names[...2] {
  print(name, terminator: " ")
}
print()
for name in names[..<2] {
  print(name, terminator: " ")
}
print()


// 삼항 연산자?:
var x1 = 1
var x2 = 2
print("Larget number is \(x1 > x2 ? x1 : x2)")


// Nil-Coalescing Operator, nil합병연산자 ??
// 사용법 : 옵셔널변수 ?? nil일 때 할당되는 값
// 옵셔널 변수의 값이 nil이면 ?? 다음값으로 할당됨
let defalutColor = "black"
var userDefinedColor: String?

var myColor = userDefinedColor ?? defalutColor  // nil이므로 defaultColor인 black으로 할당됨
print(myColor)

userDefinedColor = "red"
myColor = userDefinedColor ?? defalutColor      // nil이 아니므로 원래 값인 red가 할당됨
print(myColor)  // 주의, optional(red)가 아님!


// for 반복문
for i in 1...5 {
  print(i, terminator: "><>")
}
print()


for _ in 1...5 {
  print("그냥 돌릴때", terminator: " ")
}
print()


let nums = [1, 2, 3, 6, 7, 3, 9, 20]
for i in nums {
  print(i, terminator: " ")
}
print()


let numberOfLegs = ["spider": 8, "and": 6, "cat": 4]
print(type(of: numberOfLegs))
for (animalName, legCount) in numberOfLegs {
  print("\(animalName)s have \(legCount) legs")
}


// while 반복문
var myCount = 0
while myCount < 10 {
  myCount += 1
}
print("myCount =", myCount)


// repeat-while 반복문
var i = 10
repeat {
  i -= 1
  print(i, terminator: " ")
} while (i > 0)
print()


// break, continue
for i in 1...10 {
  if i == 4 {
    print("continue")
    continue
  }
  
  print(i, terminator: " ")
  
  if i == 7 {
    print("end")
    break
  }
}


// if 조건문
// swift에서는 if문이 한줄이라도 반드시 {} 괄호를 사용해줘야한다!

// else if 조건문
var num = 3
if num == 1 || num == 3 {
  print("남자")
} else if num == 2 || num == 4 {
  print("여자")
} else {
  print("외국인")
}


// guard문 (조건식이 거짓이면 실행)
// guard문은 기본적으로 특정 조건에 맞지 않을 경우에 현재의 함수나 반복문에서 빠져 나갈 수 있도록 하는 조기출국 전략을 제공
func printName(firstName:String, lastName:String?) {
  // if let
  if let lName = lastName {
    print(lName, firstName)
  } else {
    print("if let", "성이 없네요!")
  }
  
  // guard let
  guard let lName = lastName else {
    print("guard let", "성이 없네요!")
    return
  }
  print(lName, firstName) // block 바깥에서 lName을 사용 가능..!
}

printName(firstName: "길동", lastName: nil)


// switch-case 문
// 각 경우의 구문마다 break가 들어가있고 생략되어있음!
let someCharacter: Character = "z"
switch someCharacter {
case "a":
  print("The first letter of the alphabet")
case "z":
  print("The last letter of the alphabet")
default:
  print("Some other character")
}

let num1 = 25
let count: String
switch num1 {
case 0...9:
  count = "한자리 수"
case 10...99:
  count = "두자리 수"
default:
  count = "나머지"
}
print("\(count)입니다")

var temperature = 59
switch temperature {
case 0...49 where temperature % 2 == 0:
  print("cold and even")
case 50...79 where temperature % 2 == 0:
  print("Warm and even")
case 80...110 where temperature % 2 == 0:
  print("hot and even")
default:
  print("Temperature out of range or odd")
}
// where절은 if, guard, for 문에서 다 사용 가능!

// fallthrough
var value1 = 4
switch value1 {
case 4:
  print(4)
  fallthrough
case 3:
  print(3)
  fallthrough
case 2:
  fallthrough
default:
  print("end")
}







// 옵셔널(optional)

var x : Int? = 10
print(x)

print(Int("100"))
print(Int("100")!)  // forced unwraped
print(Int("Hi"))    // nil 값이 반환됨

var y1 : Int?
y1 = 9
var y2 = 8

print(y1)
print(y2)
print(y1!)
print(y1! * y2)

var y3 : Int?
print(y3)   // 아무값도 안넣어주면 nil 값이 들어가있음, 이것을 강제로 unwraping하려 들면 에러 발생(앱 다운됨!)

//y3 = 9999

if y3 != nil {
  print(y3!)
} else {
  print("nil...!")
}

// optional binding
var z : Int?
z = 66
if let zz = z {
  print(zz)
} else {
  print("nil....!")
}

var z1 : Int?
if let zzz = z1 {
  print(zzz)
} else {
  print("nil....!")
}

// 여러 옵셔널 언래핑
var pet1 : String?
var pet2 : String?
pet1 = "cat_111"
pet2 = "dog_111"
if let firstPet = pet1, let secondPet = pet2 {
  print(firstPet, secondPet)
} else {
  print("nil")
}

var imp : Int!
print(imp)
imp = 101010

print(imp)    // Optional로 사용 될 수 있으므로 Optional 형임
print(imp + 1)// Optional로 사용되지 않으면 자동으로 unwrap함

//Int!형을 property로 갖는 클래스
class MyAge {
  var age : Int!
  init(age : Int) {
    self.age = age
  }
  
  func printAge() {
    print(age)    // optional(1)
    print(age+1)  // 2 age! + 1 라고 쓰지 않아도 됨
    let age1 : Int = age
    print(age1)   // 1
    let age2 = age + 2
    print(age2)    // 3
  }
}

var han = MyAge(age:1)
han.printAge()






// input : 1 2 3 4 5
//let intArr = readLine()!.split(separator: " ").map { Int($0)! }
//print(intArr)

// input : 1 2 3 4 5
//let stringArr = readLine()!.split { $0 == " " }
//print(stringArr)

// input : 12345
//let stringArr2 = Array(readLine()!).map { Int(String($0))! }
//print(stringArr2)



//let inputArr = readLine()!.split(separator: " ").map { Int($0)! }
//let n = inputArr[0]
//let m = inputArr[1]

//let n = 8
//let m = 3
//
//func pad(string: String, toSize: Int) -> String {
//  var padded = string
//  for _ in 0..<(toSize - string.count) {
//    padded = "0" + padded
//  }
//  return padded
//}
//
//
//for i in 0..<n {
//  print(pad(string: String(i, radix: 2), toSize: m))
//}


//import Foundation
//
//let n = Double(readLine()!)!
//let baseStar = ["  *  ", " * * ", "*****"]
//let cnt = Int(log2(n/3))
//
//func makeTriangle(baseStar: Array<String>, n: Int, count: Int) -> Array<String> {
//  var cnt = count
//  if cnt == 0 {
//    return baseStar
//  }
//
//  var space : String = ""
//  for _ in 0..<Int((n/2)) {
//    space += " "
//  }
//
//  var newStar: Array<String> = []
//  for i in 0..<baseStar.count {
//    newStar.append(space + baseStar[i] + space)
//  }
//  for i in 0..<baseStar.count {
//    newStar.append(baseStar[i] + " " + baseStar[i])
//  }
//
//  cnt -= 1
//  return makeTriangle(baseStar: newStar, n: n*2, count: cnt)
//}
//
//let resultStar = makeTriangle(baseStar: baseStar, n: 6, count: cnt)
//
//for i in 0..<resultStar.count {
//  print(resultStar[i], separator: "")
//}
//


// boj10828
//import Foundation
//let n = Int(readLine()!)!
//var arr: [Int] = []
//
//for _ in 1...n {
//  let order = readLine()!
//
//  switch order {
//  case "top":
//    if arr == [] {
//      print(-1)
//    } else {
//      print(arr[arr.count-1])
//    }
//  case "pop":
//    if arr == [] {
//      print(-1)
//    } else {
//      print(arr.popLast()!)
//    }
//  case "size":
//    print(arr.count)
//  case "empty":
//    if arr == [] {
//      print(1)
//    } else {
//      print(0)
//    }
//  default:
//    let num = Int(order.components(separatedBy: " ")[1])!
//    arr.append(num)
//  }
//}


// boj18258
//import Foundation
//let n = Int(readLine()!)!
//var queue: [Int] = []
//
//for _ in 1...n {
//  let order = readLine()!
//
//  switch order {
//  case "front":
//    if queue == [] {
//      print(-1)
//    } else {
//      print(queue.first!)
//    }
//  case "back":
//    if queue == [] {
//      print(-1)
//    } else {
//      print(queue.last!)
//    }
//  case "size":
//    print(queue.count)
//  case "empty":
//    if queue == [] {
//      print(1)
//    } else {
//      print(0)
//    }
//  case "pop":
//    if queue == [] {
//      print(-1)
//    } else {
//      print(queue.removeFirst())
//    }
//  default:
//    let num = Int(order.components(separatedBy: " ")[1])!
//    queue.append(num)
//  }
//}

// boj10866
//import Foundation
//
//let n = Int(readLine()!)!
//var deque: [Int] = []
//
//for _ in 1...n {
//  let order = readLine()!
//
//  switch order {
//  case "size":
//    print(deque.count)
//  case "empty":
//    if deque.count == 0 {
//      print(1)
//    } else {
//      print(0)
//    }
//  case "front":
//    if deque == [] {
//      print(-1)
//    } else {
//      print(deque.first!)
//    }
//  case "back":
//    if deque == [] {
//      print(-1)
//    } else {
//      print(deque.last!)
//    }
//  case "pop_front":
//    if deque == [] {
//      print(-1)
//    } else {
//      print(deque.removeFirst())
//    }
//  case "pop_back":
//    if deque == [] {
//      print(-1)
//    } else {
//      print(deque.removeLast())
//    }
//  default:
//    let pushFrontStartIndex = order.index(order.startIndex, offsetBy: 10)
//    let pushBackStartIndex = order.index(order.startIndex, offsetBy: 9)
//
//    if order[order.startIndex..<pushFrontStartIndex] == "push_front" {
//      let num = Int(order.components(separatedBy: " ")[1])!
//      deque.reverse()
//      deque.append(num)
//      deque.reverse()
//    } else if order[order.startIndex..<pushBackStartIndex] == "push_back" {
//      let num = Int(order.components(separatedBy: " ")[1])!
//      deque.append(num)
//    }
//  }
//}

//boj5430
let n = Int(readLine()!)!
var intArr :[Int] = []
for _ in 0..<n {
  var flag = true
  let order = readLine()!
  let m = Int(readLine()!)!

  let stringArr = readLine()!

  if stringArr.count < 2 {
    intArr = []
  } else {
    let startIndex = stringArr.index(stringArr.startIndex, offsetBy: 1)
//    let endIndex = stringArr.index(stringArr.endIndex, offsetBy: -1)
    if stringArr[startIndex...stringArr.endIndex].count > 4 {
      intArr = stringArr[startIndex...stringArr.endIndex].split(separator: ",").map { Int($0)! }
    } else {
      intArr.append(Int(stringArr[stringArr.index(after: startIndex)...stringArr.endIndex])!)
    }
  }
  print(intArr)
  
  for i in order {
    if i == "R" {
      intArr.reverse()
    } else if i == "D" {
      if intArr.count == 0 {
        print("error")
        flag = false
        break
      } else {
        intArr.removeFirst()
      }
    }
  }
  
  if flag {
    print(intArr)
  }
}












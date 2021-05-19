import Foundation
var arr = [1, 2, 3, 4, 5]
var str = "push_back 10"
let start = str.index(str.startIndex, offsetBy: 2)
let end = str.index(str.endIndex, offsetBy: -5)
let range = start..<end
print(str[str.startIndex..<end])


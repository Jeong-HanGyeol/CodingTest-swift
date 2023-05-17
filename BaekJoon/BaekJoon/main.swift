import Foundation
var inputs = readLine()!.split(separator: " ").map{ String($0)}
var number = Array(inputs[0]).map{ String($0) }
var rad = Int(inputs[1])!
var result = 0
var dict = [String: Int]()
for i in 10...35 {
    var num = 55
    dict[String(UnicodeScalar(num+i)!)] = i
}
for i in 0..<number.count {
    var n = number.count - i - 1
    var num1 = Int()
    if Int(number[i]) == nil {
        num1 = dict[number[i]]!
    } else {
        num1 = Int(number[i])!
    }
    var num2 = 1
    for j in 0..<n {
        num2 = num2 * rad
    }
    result = result + ( num2 * num1)
}
print(result)

import Foundation
var n = Int(readLine()!)!

var x = 2

while n > 0 {
    x += Int(pow(2, Double(n-1)))
    n -= 1
}

print(x*x)

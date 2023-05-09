
import Foundation
let s = Array(readLine()!)
let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
var result = Array(repeating: -1, count: 26)

for i in 0..<alphabet.count {
    for j in 0..<s.count {
        if s[j] == alphabet[i] && result[i] == -1 {
            result[i] = j
        }
    }
}
result[0...].forEach { print($0, terminator: " ")}

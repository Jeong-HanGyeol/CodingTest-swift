let input = Int(readLine()!)!
let n = Array(readLine()!)
var total = 0
for i in 0..<input {
    total += Int(String(n[i]))!
}
print(total)

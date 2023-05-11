
let input = readLine()!.split(separator: " ")
let n = Int(input[0])!
let m = Int(input[1])!
var r = Array<Int>(0...n)
for _ in 0..<m {
    let arr = readLine()!.split(separator: " ")
    let i = Int(arr[0])!, j = Int(arr[1])!, k = Int(arr[2])!
    var ca = r[k...j] + r[i..<k]
    r[i...j] = ca
}
r[1...].forEach { print($0, terminator: " ") }

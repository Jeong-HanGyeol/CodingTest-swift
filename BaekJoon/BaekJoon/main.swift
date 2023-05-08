
let n = Int(readLine()!)!
//var arr = Array<Double>()
var m = readLine()!.split(separator: " ").map { Double($0)! }
let max = m.max()!
m = m.map { $0 / max }
var mPlus:Double = 0.0

for i in 0..<n {
    mPlus += m[i]
}
print(mPlus / Double(n) * 100)

import Foundation
let c = Int(readLine()!)!
for _ in 0..<c {
    var arr = readLine()!.split(separator: " ").map {Double($0)!}
    let n = arr[0]
    arr.remove(at: 0)
    var t = 0.0
    var r = 0.0
    for i in arr {
        t += i
    }
    for i in arr {
        if t / n < i {
            r += 1
        }
    }
    print("\(String(format: "%.3f", round(r/n*100*1000)/1000))%")
}

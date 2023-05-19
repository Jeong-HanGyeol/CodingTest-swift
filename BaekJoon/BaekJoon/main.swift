let t = Int(readLine()!)!

for i in 0..<t {
    let c = Int(readLine()!)!
    
    let q = c / 25
    let d = (c - (q * 25)) / 10
    let n = (c - (q * 25)-(d * 10)) / 5
    let p = (c - (q * 25)-(d * 10)-(n * 5)) / 1
    print("\(q) \(d) \(n) \(p)")
}

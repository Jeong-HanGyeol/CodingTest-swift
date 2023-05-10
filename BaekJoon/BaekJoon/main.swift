let w = Array(readLine()!.map { $0 })
var r = 0
if w.count % 2 == 0 {
    for i in 0..<w.count/2 {
        if w[i] == w[w.count - 1 - i] {
            r += 1
        } else {
            r += 0
        }
    }
} else {
    for i in 0..<(w.count - 1)/2 {
        if w[i] == w[w.count - 1 - i] {
            r += 1
        } else {
            r += 0
        }
    }
}
if r == w.count/2 {
    print(1)
} else {
    print(0)
}

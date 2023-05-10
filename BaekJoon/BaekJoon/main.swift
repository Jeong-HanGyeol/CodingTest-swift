let n = Int(readLine()!)!
for i in 0..<2*n-1 {
    if i < (2*n)/2 {
        print("\(String(repeating: " ", count: n-(i+1)))\(String(repeating: "*", count: (i+1)+(i)))")
    } else {
        print("\(String(repeating: " ", count: i-(((2*n)/2)-1)))\(String(repeating: "*", count: (2*n-1)-((i-(((2*n)/2)-1))*2) ))")
    }
}

var result = Set<Int>()
for _ in 0..<10 {
    result.insert(Int(readLine()!)!%42)
}
print(result.count)

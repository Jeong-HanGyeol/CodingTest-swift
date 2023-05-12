var paper = [[Bool]](repeating: [Bool](repeating: false, count: 101), count: 101)
let n = Int(readLine()!)!
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x = input[0], y = input[1]
    for x in x..<x+10 {
        for y in y..<y+10 {
            paper[x][y] = true
        }
    }
}
print(paper.flatMap { $0 }.filter { $0 }.count)

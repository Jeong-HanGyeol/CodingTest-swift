var matrix: [[Int]] = []
var answer = [[Int]](repeating: [Int](repeating: 0, count: 9), count: 9)
for _ in 0..<9 {
    matrix.append(readLine()!.split(separator: " ").map { Int($0)! })
}
var max = Array<Int>()
for i in 0..<9 {
    max.append(matrix[i].max()!)
}
for x in 0..<9 {
    for y in 0..<9 {
        if max.max() == matrix[x][y] {
            print(max.max()!)
            print("\(x+1) \(y+1)")
        }
    }
}

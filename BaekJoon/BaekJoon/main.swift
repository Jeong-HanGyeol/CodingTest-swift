let input = readLine()!.split(separator: " ")
let n = Int(input[0])!, m = Int(input[1])!
var matrixA: [[Int]] = []
var matrixB: [[Int]] = []
var answer = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)
for _ in 0..<n {
    matrixA.append(readLine()!.split(separator: " ").map { Int($0)! })
}
for _ in 0..<n {
    matrixB.append(readLine()!.split(separator: " ").map { Int($0)! })
}
for y in 0..<n {
    for x in 0..<m {
        answer[y][x] = matrixA[y][x] + matrixB[y][x]
    }
}
for y in 0..<n {
    answer[y].forEach { print($0, terminator: " ") }
    print()
}

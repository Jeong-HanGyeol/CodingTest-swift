let find = readLine()!.split(separator: " ").map {Int($0)!}
let val = [1, 1, 2, 2, 2, 8]
var result = [0, 0, 0, 0, 0, 0]
for i in 0..<6 {
    result[i] = val[i] - find[i]
}
print(result.map { String($0) }.joined(separator: " "))

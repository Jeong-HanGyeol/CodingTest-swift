let dial = ["ABC","DEF","GHI","JKL","MNO","PQRS","TUV","WXYZ"]
let word = Array(readLine()!.map {$0})
var result = 0
for i in 0..<dial.count {
    let arr = dial[i].map { $0 }
    for k in 0..<word.count {
        for j in 0..<arr.count {
            if word[k] == arr[j] {
                result += (i + 3)
            }
        }
    }
}
print(result)

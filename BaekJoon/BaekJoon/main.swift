var toy = [[String]](repeating: [String](repeating: "", count: 15), count: 5)
var total = Array<Int>()
var result = ""
for i in 0..<5 {
    let word = readLine()!.map { String($0) }
    let lastIndex = word.count - 1
    toy[i].replaceSubrange(0..<lastIndex, with: word)
}
for i in 0..<15 {
    for j in 0..<5 {
        print(toy[j][i], terminator: "")
    }
}

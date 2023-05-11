let n = Int(readLine()!)!
var r = 0
for _ in 0..<n {
    let word = Array(readLine()!)
    var ch = [Character]()
    for i in 0..<word.count {
        if ch.contains(word[i]) {
            if word[i] == word[i-1] {

            } else {
                r += 1
                break
            }
        } else {
            ch.append(word[i])
        }
    }
}
print(n-r)


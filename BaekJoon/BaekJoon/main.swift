let s = readLine()!
let i = Int(readLine()!)!
var cha = Array<String>()
s.map {cha.append(String($0))}
print(cha[i-1])

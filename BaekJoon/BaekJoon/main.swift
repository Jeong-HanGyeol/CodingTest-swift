let t = Int(readLine()!)!
for _ in 0..<t {
    let input = readLine()!.split(separator: " ")
    let R = Int(input[0])!
    let S = Array(input[1])
    var P = ""
    S.map { P += String(repeating: String($0), count: R) }
    print(P)
}

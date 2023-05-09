let input = readLine()!.split(separator: " ")
let a = Int(String(input[0].reversed()))!
let b = Int(String(input[1].reversed()))!
if a > b {
    print(a)
} else {
    print(b)
}

let input = readLine()!.split(separator: " ")

let decimal = Int(input[0])!
let num = Int(input[1])!

print(String(decimal, radix: num).uppercased())

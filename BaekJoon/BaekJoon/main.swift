let n = Int(readLine()!)!
var sum = 1
var count = 1
for i in 1...n {
    if n == 1 {
        print(count)
        break
    }
    if n <= sum {
        print(count)
        break
    }
    else {
        sum += 6 * i
        count += 1
    }
}

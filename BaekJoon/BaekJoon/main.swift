import Foundation
var input = readLine()!
let croatia: [String] = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]

for ch in croatia {
    input = input.replacingOccurrences(of: ch, with: "b")
}
var count: Int = input.count
print(count)

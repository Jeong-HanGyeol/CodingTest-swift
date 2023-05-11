import Foundation
let word = Array(readLine()!.uppercased())
var dict: [String:Int] = [:]
var result: [String] = []
for i in word {
    if dict[String(i)] == nil {
        dict[String(i)] = 1
    } else {
        dict[String(i)]! += 1
    }
}
for key in dict.keys {
    if dict[key] == dict.values.max() {
        result.append(key)
    }
}
print( result.count > 1 ? "?" : "\(result[0])" )

import Foundation
var majorSubject = 0.0
var total = 0.0
for _ in 0..<20 {
    let input = readLine()!.split(separator: " ")
    let score = Double(input[1])!
    let credit = input[2]
    var subjectRating = 0.0
    if credit == "A+" {
        subjectRating = 4.5
    } else if credit == "A0" {
        subjectRating = 4.0
    } else if credit == "B+" {
        subjectRating = 3.5
    } else if credit == "B0" {
        subjectRating = 3.0
    } else if credit == "C+" {
        subjectRating = 2.5
    } else if credit == "C0" {
        subjectRating = 2.0
    } else if credit == "D+" {
        subjectRating = 1.5
    } else if credit == "D0" {
        subjectRating = 1.0
    } else {
        subjectRating = 0
    }
    if credit != "P" {
        total += score
        majorSubject += score * subjectRating
    }
}
print(String(format: "%.6f", majorSubject / total))


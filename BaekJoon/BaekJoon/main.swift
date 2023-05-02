//시험 점수를 입력받아 90 ~ 100점은 A, 80 ~ 89점은 B, 70 ~ 79점은 C, 60 ~ 69점은 D, 나머지 점수는 F를 출력하는 프로그램을 작성하시오.
//첫째 줄에 시험 점수가 주어진다. 시험 점수는 0보다 크거나 같고, 100보다 작거나 같은 정수이다.
//시험 성적을 출력한다.
//예제입력 100

import Foundation
let input = readLine()!
let inputNum = Int(input)!
if inputNum >= 90 {
    print("A")
} else if inputNum >= 80 && inputNum <= 89 {
    print("B")
} else if inputNum >= 70 && inputNum <= 79 {
    print("C")
} else if inputNum >= 60 && inputNum <= 69 {
    print("D")
} else {
    print("F")
}

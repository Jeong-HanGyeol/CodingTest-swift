//꼬마 정민이는 이제 A + B 정도는 쉽게 계산할 수 있다. 이제 A + B + C를 계산할 차례이다!
//첫 번째 줄에 A, B, C (1 ≤ A, B, C ≤ 1012)이 공백을 사이에 두고 주어진다.
//A+B+C의 값을 출력한다.
//예제입력 77 77 7777

import Foundation
let input = readLine()!
let inputArr = input.components(separatedBy: " ")
let a = Int(inputArr[0])!
let b = Int(inputArr[1])!
let c = Int(inputArr[2])!
print(a+b+c)

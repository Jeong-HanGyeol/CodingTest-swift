//    (세 자리 수) × (세 자리 수)는 다음과 같은 과정을 통하여 이루어진다.
//    (1)과 (2)위치에 들어갈 세 자리 자연수가 주어질 때 (3), (4), (5), (6)위치에 들어갈 값을 구하는 프로그램을 작성하시오.
//첫째 줄에 (1)의 위치에 들어갈 세 자리 자연수가, 둘째 줄에 (2)의 위치에 들어갈 세자리 자연수가 주어진다.
//첫째 줄부터 넷째 줄까지 차례대로 (3), (4), (5), (6)에 들어갈 값을 출력한다.
//예제입력
//472
//385

import Foundation
let input1 = readLine()!
let input2 = readLine()!
let input1_num = Int(input1)!
let input2_num = Int(input2)!
let input2_1 = input2_num % 10
let input2_2 = (input2_num/10) % 10
let input2_3 = (input2_num/100) % 10

print(input1_num*input2_1)
print(input1_num*input2_2)
print(input1_num*input2_3)
print(input1_num*input2_num)

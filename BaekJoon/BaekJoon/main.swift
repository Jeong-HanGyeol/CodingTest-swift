//본격적으로 for문 문제를 풀기 전에 주의해야 할 점이 있다. 입출력 방식이 느리면 여러 줄을 입력받거나 출력할 때 시간초과가 날 수 있다는 점이다.
//C++을 사용하고 있고 cin/cout을 사용하고자 한다면, cin.tie(NULL)과 sync_with_stdio(false)를 둘 다 적용해 주고, endl 대신 개행문자(\n)를 쓰자. 단, 이렇게 하면 더 이상 scanf/printf/puts/getchar/putchar 등 C의 입출력 방식을 사용하면 안 된다.
//Java를 사용하고 있다면, Scanner와 System.out.println 대신 BufferedReader와 BufferedWriter를 사용할 수 있다. BufferedWriter.flush는 맨 마지막에 한 번만 하면 된다.
//Python을 사용하고 있다면, input 대신 sys.stdin.readline을 사용할 수 있다. 단, 이때는 맨 끝의 개행문자까지 같이 입력받기 때문에 문자열을 저장하고 싶을 경우 .rstrip()을 추가로 해 주는 것이 좋다.
//또한 입력과 출력 스트림은 별개이므로, 테스트케이스를 전부 입력받아서 저장한 뒤 전부 출력할 필요는 없다. 테스트케이스를 하나 받은 뒤 하나 출력해도 된다.
//자세한 설명 및 다른 언어의 경우는 이 글에 설명되어 있다.
//이 블로그 글에서 BOJ의 기타 여러 가지 팁을 볼 수 있다.
//첫 줄에 테스트케이스의 개수 T가 주어진다. T는 최대 1,000,000이다. 다음 T줄에는 각각 두 정수 A와 B가 주어진다. A와 B는 1 이상, 1,000 이하이다.
//각 테스트케이스마다 A+B를 한 줄에 하나씩 순서대로 출력한다.

import Foundation
final class FileIO {
    private let buffer:[UInt8]
        // 입력을 byte의 배열로 바꾸어서 저장
    private var index: Int = 0
        // 현재 읽어야 할 byte의 위치를 저장

    //❓ FileHandle 객체 = 파일 (소켓, 파이프)의 데이터에 접근할 수 있게 해준다.
        // FileHandle 객체를 만든다는 것은 특정 file descriptor의 소유권을 가진다는 뜻이다.
            // file descriptor: 리눅스 혹은 유닉스 운영체제에서 프로세스가 특정 파일에 접근할 때 사용하는 추상적인 값 (일종의 포인터) -> 운영체제에 의해서 관리된다.
        // FileHandle.standardInput은 표준입력에 대한 인스턴스를 만든 것
            // 이 코드는 command-line에서 실행되므로 표준입력이 키보드입력으로 정해져있다. (프로세스 마다 표준은 다름)
            // 키보드 입력이 파일인 이유는 유닉스 계열의 운영체제에서 하드웨어를 파일로 추상화해서 사용하기 때문
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        self.buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)]
        // 현재 파일(= 커맨드 라인 입력)을 끝까지 한방에 읽어와서 buffer에 저장한다.
        //⭐️ 마지막에 0을 추가해서 buffer의 끝 부분임을 알림
    }

    //❓ 인라인 함수
        // 함수를 사용할 때는 호출 -> 실행의 두 가지 단계를 따르는데 (함수는 메모리에 다른 곳에 저장했다가 호출함)
        // 실행이 아주 빠른 함수의 경우 호출에 걸리는 시간이 오히려 오래 걸릴 수 있다.
        // 따라서 컴파일을 할 때 함수의 코드를 바로 호출할 자리에 삽입한다. (호출 필요 없이 바로 실행)
    
    //✅ 1 btye를 읽어오는 함수
    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 } //👉 읽고 나서 index 추가

        return buffer[index]
    }
    
    //✅ 연속된 byte값 Int로 변환해서 읽어오는 함수
    @inline(__always) func readInt() -> Int {
        var sum = 0 //👉 결과를 저장할 곳
        var now = read() //👉 지금 index의 byte 값
        var isPositive = true //👉 부호를 저장할 곳

        while now == 10
                || now == 32 { now = read() } //👉 공백과 줄바꿈 무시 (다음 byte 읽기)
        if now == 45 { isPositive.toggle(); now = read() } // "-"가 나오면 음수 처리
        
        //⭐️ 0 ~ 9에 해당하는 byte값일때만
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48) //👉 현재까지의 합 * 10하고 다음 숫자 더하기 (자릿수 적용)
            now = read() //👉 다음 byte 읽기
        }

        return sum * (isPositive ? 1:-1) //👉 부호까지 계산해서 반환하기
    }

    //✅ String으로 일어오는 함수
    @inline(__always) func readString() -> String {
        var now = read()

        while now == 10 || now == 32 { now = read() } //👉 공백과 줄바꿈 무시 (다음 byte 읽기)
        
        //⭐️ 공백이나 줄바꿈이 아니라면 그 index를 기록 (문자열의 시작점)
            // -1을 해주는 이유는 index 값은 앞으로 읽을 다음 byte를 가리키고 있으므로.
        let beginIndex = index-1
        
        //⭐️ 공백(32) 혹은 줄바꿈(10) 혹은 파일의 끝(0)이 나오기 전까지 read
        while now != 10,
              now != 32,
              now != 0 { now = read() }
        
        //⭐️ 공백(32) 혹은 줄바꿈(10) 혹은 파일의 끝(0)이 나와서 while문을 벗어나면
            // 시작 index부터 문자열의 index까지 Array를 잘라서 String으로 타입 변환해서 리턴
        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
    }

    //✅ 연속된 byte값 읽어오기
    @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
        var now = read()

        while now == 10 || now == 32 { now = read() }
        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return Array(buffer[beginIndex..<(index-1)])
    }
}
let fileIO = FileIO()
let num = fileIO.readInt()
for _ in 0..<num {
    let a = fileIO.readInt()
    let b = fileIO.readInt()
    print(a+b)
}

import Foundation
// MARK: Trả về Vị trí đầu tiên của số lẻ, vị trí cuối cùng của số chẵn trong mảng bất kì.

func numberPosition(number: [Int]) -> (firstPosition: Int, lastPosition: Int) {
    var firstPositon = -1
    var lastPostion = -1
    for (index, value) in number.enumerated() {
        if value % 2 == 1 && firstPositon == -1 {
            firstPositon = index
        }
        if value % 2 == 0 {
            lastPostion = index
        }
    }
    return(firstPositon, lastPostion)
}

let numbers: [Int] = [0, 6, 0, 5, 9, 12, 1]
let position = numberPosition(number: numbers)
print(position)

// MARK: Tìm số nhỏ nhất và lớn nhất trong mảng số nguyên.

func findNumber(number: [Int]) -> (minValue: Int,maxValue: Int) {
    var minValue = number[0]
    var maxValue = number[0]
    for numbers in number {
        if numbers < minValue {
            minValue = numbers
        } else if numbers > maxValue {
            maxValue = numbers
        }
    }
    return(minValue, maxValue)
}

let arr: [Int] = [1, 3, 5, 6, 8, 0]
let findNumbers = findNumber(number: arr)
print(findNumbers)


// MARK: 3.
/**
Viết một minigame random các số từ 1 đến 100, cho người dùng đoán số nhập dữ liệu từ bàn phím.
Nếu số nhập vào đúng với số được random thì in ra message chúc mừng
Nếu số nhập vào bé hơn số được random thì in ra message là bé quá
Nếu số nhập vào lớn hơn số được random thì in ra message là lớn quá
Gợi ý: Hàm random số nguyên trong Swift là Int.random(in: 1…100)
*/

func gameNumber() {
    let randomnumber = Int.random(in: 1...100)
    print("Hãy nhập số mà bạn muốn:", terminator: "")
    while let input = readLine() ,let gussNumber = Int(input) {
        if gussNumber == randomnumber {
            print("Chúc mừng bạn là ngươi chiến thắng")
            return
        } else if gussNumber < randomnumber {
            print("Sô bạn nhập vào nhỏ hơn số random")
        } else if gussNumber > randomnumber {
            print("Số bạn nhập vào lớn hơn số random")
        } else {
            print("Số bạn nhập không hợp lệ")
        }
    }
}
gameNumber()

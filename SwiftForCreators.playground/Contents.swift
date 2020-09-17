import Foundation

let introduction = "你好，创作者!"

//MARK: - 代码注释
// 一段较短的注释

/*
较长的注释
可以分为多行来写
 */
 

//MARK: - 常量与变量
let amountOfDaysInAWeek = 7


var dayOfTheWeek = 1
dayOfTheWeek = 3



//MARK: - 运算符
let a = 10
let b = 3
let c = 10

var result: Int
result = a + b  // 加
result = a - b  // 减
result = a * b  // 乘
result = a / b  // 除
result = a % b  // 余


var glassesOfWater = 0

glassesOfWater = glassesOfWater + 1
glassesOfWater += 1


let isRainingOutside = true
let isWarmOutside = false

if isRainingOutside && isWarmOutside {
    print("1.是否会运行此代码？")
}

if isRainingOutside || isWarmOutside {
    print("2.是否会运行此代码？")
}

if !isRainingOutside || (!isWarmOutside && isRainingOutside) {
    print("3.是否会运行此代码？")
}

5 > 3
"这句话" == "这句话"

if 5 / 3 > 1.5 && !("ab" == "abc") {
    print("4.是否会运行此代码？")
}


//MARK: - 条件判断

let condition = true

// 写法 1
if condition {
    print("条件为真")
} else {
    print("条件为假")
}

// 写法 2
condition ? print("条件为真"): print("条件为假")

let dateOfTheWeek = 1

if dateOfTheWeek == 1 || dateOfTheWeek == 2 || dateOfTheWeek == 3 || dateOfTheWeek == 4 || dateOfTheWeek == 5 {
    print("工作")
} else if dateOfTheWeek == 6 {
    print("玩耍")
} else if dateOfTheWeek == 7 {
    print("休息")
} else {
    print("数值超限")
}


switch dateOfTheWeek {
case 1...5:
    print("工作")
case 6:
    print("玩耍")
case 7:
    print("休息")
default:
    print("数值超限")
}


let number = 50
let numberToString = String(number)


//MARK: - 类型

var day = "5"
let output = "星期 " + day + "，快放假了！"

let newOutput = "星期 \(day)，快放假了！"



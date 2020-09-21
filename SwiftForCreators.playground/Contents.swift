import Foundation
/**/

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

// 写法 1: Swift 自动推断其类型
let inferredInt = 1
let inferredDouble = 5.0
let inferredString = "文本"
let inferredBool = true

// 写法 2: 人工明确说明其类型
let explicitInt: Int = 1
let explicitDouble: Double = 5.0
let explicitString: String = "文本"
let explicitBool: Bool = true


var day = "5"
let output = "星期 " + day + "，快放假了！"
let newOutput = "星期 \(day)，快放假了！"


//MARK: - 函数

print("在 Swift 中，5 除以 3 的结果是：\(5 / 3)")


// 函数 1
func driveForward() {
    print("车不断的向前开")
}

// 函数 2
func driveForward(meters: Int) {
    print("车向前开 \(meters) 米")
}

// 调用函数
driveForward()
driveForward(meters: 100)

// 定义
func circumference(diameter: Double) {
    print("圆的周长为 \(diameter * 3.14)")
}

// 使用
circumference(diameter: 10)

// 第 3 版写法
func driveTowards(_ direction: String = "前", for meters: Int) {
    print("向\(direction)走 \(meters) 米")
}

driveTowards(for: 100)  //不明确说明，默认往前走
driveTowards("后", for: 100) //明确说明方向，比如向后


func rollDice() -> Int {
    Int.random(in: 1...6)
}

print("🎲 骰子投出的点数是 \(rollDice())")


if isArrivedAtHome(distanceToHomeInMeters: 3) {
    print("欢迎回家！")
}

func isArrivedAtHome(distanceToHomeInMeters: Int) -> Bool {
    distanceToHomeInMeters < 5 ? true : false
}

struct ReturnType {}
struct ParameterType {}
let actualValue = ParameterType()

func functionName(argumentLabel parameter: ParameterType) -> ReturnType {
    // 函数所执行的功能
    return ReturnType()
}

functionName(argumentLabel: actualValue)

//思考题

"The result of the addition is \(add(3.2, 1.6))"

func add(_ a: Double, _ b: Double) -> Double {
    a + b
}


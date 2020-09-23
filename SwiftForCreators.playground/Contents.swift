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

//MARK: - 集合

var dailyStepsGoal: Int
var weightRecords: [Double] = [70.4, 70.3, 70.1, 70.0, 69.5]

print(weightRecords)

weightRecords.append(69.3)
print(weightRecords)


weightRecords += [69.1, 69.0]
print(weightRecords)


weightRecords.insert(70.2, at: 2)
print(weightRecords)

weightRecords.remove(at: 8)
print(weightRecords)

weightRecords.removeSubrange(3...7)
print(weightRecords)

let weightOfTheThirdDay = weightRecords[2]

let weightOfRandomDay = weightRecords.randomElement()

let indexOf70_2 = weightRecords.firstIndex(of: 70.2)!


weightRecords[0] = 70.6
print(weightRecords)

weightRecords.sort()
print(weightRecords)

weightRecords.shuffle()
print(weightRecords)

weightRecords = [70.6, 70.5, 71.2, 68.3, 70.9, 69.1]
let targetWeight = 70.0
let diffToTarget = weightRecords.map { ($0 - targetWeight)}

print(diffToTarget)


let aboveSeventy = weightRecords.filter { $0 >= 70.0 }
var dateOfAboveSeventy: [String] = []
var dateToChar = [1: "一", 2: "二", 3: "三", 4: "四", 5: "五", 6: "六", 7: "天"]

for searchTarget in aboveSeventy {
    let date = weightRecords.firstIndex(of: searchTarget)! + 1
    dateOfAboveSeventy.append("星期" + dateToChar[date]!)
}
print(dateOfAboveSeventy)

weightRecords.count
weightRecords.isEmpty
weightRecords.min()
weightRecords.contains(68.3)

let menu = [
    ["面包", "牛奶"],
    ["牛肉面", "茶"],
    ["香蕉", "盖饭", "鸡腿"]
]

print(menu[2][0])

// MARK: - 循环

var phoneBook = ["老王" : 12345, "老李": 12345]

phoneBook["小吴"] = 22332
print(phoneBook)


phoneBook["小吴"]  = nil
print(phoneBook)

let numberOfWang = phoneBook["老王"]

phoneBook["老王"] = 13579
print(phoneBook)

phoneBook.count
phoneBook.isEmpty
phoneBook.contains(where: { $0.key == "老王" })

let dailyMenu = [
    "早餐": ["面包", "牛奶"],
    "午餐": ["牛肉面", "茶"],
    "晚餐": ["香蕉", "盖饭", "鸡腿"]
]

print(dailyMenu["午餐"]!)

// MARK: - 循环

let enrolledPeople = ["老王", "老李", "小吴"]

for person in enrolledPeople {
    print("你好👋，\(person)")
}

print("你好👋，老王")
print("你好👋，老李")
print("你好👋，小吴")

let personA = enrolledPeople[0]
    print("你好👋，\(personA)")
let personB = enrolledPeople[1]
    print("你好👋，\(personB)")
let personC = enrolledPeople[2]
    print("你好👋，\(personC)")

func fireABullet() {}

for _ in 1...5 {
    fireABullet()
}

var playerLives = 3 // 共 3 个生命

while playerLives > 0 {
    let isPlayerUnlucky = Bool.random() // 生成一个随机布尔值
    
    if isPlayerUnlucky {
        playerLives -= 1
        if playerLives == 0 {
            print("游戏结束")
        }
    }
}

var someCondition = false

repeat {
    // 无论条件，至少执行一遍此代码
} while someCondition



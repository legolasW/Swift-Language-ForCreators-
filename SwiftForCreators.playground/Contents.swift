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


// 从原体重数组筛选出满足条件的，组成新数组 aboveSeventy
let aboveSeventy = weightRecords.filter { $0 >= 70.0 }

// 记录 aboveSeventy 中满足条件的体重所对应的日期，并将数字的日期用字典翻译成中文
var dateOfAboveSeventy: [String] = []
var dateToChar = [1: "一", 2: "二", 3: "三", 4: "四", 5: "五", 6: "六", 7: "天"]

// 使用循环搜索新数组，并将满足条件的日期添加至 dateOfAboveSeventy 中
for searchTarget in aboveSeventy {
    let date = weightRecords.firstIndex(of: searchTarget)! + 1
    dateOfAboveSeventy.append("星期" + dateToChar[date]!)
}

// 打印结果
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



// MARK: - 闭包
func isTheFirstsmallerThanSecond(first: Int, second: Int) -> Bool {
    return first < second
}

// 闭包写法
let closure = { (first: Int, second: Int) -> Bool in
    return first < second
}

var demoNumbers = [2, 18, 0, -9, 30]

demoNumbers.sort()
print(demoNumbers)


demoNumbers.sort(by: closure)
print(demoNumbers)

demoNumbers.sort(by: { (first: Int, second: Int) -> Bool in
    return first < second
})
print(demoNumbers)


demoNumbers.sort { (first: Int, second: Int) -> Bool in
    return first < second
}
print(demoNumbers)

demoNumbers.sort { first, second in first < second }
print(demoNumbers)

// 升序排列
demoNumbers.sort { $0 > $1 }
print(demoNumbers)

// 降序排列
demoNumbers.sort { $0 < $1 }
print(demoNumbers)


// MARK: - 可选类型

let numberOfWu: Int? = phoneBook["小吴"]

var username: String? = "小王"

print(username!)


if username != nil {
    let safelyUnwrappedUsername = username!
    print("\(safelyUnwrappedUsername)，想听点什么")
}

username = "小王"


if let safelyUnwrappedUsername = username {
    print("\(safelyUnwrappedUsername)，想听点什么")
}

func guardDemo() {
    
    guard let safelyUnwrappedUsername = username else {
        print("username 的值为 nil")
        return
    }

    print("\(safelyUnwrappedUsername)，想听点什么")
    
}

guardDemo()

username = "小王"
print("\(username ?? "你好")，想听点什么")

username = nil
print("\(username ?? "你好")，想听点什么")


// MARK: - 结构
struct Player {
    static var allPlayers: [Player] = [] // 所有玩家
    var inventories: [InventoryItem] = []
    var name: String  // 当前玩家姓名
    var livesRemaining = 5 { // 当前玩家生于生命条数
        willSet {
            print("警告：还剩下 \(newValue) 条命")
        }
        didSet {
            if livesRemaining != 0 {
                print("已满血复活")
            } else {
                print("游戏结束")
            }
        }
    }
    let maxHealth = 100
    lazy var currentHealth = maxHealth // 当前生命值
    var isPlayerOutOfLives: Bool { // 全部生命条数是否耗尽
        get {
            livesRemaining == 0 ? true : false
        }
        set {
            if newValue {
                livesRemaining = 0
            }
        }
    }
    
    // 默认初始化器，有默认值版本
    init(name: String) {
        self.name = name
    }
    
    // 默认初始化器，无默认值版本
    init(name: String, livesRemaining: Int, currentHealth: Int) {
        self.name = name
        self.livesRemaining = livesRemaining
        self.currentHealth = currentHealth
    }
    
    // 自定义初始化器，初始生命值高
    init(name: String, livesRemaining: Int) {
        self.name = "VIP " + name
        self.livesRemaining = livesRemaining
        currentHealth = 10000
    }
    
    // 欢迎提示
    func welcomePlayer() {
        print("当前游戏账号 \(name)")
    }
    
    // 玩家被打击而减血
    mutating func damaged(by health: Int) {
        currentHealth -= health
        // 当前生命值低于 0 时，换用下一条命并重置当前生命值
        if currentHealth <= 0 && livesRemaining > 0 {
            livesRemaining -= 1
            currentHealth = maxHealth
        }
        // 生命数量为 0 时，游戏结束
        if livesRemaining == 0 {
            print("游戏结束")
        }
    }
    
    // 调试函数，现实当前生命值及血量
    mutating func stateReport() {
        print("当前生命值为 \(currentHealth)，玩家还有 \(livesRemaining) 条命")
    }
    
    // 给出最新添加的玩家实体
    static func recentAddedPlayer() -> Player {
        allPlayers[allPlayers.count - 1]
    }
    
    // 增加物品
    mutating func addItem(name: String, description: String, bonusHealth: Int) {
        inventories.append(InventoryItem(name: name, description: description, healthBonus: bonusHealth))
    }
    
    // 使用物品
    mutating func consumeItem(at index: Int) {
        currentHealth += inventories.remove(at: index).healthBonus
    }
}

struct InventoryItem {
    var name: String
    var description: String
    var healthBonus: Int
}

var playerCreator = Player(name: "创作者")
for _ in 1...3 {
    playerCreator.addItem(name: "苹果", description: "可食用蔬果，味酸甜，吃了会补充生命值", bonusHealth: 50)
}
playerCreator.damaged(by: 80)
playerCreator.stateReport()
playerCreator.consumeItem(at: 0)
playerCreator.stateReport()


//var playerWang = Player(name: "小王")
//var playerZhou = Player(name: "小周")
//Player.allPlayers.append(contentsOf: [playerWang, playerZhou])
//print("最新添加的玩家是：\(Player.recentAddedPlayer().name)")

//var playerWang = Player(name: "小王")
//playerWang.stateReport()
//
//playerWang.damaged(by: 50)
//playerWang.stateReport()
//
//playerWang.damaged(by: 80)
//playerWang.damaged(by: 30)
//playerWang.stateReport()

//playerWang.isPlayerOutOfLives = true
//print("\(playerWang.name)，初始生命值 \(playerWang.currentHealth)")
//
//var playerKing = Player(name: "皮卡丘", livesRemaining: 10)
//print("\(playerKing.name)，初始生命值 \(playerKing.currentHealth)")


struct StructName {
    
    // 属性
    var property: Int
    
    // 初始化器
    init(property: Int) {
        self.property = property
    }
    
    // 方法
    func someMethod() {}
    
}


// MARK: - 枚举，类与扩展
// 用 Array 记录体重
//var weightRecords = [76.7, 77.1]

enum EnergySource {
    case electricity
    case diesel
    case gasoline
}

var selectedVehicleEnergy = EnergySource.electricity
print("这辆车的动力类型是：\(EnergySource.electricity)")

var policyNote: String? // 政策说明

policyNote = nil
policyNote = Optional.none // 等同于 nil

switch selectedVehicleEnergy {
case .electricity:
    policyNote = "电动车：国家补贴 5000 元人民币，鼓励购买。"
case .diesel:
    policyNote = "柴油车：需额外缴纳 200 元人民币作为排放处理费。"
case .gasoline:
    policyNote = "汽油车：无特殊政策说明。"
}

print(policyNote ?? "暂无说明")



// 汽车
class Car {
    var brand: String
    var year: String
    var energy: EnergySource
    
    init(brand: String, year: String, energy: EnergySource) {
        self.brand = brand
        self.year = year
        self.energy = energy
    }
}

// 轿车
class Sedan: Car {
    var assistantEquipped: Bool
    
    override init(brand: String, year: String, energy: EnergySource) {
        assistantEquipped = false
        super.init(brand: brand, year: year, energy: energy)
    }
    
    func upgradeAssistant() {
        assistantEquipped = true
    }
}

// 卡车
class Truck: Car {
    
}


let teslaModel3 = Sedan(brand: "Tesla", year: "2017", energy: .electricity)
let toyotaHilux = Truck(brand: "Toyota", year: "1968", energy: .gasoline)

// 创建数组 cars，用来存放 Sedan 与 Truck 的实体
let cars = [teslaModel3, toyotaHilux]
let firstCarInCars = cars[0] // teslaModel3

// 统计数组 cars 中的轿车个数
var sedanCount = 0
for car in cars {
    if car is Sedan {
        sedanCount += 1
    }
}
print("cars 中有 \(sedanCount) 辆轿车")

// 将数组 cars 中所有的轿车都升级自动驾驶
for car in cars {
    if let teslaModel3 = car as? Sedan {
        teslaModel3.upgradeAssistant()
    }
}

extension Car {
    // 添加 Computed Property
    var quickInfo: String {
        "The car brand is \(brand), first built on \(year)"
    }
}

// MARK: - Memory & DispachQueue


struct CarColorByStruct {
    var color: String
}

// carOne 赋值为黑色
var carOne = CarColorByStruct(color: "黑色")
print("carOne 所具备的颜色是： \(carOne.color)")

// 将 carOne 赋值给 carTwo，并修改 carTwo 颜色
var carTwo = carOne
carTwo.color = "白色"

// 修改后，carOne 颜色没有被改变，仍为黑色
print("carOne 所具备的颜色是： \(carOne.color)")

class CarColorByClass {
    var color: String
    
    init(color: String) { self.color = color}
}


// carThree 赋值为黑色
var carThree = CarColorByClass(color: "黑色")
print("carThree 所具备的颜色是： \(carThree.color)")

// 将 carFour 赋值给 carThree，并修改 carFour 颜色
var carFour = carThree
carFour.color = "白色"

// 修改后，carThree 被改变，变为白色
print("carThree 所具备的颜色是： \(carThree.color)")

print("是否指向同一个门牌号：\(carThree === carFour)")


//DispatchQueue.main.async { [weak self] in
//  未来的范例中讲解
//}

DispatchQueue.main.async {
    print("默认情况下，即使不写明，所有代码都运行在这里")
}


DispatchQueue.global(qos: .background).async {
    // 执行复杂任务
}


// MARK: - 别名及协议

let label: String
let age: Int
//let phoneBook: [String: Int]

typealias Age = Int
let ageVersionOne: Int = 50
let ageVersionTwo: Age = 50


//typealias PhoneBook = [String: Int]
let phoneBookVersionOne: [String: Int] = ["小王": 12345]
//let phoneBookVersionTwo: PhoneBook = ["小王": 12345]

struct Company { }
typealias InternetCompany = Company
let companyVersionOne: Company = Company()
let companyVersionTwo: InternetCompany = Company()


// 描述性的 protocol
protocol Expressible {
    var name: String { get }
    
    init(name: String)
}

// 用户 struct
struct User {
    var name: String
}

// 用户 User 遵守协议 Expressible
extension User: Expressible { }


// 创建两个整数
let numberOne = 10
let numberTwo = 20

// 判断其是否相等
if numberOne == numberTwo {
    print("两个数相等")
}

// 自定义类型提醒事项 Todo
struct Todo: Equatable, Identifiable, Codable {
    var content: String
    var id = UUID()
}

// 创建两个提醒事项
// 写法 1
let todoOne = Todo(content: "玩游戏")
/* 写法 2
 {
    "content": "玩游戏",
    "id": "27451423-765D-4942-873D-5AF52DF955E4"
 }
 */
let todoTwo = Todo(content: "写文章")

// 判断其是否相同
if todoOne == todoTwo {
    print("两个提醒事项完全相同")
}


// 一年中的某一天
struct DateOfTheYear {
    let year: Int
    let month: Int
    let day: Int
}

// 满足可等性
extension DateOfTheYear: Equatable { }

// 满足可比性
extension DateOfTheYear: Comparable {
    static func < (lhs: DateOfTheYear, rhs: DateOfTheYear) -> Bool {
        if lhs.year != rhs.year {
            return lhs.year < rhs.year
        } else if lhs.month != rhs.month {
            return lhs.month < rhs.month
        } else {
            return lhs.day < rhs.day
        }
    }
}

let dayOne = DateOfTheYear(year: 1968, month: 8, day: 9)
let dayTwo = DateOfTheYear(year: 2020, month: 6, day: 18)

if dayOne < dayTwo {
    print("日期 1 小于日期 2")
}

// 满足可哈希性
extension DateOfTheYear: Hashable { }

let todos = [dayOne: todoOne, dayTwo: todoTwo]



// MARK: - Error
//fatalError()

// 创建密码错误
enum PasswordError: Error {
    case notLongEnough
}

// 验证新建密码是否满足长度要求
func validatePassword(_ password: String) throws -> Bool {
    if password.count < 6 {
        throw PasswordError.notLongEnough
    }
    return true
}

var password = "6419091"

// do-try-catch 写法，密码 64190 的运行结果是「密码需要至少 6 位数」
do {
    try validatePassword(password)
    print("密码有效")
} catch PasswordError.notLongEnough {
    print("密码需要至少 6 位数")
}

// try? 写法，密码 6419091 的运行结果是「验证结果是 true，密码有效」
if let validateResult = try? validatePassword(password) {
    print("验证结果是 \(validateResult)，密码有效")
} else {
    print("密码需要至少 6 位数")
}


// try! 写法，运行函数，但彻底忽视错误
try! validatePassword(password)

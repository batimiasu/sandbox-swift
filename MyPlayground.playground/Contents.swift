// // conversion
// ////var msg = "hoge"
////// var number = 48
/// /var a = msg + String(number)
// タプル
//let error = (404, "Not Found")
//error.0
//error.1
//let error = (code:404, msg:"Not Found")
//error.code
//error.msg
let error = (404, "Not Found")
//let (code, msg) = error
//let (code, _) = error // アンダースコアで値を廃棄
//code
//msg
// 配列
var colors: [String] = ["blue", "pink"]
colors[0] // 添字
colors[1] = "red"
colors

colors.count
colors.isEmpty

colors.append("green")
colors.insert("grey", atIndex: 1)
colors

colors.removeAtIndex(1)
colors

colors.removeLast()
colors

let secondColor = colors.removeAtIndex(1)
secondColor

var emptyArrya = [String]()

// 辞書
var users: [String: Int] = [
    "batimiasu": 500,
    "niki": 800
]

users.count
users.isEmpty

users["github"] = 900
users

users.removeValueForKey("github")
users

users["niki"] = 900
users

users.updateValue(900, forKey: "batimiasu")

let keys = Array(users.keys)
let values = Array(users.values)

var emptyDictionary = [String: Int]()

// if
let score = 62
var result = ""

if score > 80 {
    result = "Great"
} else if score > 60 {
    result = "Good"
} else {
    result = "so so..."
}

// 三項演算子
result = score > 80 ? "Great" : "so so..."

// switch
let num = 11

switch num {
case 0:
    print("zero")
case 1,2,3:
    print("small")
case 4...6:
    print("4/5/6")
case 7..<9:
    print("7/8")
case let n where n > 10:
    print("huge")
default:
    print("n.a")
    break
}

// while
//var n = 0
//while n < 10 {
//    print(n)
//    n++
//}

// repeat..while
var n = 0
repeat {
    print(n)
    n++
} while n < 10

// for
for var i = 0; i < 10; i++ {
    if i == 3 {
        continue
    }
    print(i)
}

// Optional
// var s: String?
// s = nil
let name: String? = "batimiasu"
// let msg = "hello" + name!
// if name != nil {
//    let msg = "hello" + name!
// }

// if let s = name {
//    let mdg = "hello" + s
// }

var label: String!
label = "score"
print(label)

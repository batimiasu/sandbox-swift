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
//let error = (404, "Not Found")
//let (code, msg) = error
//let (code, _) = error // アンダースコアで値を廃棄
//code
//msg

// 配列
//var colors: [String] = ["blue", "pink"]
// colors[0] // 添字
//colors[1] = "red"
// colors

//colors.count
//colors.isEmpty

//colors.append("green")
//colors.insert("grey", atIndex: 1)
// colors

//colors.removeAtIndex(1)
// colors

//colors.removeLast()
// colors

//let secondColor = colors.removeAtIndex(1)
//secondColor
//
//var emptyArrya = [String]()

// 辞書
//var users: [String: Int] = [
//    "batimiasu": 500,
//    "niki": 800
//]

//users.count
//users.isEmpty

//users["github"] = 900
// users

//users.removeValueForKey("github")
// users

//users["niki"] = 900
// users

//users.updateValue(900, forKey: "batimiasu")
//
//let keys = Array(users.keys)
//let values = Array(users.values)
//
//var emptyDictionary = [String: Int]()

// if
//let score = 62
//var result = ""
//
//if score > 80 {
//    result = "Great"
//} else if score > 60 {
//    result = "Good"
//} else {
//    result = "so so..."
//}

// 三項演算子
//result = score > 80 ? "Great" : "so so..."

// switch
//let num = 11
//
//switch num {
//case 0:
//    print("zero")
//case 1,2,3:
//    print("small")
//case 4...6:
//    print("4/5/6")
//case 7..<9:
//    print("7/8")
//case let n where n > 10:
//    print("huge")
//default:
//    print("n.a")
//    break
//}

// while
//var n = 0
//while n < 10 {
//    print(n)
//    n++
//}

// repeat..while
// do..whileは廃止された
//var n = 0
//repeat {
//    print(n)
//    n++
//} while n < 10

// for
//for var i = 0; i < 10; i++ {
//    if i == 3 {
//        continue
//    }
//    print(i)
//}

// Optional
// var s: String?
// s = nil
//let name: String? = "batimiasu"
// let msg = "hello" + name!
// if name != nil {
//    let msg = "hello" + name!
// }

// if let s = name {
//    let mdg = "hello" + s
// }

//var label: String!
//label = "score"
//print(label)
//print(label)

// 関数

//func sayHi() {
//    print("Hi")
//}
//sayHi()

// 引数
//func sayHi(name: String) {
//    print("Hi " + name)
//}
//sayHi("Tom")

//func sayHi(myname name:String) {
//    print("Hi " + name)
//}
//sayHi(myname: "Tom")

//　この記述はできなくなった
//func sayHi(#name: String) {
//    print("Hi " + name)
//}
//sayHi(name: "Tom")

//func sayHi(name name: String = "Tom") {
//    print("Hi " + name)
//}
//sayHi()
//sayHi(name: "Bob")

// 関数
//func sum(a:Int, b:Int, c:Int) -> Int {
//    return a + b + c
//}
//sum(1, b: 2, c: 3)

//func swap(a:Int, b:Int) -> (Int, Int) {
//    return (b, a)
//}
//print(swap(5, b: 2))

// 5になる
//func f(var a: Int) {
//    a = 20
//}
//var a = 5
//f(a)
//a

// 引数で渡した値をメソッド内で書き換えたいとき
//func f(inout a:Int) {
//    a = 20
//}
//var a = 5
//f(&a)
//a

// 列挙型
//enum Result: Int {
//    case Success = 0
//    case Error
//    func getMessage() -> String {
//        switch self {
//        case .Success:
//            return "OK"
//        case Error:
//            return "NG"
//        }
//    }
//}

//var r: Int
//var r: Result

//r = Result.Success
//r = .Success

//Result.Error.rawValue
//Result.Error.getMessage()

/*
 クラス(User) -> インスタンス(tom, bob)
- 変数 name. score:プロパティ
- 関数 sayHi():メソッド
- クラスの継承
*/

//class User {
//    var name: String
//    var score: Int = 0
//    init(name: String) {
//        self.name = name
//    }
//    // final
//    func upgrade() {
//    score++
//    }
//}
//
//
//class AdminiUser: User {
//    func reset() {
//        score = 0
//    }
//    override func upgrade() {
//        super.upgrade()
//        score += 3
//    }
//}
//
//var tom = User(name: "Tom")
//tom.name
//tom.score
//tom.upgrade()
//tom.score
//
//var bob = AdminiUser(name: "bob")
//bob.name
//bob.score
//bob.upgrade()
//bob.score
//bob.reset()
//bob.score
//// tom.reset()

// プロパティ
//protocol Student {
//    var studentId: String { get set }
//    func study()
//}
//
//class User: Student {
//    var name: String
//    var score: Int = 0
//    var studentId: String = "hoge"
//    func study() {
//        print("studying...")
//    }
//    init(name: String) {
//        self.name = name
//    }
//    func upgrade() {
//        score++
//    }
//}
//
//var tom = User(name: "Tom")

// get/set,willSet/didSet
/*
クラス
*/
//class User {
//    var name: String
//    var score: Int = 0 {
//        willSet {
//            print("\(score) -> \(newValue)")
//        }
//        didSet {
//            print("\(oldValue) -> \(score)")
//        }
//    }
//    var level: Int {
//        return Int(score / 10)
////        get {
////            return Int(score / 10)
////        }
////        set {
////            score = Int(newValue * 10)
////        }
//    }
//    init(name: String) {
//        self.name = name
//    }
//    func upgrade() {
//        score++
//    }
//}
//var tom = User(name: "Tom")
////tom.level
////tom.score = 52
////tom.level
////tom.level = 8
////tom.score
//tom.score = 32

// optional chaining
//class User {
//    var blog: Blog?
//}
//
//class Blog {
//    var title = "My Blog"
//}
//
//var tom = User()
//tom.blog = Blog()
////tom.blog?.title
//
//if let t = tom.blog?.title {
//    print(t)
//}

// type casting
//class User {
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//class AdminUser: User {}
//class SomeUser {}
//
//let tom = User(name: "Tom")
//let bob = AdminUser(name: "Bob")
//let steve = SomeUser()
//let users: [AnyObject] = [tom, bob, steve]
//
//for user in users {
////    if user is AdminUser {
////        let u = user as! AdminUser
////        print(u.name)
////    }
//    if let u = user as? AdminUser {
//        print(u.name)
//    }
//}

// 構造体
//struct UserStruct {
//    var name: String
//    var score: Int  = 0
//    init(name: String) {
//        self.name = name
//    }
//    mutating func upgrade() {
//        score++
//    }
//}
//class User {
//    var name: String
//    var score: Int  = 0
//    init(name: String) {
//        self.name = name
//    }
//    func upgrade() {
//        score++
//    }
//}
//
//// クラスは参照先をコピー
//var tom = User(name: "Tom")
//var tom2 = tom
//tom2.name = "tom2"
//tom.name
//
//// 構造体は実体をコピー
//var bob = UserStruct(name: "Bob")
//var bob2 = bob
//bob2.name = "bob2"
//bob.name

// 拡張
//extension String {
//    var size: Int {
//        return self.characters.count
//    }
//    func dummy() -> String {
//        return "dummy"
//    }
//}
//
//var s: String = "hoge"
//s.size
//s.dummy()

// ジェネリクス

//func getIntArray(item: Int, count: Int) -> [Int] {
//    var result = [Int]()
//    for _ in 0..<count {
//        result.append(item)
//    }
//    return result
//}

func getArray<T>(item: T, count: Int) -> [T] {
    var result = [T]()
    for _ in 0..<count {
        result.append(item)
    }
    return result
}
getArray(8, count: 3)
getArray("hello", count: 3)
getArray(2.3, count: 3)


print("Hello World!")



var myVariable: Int = 42
myVariable = 50
let myConstant: Int = 42
let myDouble: Double = 70.0
let myString: String = "Hello"
let myString02: String  = """
    Hello
    World
    \(myVariable)
    """

print("myVariable: \(myVariable)")
print("myConstant: \(myConstant)")
print("myDouble: \(myDouble)")
print("myString: \(myString)")
print("myVariable: " + String(myVariable))
print("myDouble \(myDouble)")
print("myString02: \(myString02)")


var fruits:[String] = ["apple", "banana", "orange"]
fruits.append("grape")
fruits[0] = "pear"
print("fruits: \(fruits)")

var occupations:[String:String]  = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"
print("occupations: \(occupations)")

let emptyArray:[String] = [String]()
let emptyDictionary:[String:Float] = [String: Float]()

print("empty array: \(emptyArray)")
print("empty dictionary: \(emptyDictionary)")

// Control Flow 

let individualScores:[Int] = [75, 43, 103, 87, 12]
var teamScore:Int = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print("teamScore: \(teamScore)")

// optional string

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

print("greeting: \(greeting)")

let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"

if let nickName = nickname {
    print("Hi \(nickName)")
} else {
    print("Hi \(fullName)")
}

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log")
case "cucumber", "watercress":
    print("That would make a good tea sandwich")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everithyng tastees goog in soup.")
}


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

// 
var n = 2
while n < 100 {
    n *= 2
}
print(n)
// Prints "128"

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)


var total = 0
for i in 0..<4 {
    total += i
}
print(total)
// Prints "6”

// Functions and Closures

func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet(person: "Marco", day: "Saturday"))


func greet2(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet2("John", on: "Wednesday"))

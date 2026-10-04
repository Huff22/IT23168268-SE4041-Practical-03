//structures - groups related values together into a new type
struct Student {
    var name: String
    var mark: Int
    var registered: Bool = true
}

let student = Student(
    name: "Amal",
    mark: 75
)

print(student.name)
print(student.mark)
print(student.registered)

//computed properties
struct Rectangle {
    var width: Double
    var height: Double
    
    var area: Double {
        return width * height
    }
}

let rectangle = Rectangle(width: 4, height: 3)
print(rectangle.area)

//add a computed grade
enum Grade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

struct StudentDetails {
    
    var name: String
    var mark: Int
    
    var grade: Grade {
        
        switch mark {
            
        case 75...100:
            return .a
            
        case 65..<75:
            return .b
            
        case 50..<65:
            return .c
            
        default:
            return .f
        }
    }
}

let studentDetails = StudentDetails(name: "Amal", mark: 72)
print(student.name)
print(studentDetails.grade.rawValue)

//methods - functions defined inside a class or a struct
struct StudentDetails2 {
    
    var name: String
    var mark: Int
    func displayDetails() {
        print("\(name) received \(mark)")
    }
}

let studentDetails2 = StudentDetails2(name: "Hafsa", mark: 92)
studentDetails2.displayDetails()

//mutating methods - if a struct method changes one of structs properties
struct Counter {
    var count = 0
    mutating func increment()
    {
        count += 1
    }
}

var counter = Counter()
counter.increment()
counter.increment()

print(counter.count)

//classes
class Lecturer {
    var name: String
    var module: String
    
    init(name: String, module: String) {
        self.name = name
        self.module = module
    }
    
    func introduce() {
        print("Hello, my name is \(name) and I teach \(module)")
    }
}

let lecturer = Lecturer(name: "Nushkan", module: "SE4041")

lecturer.introduce()

//struct vs class
//struct is a value type, class is a reference type

//struct example
struct Point {
    var x = 0
}

var firstPoint = Point()
var secondPoint = firstPoint
secondPoint.x = 99

print(firstPoint.x)
print(secondPoint.x)

//class example
class CounterClass {
    var count = 0
}

let firatCounter = CounterClass()
let secondCounter = firatCounter
secondCounter.count = 99

print(firatCounter.count)
print(secondCounter.count)

//knowledge check
//1. to oraganize and reuse code
//2. value that a function receives as an output
//3. function returns a string value
//4. passing an argument to a fucntion
//5. value used when the caller doesmt provide an argument
//6. to handle invalid or missing data early
//7. it groups multiples values together even which has different types
//8. filter creates a new collection contatinhg elements that satisfy a condition
//9. map transforms every element in a collection into a new value
//10. reduce combines all elements into one final value
//11. itr lets u define a type with a fixed set of related choices
//12. a predefined value associated with an enum case
//13. a custom data type that can contain properties and methods
//14. stores an actual value inside a struct or class
//15. it calculates its value instead of storing it
//16. when a method inside a struct need to change one of the stored properties
//17. a reference type that can contain properties, methods.
//18. structs are value types, classes are reference types


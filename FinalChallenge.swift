//student management system
//part A
enum Grade: String {
    case a = "A"
    case aMinus = "A-"
    case bPlus = "B+"
    case b = "B"
    case bMinus = "B-"
    case cPlus = "C+"
    case c = "C"
    case cMinus = "C-"
    case f = "F"
}

//part B
struct Student {
    let studentID: String
    let studentName: String
    var mark: Double
    
    //part C
    var grade: Grade
    {
        switch mark {
        case 80...100:
            return .a
        case 75..<80:
            return .aMinus
        case 70..<75:
            return .bPlus
        case 65..<70:
            return .b
        case 60..<65:
            return .bMinus
        case 55..<60:
            return .cPlus
        case 50..<55:
            return .c
        case 45..<50:
            return .cMinus
        default:
            return .f
        }
    }
    
    //part D
    func displayDetails()
    {
        print("Student ID: \(studentID)")
        print("Student Name: \(studentName)")
        print("Student Mark: \(mark)")
        print("Student Grade: \(grade.rawValue)")
    }
}

//part E
let students = [
    Student(studentID: "IT001", studentName: "Amal", mark: 72),
    Student(studentID: "IT002", studentName: "Nimali", mark: 45),
    Student(studentID: "IT003", studentName: "Ruwan", mark: 68),
    Student(studentID: "IT004", studentName: "Sanduni", mark: 90),
    Student(studentID: "IT005", studentName: "Kasun", mark: 38)
]

//part F - display students
print("\nStudent Details\n")
for student in students {
    student.displayDetails()
    print("\n")
}

//part G - use filter
let passedStudents = students.filter { $0.mark >= 50}

print("\nPassed Students\n")
for student in passedStudents {
    student.displayDetails()
    print("\n")
}

//part H - use map
let studentNames = students.map(\.studentName)
print("Student Names: \(studentNames)")

//part I - use reduce
let totalMarks = students.reduce(0) { $0 + $1.mark }
print("Total Marks: \(totalMarks)")
let average = totalMarks / Double(students.count)
print("Average: \(average)")


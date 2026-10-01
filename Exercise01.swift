func greet() {
    print("Welcome to SE4041")
}

greet()

func greetstudent(name: String) {
    print("Welcome, \(name)!")
}

greetstudent(name: "hafsa")
greetstudent(name: "risini")

func grade(for mark: Int) -> String {
    if mark >= 50 {
        return "Pass"
    }
    
    return "Fail"
}

let result = grade(for: 40)
print(result)

//activity 1

func calculateAverage(for mark1: Double, mark2: Double, mark3: Double) -> Double {
    return (mark1 + mark2 + mark3) / 3
}

let avg = calculateAverage(for: 75, mark2: 82, mark3: 68)
print(avg)


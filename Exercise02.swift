func travel(from town: String, to city: String) {
    print("Travelling from \(town) to \(city)")
}
//from, to argument labels
//town, city names used inside the functions

travel(from: "Malabe", to: "Kandy")

//removing an argument label
func double(_ number: Int) -> Int {
    return number * 2
}

print(double(10)) //this way u dont gotta put the argument label like number: 10

//default parameter values
func result(_ mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    } else {
        return "Fail"
    }
}

print(result(68))
print(result(68, passMark: 75)) //can override the default value like this

print("\nActivity 02")

//activity 2
func finalResult(mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    } else {
        return "Fail"
    }
}

print(finalResult(mark: 45))
print(finalResult(mark: 75))
print(finalResult(mark: 75, passMark: 80))


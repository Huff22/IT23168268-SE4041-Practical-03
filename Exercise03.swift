//tuples - for functions that return more than one value
func summary(of marks: [Int]) -> (minimum: Int, maximum: Int, average: Double) {
    
    let total = marks.reduce(0, +)
    
    return (
        marks.min()!,
        marks.max()!,
        Double(total) / Double(marks.count)
    )
}

let result = summary(of: [72, 65, 48, 90])

print(result.minimum)
print(result.maximum)
print(result.average)

//tuple unpacking
let (low, high, average) = summary(of: [72, 65, 48, 90])

print(low)
print(high)
print(average)

//activity 04
print("\nActivity 04\n")

func analyzeMarks(_ marks: [Int]) -> (total:Int, average:Double) {
    
    let total = marks.reduce(0, +)
    return (
        total,
        Double(total) / Double(marks.count)
    )
}

let result2 = analyzeMarks([60, 70, 80, 90])

print("Total: \(result2.total)")
print("Average: \(result2.average)")



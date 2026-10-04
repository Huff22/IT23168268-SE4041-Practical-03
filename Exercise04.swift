//closures - a block of code that can be passed around like a value

let marks = [72, 45, 65, 48, 90]

//filter - selects the value that satisfies a condition
let passed = marks.filter { $0 >= 50 } //$0 the current element
print (passed)

//map - transforms every value
let increasedMarks = marks.map { $0 + 5 }
print (increasedMarks)

//reduce - combines all values into one value
let total = marks.reduce(0) { $0 + $1 } //here $0 is the accumulated result, $1 represents the current element
print (total)

//activity 05
print("\nActivity 05\n")

let prices = [120.0, 250.0, 80.0, 500.0, 150.0]
print("The Actual Prices: \(prices)")

let expensivePrices = prices.filter { $0 > 100 }
print("The proces greater than 100: \(expensivePrices)")

let increasedPrice = prices.map { $0 + 10 }
print("The Increased Prices:  \(increasedPrice)")

let totalPrice = prices.reduce(0) { $0 + $1 }
print("The Total Price: \(totalPrice)")


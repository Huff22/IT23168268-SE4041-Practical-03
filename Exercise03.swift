//guard used when a function should immediately if a required function is not satisfied
func register(_ name: String?) {
    guard let name = name else {
        print("No name given")
        return
    }
    print("Registered: \(name)")
}

register("Kamal")
register(nil)

func registerName(_ name: String?) {
    guard let name = name else {
        print("No name given")
        return
    }
    
    guard !name.isEmpty else {
        print("Name cannot be empty")
        return
    }
    
    print("Registered: \(name)")
}

registerName(nil)
registerName("")
registerName("Kamal")

//activity 3
func checkStudent(name: String?, mark: Int?) {
    guard let name = name else {
        print("Student name unavailable")
        return
    }
    
    guard let mark = mark else {
        print("Student mark unavailable")
        return
    }
    
    print("\(name) received \(mark) marks")
}

print("\nActivity 03\n")
checkStudent(name: "Kamal", mark: 75)


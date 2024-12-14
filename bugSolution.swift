let array = [1, 2, 3]
let index = 4

if index >= 0 && index < array.count {
    print(array[index])
} else {
    print("Index out of bounds")
}

//or use optional binding

if let element = array[safe: index] {
    print(element)
} else {
    print("Index out of bounds")
}

//Safe subscript extension 
 extension Array {
    subscript (safe index: Int) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
} 
import UIKit


class Calculator {
    func addResult(_ x: Double, _ y: Double) -> Double {
        return x + y
    }
    
    func subtractResult(_ x: Double, _ y: Double) -> Double {
        return x - y
    }
    
    func multiplyResult(_ x: Double, _ y: Double) -> Double {
        return x * y
    }
    
    func divideResult(_ x: Double, _ y: Double) -> String {
        if y != 0 {
            return "\(x / y)"
        } else {
            return "None"
        }
    }
}
    
    let result = Calculator()
    


class AddOperation: Operation {
    func operate(_ x: Double, _ y: Double) -> Double {
        return x + y
    }
}

class SubtractOperation: Operation {
    func operate(_ x: Double, _ y: Double) -> Double {
        return x - y
    }
}

class MultiplyOperation: Operation {
    func operate(_ x: Double, _ y: Double) -> Double {
        return x * y
    }
}

class DivideOperation: Operation {
    func operate(_ x: Double, _ y: Double) -> Double {
        if y != 0 {
            return x / y
        } else {
            fatalError("None")
        }
    }
}


print("addResult", result.addResult(1, 2))
print("subtractResult", result.subtractResult(1, 2))
print("multiplyResult", result.multiplyResult(2, 4))
print("divideResult", result.divideResult(10, 0))

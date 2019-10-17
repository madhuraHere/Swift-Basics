import Foundation
enum Errorss : Error{
    case divisionByZero
    case negativeNumberEntered
}
class sample {
    var n1 = 40
    var n2 = -10
    func test()throws {
        if n2 == 0{
            throw Errorss.divisionByZero
        }
        else if n1 < 0 || n2 < 0 {
            throw Errorss.negativeNumberEntered
        }
        else {
            print("Numbers are positive")
            print("Division is \(n1/n2)")
        }
    }
}
var s1 = sample()

/*do {

    try s1.test()
    
}
catch let a{
    print(a)
} */

do {
    try s1.test()
}
catch let b {
    print(b)
}





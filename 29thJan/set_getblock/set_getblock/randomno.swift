
import Foundation
//random number
func Number()->Int{
    return Int(arc4random())
}
class randomno{
    lazy var random_number : Int = Number()
}
//even odd


class evenodd {
    lazy var number : Int = Number()
    var n1 : String {
        if number%2==0 {
            return "Even"
        }
        else {
            return "Odd"
        }
    }
}

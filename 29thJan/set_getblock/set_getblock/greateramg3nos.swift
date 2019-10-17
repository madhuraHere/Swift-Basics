

import Foundation
class GreaterNum {
var num1 : Int = 0
var num2 : Int = 0
var num3 : Int = 0
var greater : Int{
    if num1>num2 && num1>num3 {
        return num1
    }
    else if num2>num1 && num2>num3{
        return num2
    }
    else {
        return num3
    }
}
}

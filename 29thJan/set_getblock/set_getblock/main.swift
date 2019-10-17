import Foundation
//Computed Property
class Arithmetic_op {
    var n1 : Int = 0
    var n2 : Int = 0
    var add : Int {      //call on runtime
        get { //by default get_block
        return n1+n2
    }
        set {
            n1 = newValue + n2
        }
    }
    func display() {
    print("Addition is \(add)")
    }
}
var obj = Arithmetic_op()
obj.n1 = 20
obj.n2 = 50
print(obj.add)

obj.add = 100
print(obj.add)

obj.display()

print("--------------------")

//Lazy Property
func getage()->Int{
    return 25
}
class Surname {
    var FN : String = "ABC"
    var LN : String = "XYZ"
    lazy var age : Int = getage()
    var Full_name :String {
        return FN+LN
    }
    
}
var s1 = Surname()
print(s1.Full_name)
print(s1.age)








//Greater No.amoung 3 using computed properties
var test = GreaterNum()
test.num1 = 10
test.num2 = 20
test.num3 = 30
print(test.greater)
print("----------------------------")

var test2 = randomno()
print(test2.random_number)
test2.random_number += 2
print(test2.random_number)

print("--------------------")
var test3 = evenodd()
print(test3.number)
print(test3.n1)



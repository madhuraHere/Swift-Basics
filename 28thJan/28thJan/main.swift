//Structure as Value type
import Foundation

struct Employee {
    var id : Int = 0
    var sal : Int = 0
    func display () {
        print("Emp Id : \(id) and Emp Salary : \(sal)")
    }
}
func calculateSal (emp1 : Employee){
    var temp1 = emp1
    temp1.sal += 5000
    print("Changed Salary is \(temp1.sal)")
}
var e1 = Employee()
e1.display()
calculateSal(emp1: e1)
e1.display()
//Class as Reference Type
class Emp {
    var id : Int = 0
    var Sal : Int = 0
    func Display (){
        print("Employee ID \(id) Salary \(Sal)")
    }
}
func calculate(emp : Emp) {
   emp.Sal += 5000
}
var e2 = Emp()
e2.Sal = 10000
e2.Display()
calculate(emp: e2)
e2.Display()
print("---------------------------------------------------")

var c = Circle(radius: 12, cX: 1, cY: 2)
c.displayCircle()
c.draw() //Object Specific draw is called



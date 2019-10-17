import Foundation
//Mix
class Emp {
    var id  : Int
    var salary : Float
    class var cmpName : String{
        return "Bitcode"
    }
    static var n : Int!
    init(id : Int,salary:Float){
        self.id = id
        self.salary = salary
    }
    static func setCompany (cmp:String){
        print(cmpName)
        print(n)
    }
    func display (){
        print("ID:\(id),")
        
    }
}
//Static
class Employee {
    var Id : Int
    var Salary : Int
    static var CompanyName : String = "Bitcode"
    init (Id : Int,Salary: Int){
        self.Id = Id
        self.Salary = Salary
    }
    static func setcompanyName (cmp: String){
        CompanyName = cmp
    }
    /*func setcomp (cmp:String){
     Employee.CompanyName = cmp
 
 */
    func display(){
        print("Id:\(Id),Salary:\(Salary),Comapny Nam:\(Employee.CompanyName)")
    }
}

var e1 = Employee(Id: 1, Salary: 50000)
var e2 = Employee(Id: 2, Salary: 3000)
var e3 = Employee(Id: 3, Salary: 40000)
e1.display()
e2.display()
e3.display()

Employee.CompanyName = "ABC"
e1.display()
e2.display()
e3.display()
Employee.setcompanyName(cmp: "XYZ")
e1.display()
e2.display()
e3.display()

//class








/*
var s1 = Student(Sname: "Teju", m1: 60, m2: 70, m3: 50, m4: 55, m5: 60)

s1.displayRecord()

var s2 = Student(Sname: "Ash", m1: 50, m2: 40, m3: 50, m4: 60, m5: 30)
s2.displayRecord()
var s3 = Student(Sname: "Rupali", m1: 80, m2: 50, m3: 55, m4: 49, m5: 70)
s3.displayRecord()

Student.BID(tempID: "M20")
Student.SetCollegeName(clg: "SPCollege")
s1.displayRecord()
s2.displayRecord()
s3.displayRecord()
 */
print("------------------------------------")

//Generics
display(Arr: intArray)
display(Arr: strArray)
display(Arr: fArray)
print("--------------------------------")
var a = 20
var b = 300
print("Before Swapping:a=\(a),b=\(b)")
swap_parameters(a : &a, b : &b)
print("After swapping :n1:\(a) and n2:\(b)")

print("---------------------------------")

var a1 = "ABC"
var b1 = "XYZ"
print("Before swapping:n1=\(a1) and n2=\(b1)")
 swap_parameters(a: &a1, b: &b1)
print("After swapping :n1:\(a1) and n2:\(b1)")

print("-------------------------------------")

var a2 = 6.123
var b2 = 3.14
print("Before swapping:n1=\(a2) and n2=\(b2)")
//var res3 = swap_parameters(a: a2, b: b2)
//print("After swapping:n1=\(res3.0) and n2=\(res3.1)")








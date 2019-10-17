import Foundation
class Person {
    var name : String = "NA"
    var gender : String = "NA"
    var age : Int = 0
    
    init(name:String,gender : String,age:Int) {
      self.name = name
      self.gender = gender
        self.age = age
    }
    func display (){
        print("Name is \(name)\nGender:\(gender)\nAge:\(age)")
    }
}
class Employee : Person {
    var CName : String = "NA"
    var Sal : Int = 0
    
    init(CName:String,Sal : Int,name:String,gender:String,age: Int){
        super.init(name: name, gender: gender, age: age)
        self.CName = CName
        self.Sal = Sal
    }
    func displayEmployeeData() {
        super.display()
        print("Company name:\(CName)\nSalary:\(Sal)")
    
    
    }
 }
class Programmer:Employee {
    var nolang : Int = 0
    
    init(nolang:Int,CName:String,Sal:Int,name:String,gender:String,age:Int){
        super.init(CName: CName, Sal: Sal, name: name, gender: gender, age: age)
        self.nolang = nolang
    }
    func displayPDATA() {
    super.displayEmployeeData()
        print("Number of Programming languages Known:\(nolang)")
    }
    
}






import Foundation
class Student : Person {
    var roll_no : Int = 0
    var college_name : String = "NA"
    var per : Double = 0.0
 
    init (roll_no :Int,college_name : String,per : Double,name : String,gender: String,age : Int) {
        super.init(name: name, gender: gender, age: age)
        self.roll_no = roll_no
        self.college_name = college_name
        self.per = per
    }
    func displayStudentRecord (){
        super.display()
        print("Roll no.is \(roll_no)\nCollege name \(college_name)\nPercentage:\(per)")
    }
}


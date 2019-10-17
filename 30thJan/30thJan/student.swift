import Foundation
class Student {
    var Sname : String = ""
    static var BatchID : String = "ID10"
    var m1 : Int = 0
    var m2 : Int = 0
    var m3 : Int = 0
    var m4 : Int = 0
    var m5 : Int = 0
    var per : Int = 0
    class var CollegeName : String{
        get{
            return "MCOE"
    }
        set{
            CollegeName = newValue
        }
    }
    init(Sname: String,m1:Int,m2:Int,m3:Int,m4:Int,m5:Int){
        self.Sname = Sname
        self.m1 = m1
        self.m2 = m2
        self.m3 = m3
        self.m4 = m4
        self.m5 = m5
    }
    static func BID(tempID : String){
        BatchID = tempID
    }
    class func SetCollegeName(clg: String){
        CollegeName = clg
    }
    func cal_per()->Int{
    per = (m1 + m2 + m3 + m4 + m5)/5
        return per
    }
    
    func displayRecord (){
        print("Student Name:\(Sname) Batch ID:\(Student.BatchID) Percentage:\(cal_per()) College name:\(Student.CollegeName)")
    }
}





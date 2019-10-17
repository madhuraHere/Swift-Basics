import Foundation

//Class
class student {
    var roll_no : Int = 0
    var name : String = ""
    func setdata (r: Int,n: String) {
        roll_no = r
        name = n
    }
    func getroll()->Int{
        return roll_no
    }
    func getName()->String{
        return name
    }
}
var s1 = student()
s1.setdata(r: 1, n: "Divya")
var n1 = s1.getName()
var r1 = s1.getroll()
print("The name of student is \(n1) and roll no is \(r1)")

var s2 = student()
s2.setdata(r: 2, n: "Neha")
var n2 = s2.getName()
var r2 = s2.getroll()
print("Name is \(n2) and roll no is \(r2)")

//Triangle
class triangle {
    var base : Double = 0
    var height : Double = 0
    var area : Double = 0
    
    func setTriangle (b : Double,h :Double ) {
        base = b
        height = h
    }
    func calArea (){
         area = 0.5 * base * height
    }
    func displayTriangle(){
        print("Displaying Triangle Parameters:\n base=\(base) and height=\(height)")
        print("Area of Triangle \(area)")
    }
}
var t1 = triangle()
t1.setTriangle(b : 0.5,h : 5)
t1.calArea()
t1.displayTriangle()
//Employee
class employee {
    var name : String = ""
    var sal : Int = 0
    var Dept : String = ""
    var EID : String = ""
    var des : String = ""
    
    func setEmployeeData (_ n : String,_ s: Int,_ d : String,_ id : String,_ de : String) {
        name = n
        sal = s
        Dept = d
        EID = id
        des = de
        
    }
    func GetEmployeedata () {
        print("Name :\(name)\n Salary:\(sal)\n Department:\(Dept)\n Employee ID:\(EID)\n Post:\(des)")
    }

 }
var e1 = employee()
e1.setEmployeeData("Neha", 20000, "HR DEPT", "HR10", "HR Manager")
var e2 = employee()
e2.setEmployeeData("Gauri", 3000, "IT DEPT", "IT20", "Project Manager")
var e3 = employee()
e3.setEmployeeData("Divya", 40000, "Account DEPT", "AC1", "Account Manager ")

if e1.sal > e2.sal && e1.sal > e3.sal {
    e1.GetEmployeedata()
}
else if e2.sal > e1.sal && e2.sal > e3.sal {
    e2.GetEmployeedata()
}
else {
    e3.GetEmployeedata()
}
print("-----------------")
//Bank
class Bank {
    var Aname : String = ""
    var Account_No : Int = 0
    var bal : Int = 0
    var initial : Int = 500
    init() {
        Aname = "NA"
        Account_No = 0
        bal = 0
    }
    init (Aname : String, Account_No : Int,bal : Int) {
        
        self.Aname = Aname
        self.Account_No = Account_No
        self.bal = bal
    }
    /*func setBankEmData (name : String,No : Int, balance : Int){
        Aname = name
        Account_No = No
        bal = balance
    } */
    func getdata (){
       print("Name of Account Holder is \(Aname) \n Account No is \(Account_No)\n Balance \(bal)")
    }
    func depositemoney (num : Int) {
        bal += num
        print("After Deposite balance is \(bal)")
    }
    func withdrawmoney (n1 : Int) {
        if bal >= initial && n1 <= bal {
            bal -= n1
            
        }
        else {
            print("Error")
        }
        print("After withdraw balance is : \(bal)")
    }
    
}
var bank1 = Bank(Aname: "XYZ", Account_No: 1234, bal: 2000)
// bank1.setBankEmData(name: "Divya", No: 123456, balance: 1500)
bank1.depositemoney(num: 500)
bank1.withdrawmoney(n1: 1000)
bank1.getdata()

var bank2 = Bank()
bank2.getdata()
print("---------")
//Class Person
class Person {
   var name : String
    var age : Int
    var mID : String
    
    init() {
        name = "NA"
        age = 0
        mID = "NA"
        
    }
    init(name : String,age : Int,mID : String) {
        self.name = name
        self.age = age
        self.mID = mID
    }
    func display (){
        print("Name is \(name)\nAge is \(age)\nEmail-ID is \(mID)")
    }
}

var p1 = Person()
p1.display()
var p2 = Person(name:"ABC",age:20,mID:"abc@gmail.com")
p2.display()

//Arithmetic Operations
class Operation_method {
    var num1 : Double
    var num2 : Double
    var res1,res2,res3,res4 : Double
    init(n1:Double,n2: Double) {
        num1 = n1
        num2 = n2
        res1 = 0
        res2 = 0
        res3 = 0
        res4 = 0
        
    }
    func displaynums() {
        print("Numbers are\(num1) and \(num2)")
        print("Addition is\(res1)\nSubtraction is \(res2)\nDivision is \(res4)\nMultiplication is \(res3)\n")
    }
    func addSub (){
        res1 = num1+num2
        res2 = num1 - num2
    }
    func divMulMod () {
        res3 = num1*num2
        res4 = num1/num2

    }
}


var op1 = Operation_method(n1:20.0,n2:2.0)
op1.addSub()
op1.divMulMod()
op1.displaynums()
print("----------------------")
//Student
class student_new {
    var name : String
    var roll_no : Int
    var batch_ID : Int
    
    init(name : String,roll_no:Int){
      self.name = name
        self.roll_no = roll_no
        batch_ID = 100
    }
    func display(){
        print("Name is \(name) Roll no is \(roll_no) Batch ID is \(batch_ID)")
    }
}

var new1 = student_new(name : "Divya",roll_no : 1)
var new2 = student_new(name:"Neha",roll_no: 2)
var new3 = student_new(name:"Priya",roll_no:3)
var new4 = student_new(name:"Radhika",roll_no:4)
new1.display()
new2.display()
new3.display()
new4.display()

//Book
class Book {
    var Bname : String
    var Bprice : Int
    var Aname : String
    var YOP : Int
    
    init(){
        Bname = "NA"
        Bprice = 0
       Aname = "NA"
        YOP = 0
    }
    init(Bname:String,Bprice:Int,Aname:String,YOP:Int) {
        self.Bname = Bname
        self.Bprice = Bprice
        self.Aname = Aname
        self.YOP = YOP
    }
    func calprice(){
        if Bprice > 500 {
            var a1 = Bprice
            var totalp = (Bprice*5)/100
            totalp = a1 - totalp
            print("Final price is \(totalp)")
        }
        else if Bprice > 1000 {
            var a2 =  Bprice
            var t = (Bprice*10)/100
            t = a2 - t
            print("Final Price is \(t)")
        }
        else {
            print("Price \(Bprice)")
        }
    }
    func display() {
        print("Name of Book \(Bname) Author name \(Aname) Year of Publication is \(Bprice)")
    }
    
}

var b1 = Book()
var b2 = Book(Bname : "ABC",Bprice : 600,Aname:"XYZ",YOP: 2019)
b2.display()
b2.calprice()











































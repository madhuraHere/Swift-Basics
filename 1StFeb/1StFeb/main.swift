import Foundation
//
var sum = 0
for i in 1...100{
    if i%2 == 0{
    sum += i
    }
}
print("Sum of even numbers from 1 to 100 is \(sum) ")
print("-----------------------------------------")
//Armstrong
var rem1 = 0
var rem2 = 0
var res :Int = 0
var arr : Array<Int> = [ ]
for i in 1...50 {
    var temp = i
    if i != 0 {
     rem2 = i%10
    res += (rem2 * rem2 * rem2)

    }
    if temp == res {
        arr.append(res)
    }
    res = 0
    temp /= 10
    
}
print(arr)
print("-----------------------------------------")
//Descending
var arrInt = [1,23,66,22,10,30,12,100,8,9]
for i in arrInt.indices{
    for j in arrInt.indices{
        if arrInt[i] > arrInt[j]{
            var temp = arrInt[i]
            arrInt[i] = arrInt[j]
            arrInt[j] = temp
        }
    }
}
print("Ordered Array is : \(arrInt)")
print("-----------------------------------")
//
func removnums (str1 : String) -> String {
    let arr1 = ["1","2","3","4","5","6","7","8","9","0"]
    var s1 = " "

    for i in arr1 {
        s1 = str1.replacingOccurrences(of: i, with: "")
    
    }
    return s1
}
var str = "M234C98O6E11"
var resS = removnums(str1: str)
print("Resultant String is \(resS)")
print("--------------------------------")
//

func findmax (n1 : Int,n2: Int)->(Int) {
    if n1 > n2{
        return n1
    }
    else {
        return n2
    }
}

func findmin(n1: Int,n2:Int)->Int{
    if n1 > n2{
        return n2
    }
    else {
        return n1
    }
}
func add (Min:Int,Max:Int)->Int{
    return Min+Max
}
var result1 = findmax(n1: 40, n2: 20)
var result2 = findmin(n1: 40, n2: 20)
print("Max value is \(result1) and Minimum number is \(result2) ")
var sum1 = add(Min: result2, Max: result1)
print("Addition of \(result1) and \(result2) is \(sum1)")
print("--------------------------")
//
func Country(name : String)->String {
    switch name {
    case "India" : return "INR"
    case "Japan" : return "YEN"
    case "USA" : return "ASD"
    case "Austrelia": return "USD"
    default : return "Invalid Country Name"
    }
}
var checkCountry = "Canada"
var resC = Country(name: checkCountry)
print("Currency of Country \(checkCountry) is \(resC)")
//
var closureStrigs = {
    (string1 : String,string2 : String)->String in
    return string1+string2
}
var resMerge = closureStrigs("ABC", "DEF")
print("Merged string is \(resMerge)")
print("-----------------------------------")
//Inheritance
class Shape {
    var Cx = 0
    var Cy = 0
    init(Cx: Int,Cy:Int){
        self.Cx = Cx
        self.Cy = Cy
        }
    func display(){
    print("Center values of x and y are : x =\(Cx) and y =\(Cy)")
    }
}
class Rectangle : Shape {
    var L = 0
    var B = 0
    var area = 0
    init(Cx:Int,Cy:Int,L:Int,B:Int){
        self.L = L
        self.B = B
        super.init(Cx: Cx, Cy: Cy)
    }
    func display_Rect() {
        super.display()
        area = B*L
        print("Length:\(L),Breadth:\(B)and area of Rectangle is \(area) ")
    }
}

class Paintcost : Rectangle {
    var cost :Int = 1200
    var Tcost : Int = 0
    override init (Cx:Int,Cy:Int,L:Int,B:Int){
        super.init(Cx: Cx, Cy: Cy, L: L, B: B)
    }
    
    
    func calcost (){
        super.display_Rect()
        var Tarea = super.area
        Tcost = Tarea * cost
        print("Total cost is \(Tcost)")
        
    }
}
var Rect = Paintcost(Cx: 1, Cy: 2, L: 3, B: 4)
Rect.calcost()

print("---------------------------------------")
//Student class

class Student {
    var name : String
    var roll_no : Int
     var Batch_ID : Int
    var Email : String = "NA"
    init(){
        name = "NA"
        roll_no = 0
        Batch_ID = 123
        Email = "NA"
        
    }
    init (name:String,roll_no:Int,Btach_ID:Int,Email:String){
        self.name = name
        self.roll_no = roll_no
        self.Batch_ID = Btach_ID
        self.Email = Email
    }
    func display_Student (){
        print("name:\(name) Roll No.:\(roll_no) Batch ID:\(Batch_ID) and Email ID:\(Email)")
    }
}
var student1 = Student(name: "Teju", roll_no: 1, Btach_ID: 33, Email: "teju@gmail.com")
var student2 = Student()
student1.display_Student()
student2.display_Student()

print("-----------------------------------")
//

extension String {
     mutating func removeNumbers (){
        var arrnumbers = ["1","2","3","4","5","6","7","8","9","0"]
        var Resultant_str : String = ""
        for i in arrnumbers {
            self = self.replacingOccurrences(of: i, with: "")
        }
    
    }
}
var alpha = "M88C75O34E22"
alpha.removeNumbers()
print("Resultant string is \(alpha)")























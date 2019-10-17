import Foundation
//Closure
func display () {
    print("Display Function")
}
display()

var c1 = {
    print("Simple Closure")
}
c1()

func addition (n1: Int,n2:Int) ->Void {
    print("Addition is \(n1 + n2)")
}
addition(n1: 10, n2: 20)

var closureWithparameter = {
    (num1 : Int ,num2 : Int ) -> Void in
    print("Closure Addition is \(num1 + num2)")
}
closureWithparameter(30,20)


var closurewithReturnVal = {
    (a1 : Int,a2 :Int) -> Int in
    return(a1 + a2)
}
var a3 = closurewithReturnVal(50,40)
print("Sum is \(a3)")

//Even or odd
var checkno = {
    (a4 : Int) -> Void in
    if a4 % 2 == 0 {
        print("\(a4) is Even")
    }
    else {
        print("\(a4) is Odd")
    }
}
checkno(3)

//int and square
var number = {
    (m : Int) -> (Int,Int) in
    let temp1 = m * m
    return( m , temp1)
}
var temp2 = number(2)
print("Square of \(temp2.0) is \(temp2.1)")

//Merge string

var str = {
    (s1 : String , s2 : String) -> String in
    return(s1 + s2)
}
var mergedstr = str("Hello","World")
print("Merged string is \(mergedstr)")

//print nos
var numm = {
    (nk : Int) -> Void in
    print("Displaying even nos from 1 to \(nk)")
    for i in 1...nk {
        if i%2 == 0 {
        print(i)
        }
    }
}
numm(10)

//Max no from Array
var array = {
    (temp : Array <Int>) -> Int in
    var max = temp[0]
    for i in temp{
        if i > max{
            max = i
        }
    }
   return(max)
}

var res = array([100,30,1,5,70453,66,2])
print("Maximum Number is \(res)")
var temp = res
var s10 = 0
while res != 0 {
    var rem = res%10
    s10 = s10 + rem
    res = res/10
}
print("Sum of digit of \(temp) number is \(s10)")

//pass closure as parameter to function

var closure = {
    print("Bitcode")
}
func perform (c: ()->Void, n5 : Int) {
    for _ in 1...5 {
        c()
    }
    print("Value is \(n5)")
}
perform(c: closure, n5: 44)
//
var CMerge = {
    (str11 : String,str12 : String)->Void in
    print("Merged String is \(str11 + str12)")
}
func merge (cM: (_ :String,_ :String)->Void) {
    let s11 = "Hello"
    let s12 = "World"
    cM(s11,s12)

}
merge(cM: CMerge)


//
var m1 = {
    (str6 : String,str7: String)-> String in
    return str6 + str7
}
func merge1(k1 : (_ : String,_ : String )->String,h1: Int)->Int {
    let s10 = "Radhika"
    let s11 = "Vise"
    var xT = k1(s10,s11)
    print("Resultant string is \(xT)")
    let sq = h1 * h1
    return sq
}
 var square = merge1(k1: m1, h1: 5)
print(square)






















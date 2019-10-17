
import Foundation


//Function Generic
func display <T> (Arr :[T]){
    for i in Arr{
        print(i)
    }
}
var intArray = [1,3,4,5,6]
var strArray = ["C","CPP","C#"]
var fArray = [3.14,6.2]

//swap parameters

func swap_parameters <T> (a :  inout T , b : inout T){
    var temp : T
    temp = a
    a = b
    b = temp
}


